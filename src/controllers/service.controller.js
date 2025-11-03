const pool = require("../../db");
const xlsx = require("xlsx");
const fs = require("fs");
const path = require('path');

// Function to obtain a database connection
const getConnection = async () => {
  try {
    const connection = await pool.getConnection();
    return connection;
  } catch (error) {
    throw new Error("Failed to obtain database connection: " + error.message);
  }
};
//error handle 422...
error422 = (message, res) => {
  return res.status(422).json({
    status: 422,
    message: message,
  });
};
//error handle 500...
error500 = (error, res) => {
  return res.status(500).json({
    status: 500,
    message: "Internal Server Error",
    error: error,
  });
};
//error 404 handler...
error404 = (message, res) => {
  return res.status(404).json({
    status: 404,
    message: message,
  });
};

//create services
const createServices = async (req, res)=>{
    const service_name = req.body.service_name ? req.body.service_name.trim() :'';
    const description = req.body.description ? req.body.description.trim():'';
    
    if (!service_name) {
        return error422("Service name is required.", res);
    }  

    let connection = await getConnection();

    const isServiceExist = "SELECT * FROM services WHERE LOWER(TRIM(service_name)) = ?";
    const isServiceResult = await connection.query(isServiceExist,[service_name.toLowerCase()]);
    if (isServiceResult[0].length>0) {
        return error422("Service is already is exist.", res);
    }

    try {
        // start the transaction
        await connection.beginTransaction();
        const insertQuery = "INSERT INTO services (service_name, description)VALUES(?, ?)";
        const result = await connection.query(insertQuery,[service_name, description]);

        await connection.commit()
        return res.status(200).json({
            status:200,
            message:"Service created successfully."
        })
    } catch (error) {
        if (connection) connection.rollback();
        return error500(error, res);
    } finally{
        if (connection) connection.release();
    }
}

//Update service
const updateService = async (req, res) => {
    const serviceId = parseInt(req.params.id);
    const service_name = req.body.service_name ? req.body.service_name.trim() :'';
    const description = req.body.description ? req.body.description.trim():'';
    
    if (!service_name) {
        return error422("Service name is required.", res);
    }

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        // Check if service exists
        const serviceQuery = "SELECT * FROM services WHERE service_id  = ?";
        const serviceResult = await connection.query(serviceQuery, [serviceId]);
        if (serviceResult[0].length == 0) {
            return error422("Service Not Found.", res);
        }
        // Check if the provided service exists and is active 
        const existingServiceQuery = "SELECT * FROM services WHERE service_name  = ? AND service_id !=?";
        const existingServiceResult = await connection.query(existingServiceQuery, [service_name, serviceId]);
        if (existingServiceResult[0].length > 0) {
            return error422("Service already exists.", res);
        }

        // Update the service record with new data
        const updateQuery = `
            UPDATE services
            SET service_name = ?, description = ?
            WHERE service_id = ?
        `;

        await connection.query(updateQuery, [ service_name, description, serviceId]);
        // Commit the transaction
        await connection.commit();

        return res.status(200).json({
            status: 200,
            message: "Service updated successfully.",
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

//all Services list
const getAllServices = async (req, res) => {
    const { page, perPage, key } = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let getServicesQuery = `SELECT * FROM services`;

        let countQuery = `SELECT COUNT(*) AS total FROM services`;

        if (key) {
            const lowercaseKey = key.toLowerCase().trim();
            if (lowercaseKey === "activated") {
                getServicesQuery += ` AND status = 1`;
                countQuery += ` AND status = 1`;
            } else if (lowercaseKey === "deactivated") {
                getServicesQuery += ` AND status = 0`;
                countQuery += ` AND status = 0`;
            } else {
                getServicesQuery += ` AND LOWER(service_name) LIKE '%${lowercaseKey}%' `;
                countQuery += ` AND LOWER(service_name) LIKE '%${lowercaseKey}%' `;
            }
        }
        getServicesQuery += " ORDER BY cts DESC";

        // Apply pagination if both page and perPage are provided
        let total = 0;
        if (page && perPage) {
            const totalResult = await connection.query(countQuery);
            total = parseInt(totalResult[0][0].total);

            const start = (page - 1) * perPage;
            getServicesQuery += ` LIMIT ${perPage} OFFSET ${start}`;
        }

        const result = await connection.query(getServicesQuery);
        const services = result[0];

        // Commit the transaction
        await connection.commit();
        const data = {
            status: 200,
            message: "Services retrieved successfully",
            data: services,
        };
        // Add pagination information if provided
        if (page && perPage) {
            data.pagination = {
                per_page: perPage,
                total: total,
                current_page: page,
                last_page: Math.ceil(total / perPage),
            };
        }

        return res.status(200).json(data);
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
} 

//get Services active...
const getServicesWma = async (req, res) => {

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        const serviceQuery = `SELECT * FROM services
        
        WHERE status = 1  ORDER BY service_name`;

        const serviceResult = await connection.query(serviceQuery);
        const service = serviceResult[0];

        // Commit the transaction
        await connection.commit();

        return res.status(200).json({
            status: 200,
            message: "Service retrieved successfully.",
            data: service,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

//status change of service...
const onStatusChange = async (req, res) => {
    const serviceId = parseInt(req.params.id);
    const status = parseInt(req.query.status); // Validate and parse the status parameter


    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        // Check if the service exists
        const serviceQuery = "SELECT * FROM services WHERE service_id = ? ";
        const serviceResult = await connection.query(serviceQuery, [serviceId]);

        if (serviceResult[0].length == 0) {
            return res.status(404).json({
                status: 404,
                message: "Service not found.",
            });
        }

        // Validate the status parameter
        if (status !== 0 && status !== 1) {
            return res.status(400).json({
                status: 400,
                message: "Invalid status value. Status must be 0 (inactive) or 1 (active).",
            });
        }

        // Soft update the service status
        const updateQuery = `
            UPDATE services
            SET status = ?
            WHERE service_id = ?
        `;

        await connection.query(updateQuery, [status, serviceId]);

        const statusMessage = status === 1 ? "activated" : "deactivated";
        // Commit the transaction
        await connection.commit();
        return res.status(200).json({
            status: 200,
            message: `Service ${statusMessage} successfully.`,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
};

//Service list by id
const getService = async (req, res) => {
    const serviceId = parseInt(req.params.id);
    
    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        const serviceQuery = `SELECT * FROM services
        WHERE service_id = ?`;
        const serviceResult = await connection.query(serviceQuery, [serviceId]);

        if (serviceResult[0].length == 0) {
            return error422("Service Not Found.", res);
        }
        const service = serviceResult[0][0];

        return res.status(200).json({
            status: 200,
            message: "Service Retrived Successfully",
            data: service
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

//Service download
const getServiceDownload = async (req, res) => {

    const { key } = req.query;

    let connection = await getConnection();
    try {
        await connection.beginTransaction();

        let getServiceQuery = `SELECT * FROM services
        WHERE 1 AND status = 1`;

        if (key) {
            const lowercaseKey = key.toLowerCase().trim();
            getServiceQuery += ` AND (LOWER(service_name) LIKE '%${lowercaseKey}%')`;
        }

        getServiceQuery += " ORDER BY cts DESC";

        let result = await connection.query(getServiceQuery);
        let service = result[0];

        if (service.length === 0) {
            return error422("No data found.", res);
        }


        service = service.map((item, index) => ({
            "Sr No": index + 1,
            "Create Date": item.cts,
            "Service Name":item.service_name,
            "Description": item.description

            // "Status": item.status === 1 ? "activated" : "deactivated",
        }));

        // Create a new workbook
        const workbook = xlsx.utils.book_new();

        // Create a worksheet and add only required columns
        const worksheet = xlsx.utils.json_to_sheet(service);

        // Add the worksheet to the workbook
        xlsx.utils.book_append_sheet(workbook, worksheet, "ServiceInfo");

        // Create a unique file name
        const excelFileName = `exported_data_${Date.now()}.xlsx`;

        // Write the workbook to a file
        xlsx.writeFile(workbook, excelFileName);

        // Send the file to the client
        res.download(excelFileName, (err) => {
            if (err) {
                res.status(500).send("Error downloading the file.");
            } else {
                fs.unlinkSync(excelFileName);
            }
        });

        await connection.commit();
    } catch (error) {

        return error500(error, res);
    } finally {
        if (connection) connection.release();
    }
};

module.exports = {
    getAllServices,
    getServicesWma,
    createServices,
    updateService,
    onStatusChange,
    getService,
    getServiceDownload
   
}