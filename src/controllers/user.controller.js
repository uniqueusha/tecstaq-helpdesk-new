const pool = require("../../db");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const nodemailer = require("nodemailer");
const xlsx = require("xlsx");
const fs = require("fs");
const path = require('path');
const { exec } = require("child_process");
const Importer  = require('mysql-import');
require("dotenv").config();

const transporter = nodemailer.createTransport({
    host: "smtp-mail.outlook.com",
    port: 587,
    secure: false,
    auth: {
        user: "support@tecstaq.com",
        pass: "Homeoffice@2025#$",
    },
    tls: {
        rejectUnauthorized: false,
    },
 });

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

// Helper function to log activity
async function logUserActivity({ user_id, session_id, ip_address, device_info, status, customer_id}) {
      let connection = await pool.getConnection()

    try {
        if (status === "login") {
            await pool.query(
                `INSERT INTO user_activity_log 
                 (user_id, session_id, login_time, ip_address, device_info, status, customer_id) 
                 VALUES (?, ?, NOW(), ?, ?, 'login', ?)`,
                [user_id, session_id, ip_address, device_info, customer_id]
            );
        } else if (status === "logout" || status === "timeout" || status === "session_expired") {
            await pool.query(
                `UPDATE user_activity_log 
                 SET logout_time = NOW(), status = ? 
                 WHERE user_id = ? AND session_id = ? AND logout_time IS NULL`,
                [status, user_id, session_id]
            );
        }
     await connection.commit()
    } catch (err) {
        connection.rollback()
        console.error("Error logging user activity:", err);
    } finally{
      if (connection) await connection.release()
    }
}
//create user
const createUserOld = async (req, res) => {
  const user_name = req.body.user_name ? req.body.user_name.trim() : "";
  const email_id = req.body.email_id ? req.body.email_id.trim() : "";
  const phone_number = req.body.phone_number ? req.body.phone_number : null;
  const role_id = req.body.role_id ? req.body.role_id : 0;
  const department_id = req.body.department_id ? req.body.department_id : 0;
//   const customer_name = req.body.customer_name ? req.body.customer_name.trim() : "";
  const company_name = req.body.company_name ? req.body.company_name.trim() : "";
  const address = req.body.address ? req.body.address.trim() : "";
  const domain = req.body.domain ? req.body.domain.trim() : "";
  const service_id = req.body.service_id ? req.body.service_id : [];
  const isSite = req.body.isSite ? req.body.isSite : '';
  const serviceData = req.body.serviceData ? req.body.serviceData : [];
  const customerAgent = req.body.customerAgent ? req.body.customerAgent :[];
  const password = "123456";

  if (!user_name) {
    return error422("User name is required.", res);
  } else if (!email_id) {
    return error422("Email id is required.", res);
  } else if (!phone_number) {
    return error422("Phone number is required.", res);
  } else if (!password) {
    return error422("Password is required.", res);
  } else if (!role_id && role_id != 0) {
    return error422("role_id is required.", res);
  } else if (!department_id && department_id != 0) {
    return error422("Department is required.", res);
  }

  
    // //check User Name already is exists or not
    // const isExistUserNameQuery = `SELECT * FROM users WHERE LOWER(TRIM(user_name))= ?`;
    // const isExistUserNameResult = await pool.query(isExistUserNameQuery, [user_name.toLowerCase()]);
    // if (isExistUserNameResult[0].length > 0) {
    //     return error422(" User Name is already exists.", res);
    // }

    // Check if email_id exists
    const checkUserQuery = "SELECT * FROM users WHERE LOWER(TRIM(email_id)) = ? AND status = 1";
    const checkUserResult = await pool.query(checkUserQuery, [email_id.toLowerCase()]);
    if (checkUserResult[0].length > 0) {
        return error422('Email id is already exists.', res);
    }
    
    // Attempt to obtain a database connection
    let connection = await getConnection();
    try {
        //Start the transaction
        await connection.beginTransaction();
        //insert into user
        const insertUserQuery = `INSERT INTO users (user_name, email_id, phone_number, role_id, department_id ) VALUES (?, ?, ?, ?, ?)`;
        const insertUserValues = [ user_name, email_id, phone_number, role_id, department_id ];
        const insertuserResult = await connection.query(insertUserQuery, insertUserValues);
        const user_id = insertuserResult[0].insertId;

        //role-customer
        const selectCustomerRoleQuery = `SELECT * FROM roles WHERE role_id = ?`
        const selectResult = await connection.query(selectCustomerRoleQuery,[role_id]);
        const customerRole = selectResult[0][0];
        if(customerRole.role_name === 'Customer'){
            const insertCustomerQuery = `INSERT INTO customers (customer_name, company_name, email_id, address, phone_number, domain, isSite, user_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;
            const insertCustomerValues = [ user_name, company_name, email_id, address, phone_number, domain, isSite, user_id ];
            const insertCustomerResult = await connection.query(insertCustomerQuery, insertCustomerValues);
            const customerid = insertCustomerResult[0].insertId;

        let serviceArray = serviceData
        for (let i = 0; i < serviceArray.length; i++) {
            const elements = serviceArray[i];
            const service_id = elements.service_id ? elements.service_id : null;
            
            // Check if service_id exists
            const serviceIdQuery = "SELECT * FROM services WHERE service_id = ? ";
            const serviceIdResult = await connection.query(serviceIdQuery, [service_id]);
            if (serviceIdResult[0].length == 0) {
                return error422("Service Not Found.", res);
            }

            let insertServiceQuery = 'INSERT INTO customer_service (customer_id, service_id) VALUES (?, ?)';
            let insertServiceValues = [ customerid, service_id ];
            let insertServiceResult = await connection.query(insertServiceQuery, insertServiceValues);
        }
        
       
        if (customerRole.role_name === 'Customer') {
        let customerAgentArray = customerAgent;
            for (let i = 0; i < customerAgentArray.length; i++) {
                const elements = customerAgentArray[i];
                const user_nm = elements.user_nm ? elements.user_nm.trim() : "";
                const email_id = elements.email_id ? elements.email_id.trim() : "";
                const mobile_number = elements.mobile_number ? elements.mobile_number : '';
        
                const insertAgentQuery = `INSERT INTO customer_agents (customer_id, user_nm, mobile_number, email_id) VALUES (?, ?, ?, ?)`;
                const insertAgentValues = [ customerid, user_nm, mobile_number, email_id ];
                const insertAgentResult = await connection.query(insertAgentQuery, insertAgentValues);
            }
        }
    }
        const hash = await bcrypt.hash(password, 10); // Hash the password using bcrypt

        //insert into Untitled
        const insertUntitledQuery = "INSERT INTO untitled (user_id, extenstions) VALUES (?,?)";
        const insertUntitledValues = [user_id, hash];
        const untitledResult = await connection.query(insertUntitledQuery, insertUntitledValues)

        //commit the transation
        await connection.commit();

        // try {
        const message = `
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <title>Welcome to test</title>
          <style>
              div{
              font-family: Arial, sans-serif; 
               margin: 0px;
                padding: 0px;
                color:black;
              }
          </style>
        </head>
        <body>
        <div>
        <h2 style="text-transform: capitalize;">Hi ${user_name},</h2>
        <h3>Welcome to Tecstaq!</h3>

        <p>Your account has been successfully created. Here are your login details:</p>
        <p>Email: ${email_id}</p>
        <p>Temporary Password: ${password}</P>
        <p>You can log in using the following link:
          <a href="https://desk.tecstaq.com/">https://desk.tecstaq.com/</a></p>
          <p>For security reasons, please change your password after your first login.</p>
          <p>If you didn’t request this account or believe this was created in error, please contact our support team at support@tecstaq.com.</p>
          <p>Thank you,</p>
          <p><strong>Tecstaq Support</strong></p>

        </div>
        </body>
        </html>`;

        // Prepare the email message options.
        const mailOptions = {
            from: "support@tecstaq.com", // Sender address from environment variables.
            to: `${email_id}`, // Recipient's name and email address."sushantsjamdade@gmail.com",
            // bcc: ["sushantsjamdade@gmail.com"],
            subject: "Welcome to Tecstaq HelpDesk Support! Your Account Has Been Created", // Subject line.
            html: message,
        };

        try {
        await transporter.sendMail(mailOptions);
        return res.status(200).json({
        status: 200,
        message: `User created successfully.`,
      });
    } catch (emailError) {
      return res.status(200).json({
        status: 200,
        message: "User created successfully, but failed to send email.",
      });
    }
    } catch (error) {
        await connection.rollback();
        return error500(error, res);
    } finally {
        await connection.release();
    }
};

const createUser = async (req, res) => {
  const user_name = req.body.user_name ? req.body.user_name.trim() : "";
  const email_id = req.body.email_id ? req.body.email_id.trim() : "";
  const phone_number = req.body.phone_number ? req.body.phone_number : null;
  const role_id = req.body.role_id ? req.body.role_id : 0;
  const department_id = req.body.department_id ? req.body.department_id : 0;
//   const customer_name = req.body.customer_name ? req.body.customer_name.trim() : "";
  const company_name = req.body.company_name ? req.body.company_name.trim() : "";
  const address = req.body.address ? req.body.address.trim() : "";
  const domain = req.body.domain ? req.body.domain.trim() : "";
    const customer_id = req.body.customer_id ? req.body.customer_id : 0;

  const service_id = req.body.service_id ? req.body.service_id : [];
  const isSite = req.body.isSite ? req.body.isSite : '';
  const serviceData = req.body.serviceData ? req.body.serviceData : [];
  const customerAgent = req.body.customerAgent ? req.body.customerAgent :[];
  const password = "123456";

  if (!user_name) {
    return error422("User name is required.", res);
  } else if (!email_id) {
    return error422("Email id is required.", res);
  } else if (!phone_number) {
    return error422("Phone number is required.", res);
  }  else if (!role_id && role_id != 0) {
    return error422("role_id is required.", res);
  } else if (!department_id && department_id != 0) {
    return error422("Department is required.", res);
  }

    // //check User Name already is exists or not
    // const isExistUserNameQuery = `SELECT * FROM users WHERE LOWER(TRIM(user_name))= ?`;
    // const isExistUserNameResult = await pool.query(isExistUserNameQuery, [user_name.toLowerCase()]);
    // if (isExistUserNameResult[0].length > 0) {
    //     return error422(" User Name is already exists.", res);
    // }

    // Check if email_id exists
    const checkUserQuery = "SELECT * FROM users WHERE LOWER(TRIM(email_id)) = ? AND status = 1";
    const checkUserResult = await pool.query(checkUserQuery, [email_id.toLowerCase()]);
    if (checkUserResult[0].length > 0) {
        return error422('Email id is already exists.', res);
    }

    // Check if phone_number exists
    const checkMobileNoQuery = "SELECT * FROM users WHERE phone_number = ? AND status = 1";
    const checkMobileNoResult = await pool.query(checkMobileNoQuery, [phone_number]);
    if (checkMobileNoResult[0].length > 0) {
        return error422('Mobile No is already exists.', res);
    }
    
    // Attempt to obtain a database connection
    let connection = await getConnection();
    try {
        //Start the transaction
        await connection.beginTransaction();
        //insert into user
        const insertUserQuery = `INSERT INTO users (user_name, email_id, phone_number, role_id, department_id ) VALUES (?, ?, ?, ?, ?)`;
        const insertUserValues = [ user_name, email_id, phone_number, role_id, department_id ];
        const insertuserResult = await connection.query(insertUserQuery, insertUserValues);
        const user_id = insertuserResult[0].insertId;

        if(role_id == 3 && department_id == 0){
        // Check if user exists
        const userQuery = "SELECT * FROM customers WHERE customer_id  = ?";
        const userResult = await connection.query(userQuery, [customer_id]);
        const domains = userResult[0][0].domain;
        //insert into sign up
        const insertSignUpQuery = `INSERT INTO signup (user_name, email_id, phone_number, domain, customer_id, user_id) VALUES (?, ?, ?, ?, ?, ?)`;
        const insertSignUpValues = [ user_name, email_id, phone_number, domains, customer_id, user_id ];
        const insertSignUpResult = await connection.query(insertSignUpQuery, insertSignUpValues);
        }
        // let length = 8,
        // charset ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",
        // password = "";
        // for (let i = 0, n = charset.length; i < length; ++i) {
        //     password += charset.charAt(Math.floor(Math.random() * n));
        // }
        const hash = await bcrypt.hash(password, 10); // Hash the password using bcrypt

        //insert into Untitled
        const insertUntitledQuery = "INSERT INTO untitled (user_id, extenstions) VALUES (?,?)";
        const insertUntitledValues = [user_id, hash];
        const untitledResult = await connection.query(insertUntitledQuery, insertUntitledValues)


        //role-customer
        const selectCustomerRoleQuery = `SELECT * FROM roles WHERE role_id = ?`
        const selectResult = await connection.query(selectCustomerRoleQuery,[role_id]);
        const customerRole = selectResult[0][0];
        if(customerRole.role_name === 'Customer'){
            const insertCustomerQuery = `INSERT INTO customers (customer_name, company_name, email_id, address, phone_number, domain, isSite, user_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;
            const insertCustomerValues = [ user_name, company_name, email_id, address, phone_number, domain, isSite, user_id ];
            const insertCustomerResult = await connection.query(insertCustomerQuery, insertCustomerValues);
            const customerid = insertCustomerResult[0].insertId;

        let serviceArray = serviceData
        for (let i = 0; i < serviceArray.length; i++) {
            const elements = serviceArray[i];
            const service_id = elements.service_id ? elements.service_id : null;
            
            // Check if service_id exists
            const serviceIdQuery = "SELECT * FROM services WHERE service_id = ? ";
            const serviceIdResult = await connection.query(serviceIdQuery, [service_id]);
            if (serviceIdResult[0].length == 0) {
                return error422("Service Not Found.", res);
            }

            let insertServiceQuery = 'INSERT INTO customer_service (customer_id, service_id) VALUES (?, ?)';
            let insertServiceValues = [ customerid, service_id ];
            let insertServiceResult = await connection.query(insertServiceQuery, insertServiceValues);
        }
        
        if (customerRole.role_name === 'Customer') {
        let customerAgentArray = customerAgent;
            for (let i = 0; i < customerAgentArray.length; i++) {
                const elements = customerAgentArray[i];
                const department_id = elements.department_id ? elements.department_id : "";
                const userId = elements.user_id ? elements.user_id: "";
          
                const insertAgentQuery = `INSERT INTO customer_agents (customer_id, department_id, user_id) VALUES (?, ?, ?)`;
                const insertAgentValues = [ customerid, department_id, userId,];
                const insertAgentResult = await connection.query(insertAgentQuery, insertAgentValues);
            }
        }
    }

        //commit the transation
        await connection.commit();

        // try {
        const message = `
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <title>Welcome to test</title>
          <style>
              div{
              font-family: Arial, sans-serif; 
               margin: 0px;
                padding: 0px;
                color:black;
              }
          </style>
        </head>
        <body>
        <div>
        <h2 style="text-transform: capitalize;">Hi ${user_name},</h2>
        <h3>Welcome to Tecstaq!</h3>

        <p>Your account has been successfully created. Here are your login details:</p>
        <p>Email: ${email_id}</p>
        <p>Temporary Password: ${password}</P>
        <p>You can log in using the following link:
          <a href="https://support.tecstaq.com/">https://support.tecstaq.com/</a></p>
          <p>For security reasons, please change your password after your first login.</p>
          <p>If you didn’t request this account or believe this was created in error, please contact our support team at support@tecstaq.com.</p>
          <p>Thank you,</p>
          <p><strong>Tecstaq Support</strong></p>

        </div>
        </body>
        </html>`;

        // Prepare the email message options.
        const mailOptions = {
            from: "support@tecstaq.com", // Sender address from environment variables.
            to: `${email_id}`, // Recipient's name and email address."sushantsjamdade@gmail.com",
            // bcc: ["sushantsjamdade@gmail.com"],
            subject: "Welcome to Tecstaq HelpDesk Support! Your Account Has Been Created", // Subject line.
            html: message,
        };

        try {
        await transporter.sendMail(mailOptions);
        return res.status(200).json({
        status: 200,
        message: `User created successfully.`,
      });
    } catch (emailError) {
      return res.status(200).json({
        status: 200,
        message: "User created successfully, but failed to send email.",
      });
    }
    } catch (error) {
        await connection.rollback();
        return error500(error, res);
    } finally {
        await connection.release();
    }
};
  
//login
const login = async (req, res) => {
  let email_id = req.body.email_id ? req.body.email_id.trim() : "";
  let password = req.body.password ? req.body.password.trim() : "";
  if (!email_id) {
    return error422("Email id is required.", res);
  } else if (!password) {
    return error422("Password is required.", res);
  }
  email_id = atob(email_id);
  password = atob(password);
  // Attempt to obtain a database connection
  let connection = await getConnection();
  try {
    //Start the transaction
    await connection.beginTransaction();
    //check email id is exist
    const query = `SELECT u.*, d.department_name FROM users u
    LEFT JOIN departments d
    ON u.department_id = d.department_id 
    WHERE TRIM(LOWER(u.email_id)) = ? AND u.status = 1`;
    const result = await connection.query(query, [email_id.toLowerCase()]);
    const check_user = result[0][0];
  
    
    if (!check_user) {
        return error422("Authentication failed.", res);
    }

// Check if the user with the provided Untitled id exists
        const checkUserUntitledQuery = "SELECT * FROM untitled WHERE user_id = ?";
        const [checkUserUntitledResult] = await connection.query(checkUserUntitledQuery, [check_user.user_id]);
        const user_untitled = checkUserUntitledResult[0];
        if (!user_untitled) {
            return error422("Authentication failed.", res);
        }

        const isPasswordValid = await bcrypt.compare(password, user_untitled.extenstions);
        if (!isPasswordValid) {
            return error422("Authentication failed.", res);
        }

        const userDataQuery = `SELECT u.*, d.department_name, r.role_name, c.customer_id, s.customer_id AS sign_customer_id, ca.customer_id AS cust_customer_id
        FROM users u
        LEFT JOIN departments d ON d.department_id = u.department_id
        LEFT JOIN roles r ON r.role_id = u.role_id
        LEFT JOIN customers c ON c.user_id = u.user_id
        LEFT JOIN signup s ON s.user_id = u.user_id
        LEFT JOIN customer_agents ca ON ca.user_id = u.user_id
        WHERE u.user_id = ?`;
        let userDataResult = await connection.query(userDataQuery, [check_user.user_id]);
    
        const session_id = Date.now().toString() + "_" + check_user.user_id; // simple unique session

        // Generate a JWT token
        const token = jwt.sign(
            {
                user_id: user_untitled.user_id,
                email_id: check_user.email_id,
                role_id: check_user.role_id,
                session_id
            },
            // process.env.JWT_SECRET,
             "secret_this_should_be", // Use environment variable for secret key
            { expiresIn: "1h" }
        );
            // Log login activity
            const ip_address = req.ip;
            const device_info = req.headers['user-agent'] || "Unknown device";
            
            await logUserActivity({ 
                user_id: check_user.user_id, 
                session_id, 
                ip_address, 
                device_info, 
                status: "login",
                customer_id: userDataResult[0][0].customer_id || userDataResult[0][0].sign_customer_id || userDataResult[0][0].cust_customer_id
            });
            
        // Commit the transaction
        await connection.commit();
        return res.status(200).json({
            status: 200,
            message: "Authentication successfully",
            token: token,
            expiresIn: 36000, // 1 hour in seconds,
            data: userDataResult[0][0],session_id
        });

    } catch (error) {
        return error500(error, res)
    } finally {
        await connection.release();
    }
};

// get User list...
const getUsers = async (req, res) => {
    const { page, perPage, key, role_id, user_id, customer_id } = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let getUserQuery = `SELECT u.*,s.customer_id, d.department_name, r.role_name 
        FROM users u 
        LEFT JOIN departments d ON d.department_id = u.department_id
        LEFT JOIN roles r ON r.role_id = u.role_id
        LEFT JOIN signup s ON s.user_id = u.user_id
        WHERE 1 `;

        let countQuery = `SELECT COUNT(*) AS total FROM users u 
        LEFT JOIN departments d
        ON d.department_id = u.department_id
        LEFT JOIN roles r
        ON r.role_id = u.role_id
        LEFT JOIN signup s ON s.user_id = u.user_id
        WHERE 1 `;

        if (key) {
            const lowercaseKey = key.toLowerCase().trim();
            if (lowercaseKey === "activated") {
                getUserQuery += ` AND status = 1`;
                countQuery += ` AND status = 1`;
            } else if (lowercaseKey === "deactivated") {
                getUserQuery += ` AND status = 0`;
                countQuery += ` AND status = 0`;
            } else {
                getUserQuery += ` AND (LOWER(u.user_name) LIKE '%${lowercaseKey}%' || LOWER(r.role_name) LIKE '%${lowercaseKey}%')`;
                countQuery += ` AND (LOWER(u.user_name) LIKE '%${lowercaseKey}%' || LOWER(r.role_name) LIKE '%${lowercaseKey}%')`;
            }
        }

        if (role_id) {
            getUserQuery += ` AND u.role_id = ${role_id} `;
            countQuery += ` AND u.role_id = ${role_id}  `;
        }
        if (customer_id) {
            getUserQuery += ` AND s.customer_id = ${customer_id} `;
            countQuery += ` AND s.customer_id = ${customer_id}  `;
        }

        if (user_id) {
            getUserQuery += ` AND u.user_id = ${user_id} `;
            countQuery += ` AND u.user_id = ${user_id}  `;
        }
        getUserQuery += " ORDER BY u.created_at DESC";

        // Apply pagination if both page and perPage are provided
        let total = 0;
        if (page && perPage) {
            const totalResult = await connection.query(countQuery);
            total = parseInt(totalResult[0][0].total);

            const start = (page - 1) * perPage;
            getUserQuery += ` LIMIT ${perPage} OFFSET ${start}`;
        }

        const result = await connection.query(getUserQuery);
        const user = result[0];

        // Commit the transaction
        await connection.commit();
        const data = {
            status: 200,
            message: "User retrieved successfully",
            data: user,
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

//User by id
const getUser = async (req, res) => {
    const userId = parseInt(req.params.id);
    const { role_id } = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let userQuery = `SELECT u.*, d.department_name, r.role_name 
        FROM users u 
        LEFT JOIN departments d
        ON d.department_id = u.department_id
        LEFT JOIN roles r
        ON r.role_id = u.role_id
        WHERE 1 AND u.user_id = ? `;
        let userResult = await connection.query(userQuery, [userId]);
        if (userResult[0].length == 0) {
            return error422("User Not Found.", res);
        }
        if (role_id) {
            userQuery += ` AND u.role_id = ${role_id} `;
        }
        const user = userResult[0][0];
    
        if (user.role_id == 3){
        let agentQuery = `SELECT ca.*,c.customer_name FROM customer_agents ca
            LEFT JOIN customers c ON c.customer_id = ca.customer_id
            WHERE ca.customer_id = ?`
        let agentResult = await connection.query(agentQuery, [userId]);
        user['agent'] = agentResult[0];
        }

        return res.status(200).json({
            status: 200,
            message: "User Retrived Successfully",
            data: user
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

//Update User
const updateUser = async (req, res) => {
    const userId = parseInt(req.params.id);
    const user_name = req.body.user_name ? req.body.user_name.trim() : "";
    const email_id = req.body.email_id ? req.body.email_id.trim() : "";
    const phone_number = req.body.phone_number ? req.body.phone_number : null;
    const role_id = req.body.role_id ? req.body.role_id : 0;
    const department_id = req.body.department_id ? req.body.department_id : 0;
    const company_name = req.body.company_name ? req.body.company_name.trim() : "";
    const address = req.body.address ? req.body.address.trim() : "";
    const domain = req.body.domain ? req.body.domain.trim() : "";
    const service_id = req.body.service_id ? req.body.service_id : [];
    const isSite = req.body.isSite ? req.body.isSite : '';
    const serviceData = req.body.serviceData ? req.body.serviceData : [];
    const customerAgent = req.body.customerAgent ? req.body.customerAgent :[];
    if (!user_name) {
        return error422("User name is required.", res);
    } else if (!email_id) {
        return error422("Email id is required.", res);
    } else if (!phone_number) {
        return error422("Phone number is required.", res);
    }

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        // Check if user exists
        const userQuery = "SELECT * FROM users WHERE user_id  = ?";
        const userResult = await connection.query(userQuery, [userId]);
        if (userResult[0].length === 0) {
            return error422("User Not Found.", res);
        }

        // Update the user record with new data
        const updateQuery = `
            UPDATE users
            SET user_name = ?, email_id = ?, phone_number = ?, role_id = ?, department_id = ?
            WHERE user_id = ?
        `;

        await connection.query(updateQuery, [ user_name, email_id, phone_number, role_id, department_id, userId]);

        if (role_id == 3) {
        let customerAgentArray = customerAgent;
        for (let i = 0; i < customerAgentArray.length; i++) {
            const elements = customerAgentArray[i];
            const Technician_id = elements.user_id ? elements.user_id : '';
          
             // Check if Technician exists
              const technicianQuery = "SELECT user_id FROM users WHERE role_id = 2 AND user_id = ?";
              const technicianResult = await connection.query(technicianQuery,[Technician_id]);
              if (technicianResult[0].length == 0) {
                return error422("Technician Not Found.", res);
              }

            const insertAgentQuery = `INSERT INTO customer_agents (customer_id, user_id ) VALUES (?, ?)`;
            const insertAgentValues = [ user_id, Technician_id ];
            const insertAgentResult = await connection.query(insertAgentQuery, insertAgentValues);
        }
    }
        // Commit the transaction
        await connection.commit();

        return res.status(200).json({
            status: 200,
            message: "User updated successfully.",
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

//status change of user...
const onStatusChange = async (req, res) => {
    const userId = parseInt(req.params.id);
    const status = parseInt(req.query.status); // Validate and parse the status parameter


    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        // Check if the user exists
        const userQuery = "SELECT * FROM users WHERE user_id = ? ";
        const userResult = await connection.query(userQuery, [userId]);

        if (userResult[0].length == 0) {
            return res.status(404).json({
                status: 404,
                message: "User not found.",
            });
        }

        // Validate the status parameter
        if (status !== 0 && status !== 1) {
            return res.status(400).json({
                status: 400,
                message: "Invalid status value. Status must be 0 (inactive) or 1 (active).",
            });
        }

        // Soft update the user
        const updateQuery = `
            UPDATE users
            SET status = ?
            WHERE user_id = ?
        `;

        await connection.query(updateQuery, [status, userId]);

        const statusMessage = status === 1 ? "activated" : "deactivated";
        // Commit the transaction
        await connection.commit();
        return res.status(200).json({
            status: 200,
            message: `User ${statusMessage} successfully.`,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
};

//get user active...
const getUserWma = async (req, res) => {
     const { department_id} = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let userQuery = `SELECT u.*, d.department_name, r.role_name 
        FROM users u 
        LEFT JOIN departments d
        ON d.department_id = u.department_id
        LEFT JOIN roles r
        ON r.role_id = u.role_id
        WHERE 1 AND u.status = 1`;

        if (department_id) {
        userQuery += ` AND u.department_id = '${department_id}'`;
        }

        userQuery += ` ORDER BY u.user_name`;
        const userResult = await connection.query(userQuery);
        const user = userResult[0];

        // Commit the transaction
        await connection.commit();

        return res.status(200).json({
            status: 200,
            message: "User retrieved successfully.",
            data: user,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

//get signup active...
const getSignupWma = async (req, res) => {
     const { customer_id} = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let userQuery = `SELECT s.*, c.customer_name 
        FROM signup s 
        LEFT JOIN customers c
        ON c.customer_id = s.customer_id
        WHERE 1 AND s.status = 1`;

        if (customer_id) {
        userQuery += ` AND s.customer_id = '${customer_id}'`;
        }

        userQuery += ` ORDER BY s.user_name`;
        const userResult = await connection.query(userQuery);
        const user = userResult[0];

        // Commit the transaction
        await connection.commit();

        return res.status(200).json({
            status: 200,
            message: "Signup Employee retrieved successfully.",
            data: user,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

//get Technician active...
const getTechnicianWma = async (req, res) => {
     const {  key, department_id, user_id} = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let userQuery = `SELECT u.*, d.department_name, r.role_name 
        FROM users u 
        LEFT JOIN departments d
        ON d.department_id = u.department_id
        LEFT JOIN roles r
        ON r.role_id = u.role_id
        WHERE 1 AND u.status = 1 AND u.role_id = 2`;

        if (key) {
            const lowercaseKey = key.toLowerCase().trim();
            userQuery += ` AND (LOWER(u.user_name) LIKE '%${lowercaseKey}%' || LOWER(u.email_id) LIKE '%${lowercaseKey}%' || LOWER(u.phone_number) LIKE '%${lowercaseKey}%')`;
        }

        if (department_id) {
        userQuery += ` AND u.department_id = '${department_id}'`;
        }

        if (user_id) {
        userQuery += ` AND u.user_id = '${user_id}'`;
        }

        userQuery += ` ORDER BY u.user_name`;
        const userResult = await connection.query(userQuery);
        const user = userResult[0];

        // Commit the transaction
        await connection.commit();

        return res.status(200).json({
            status: 200,
            message: "User retrieved successfully AND Check Mail.",
            data: user,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

//Customer active
const getCustomersWma = async (req, res) => {
     const { user_id } = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let customerQuery = `SELECT c.*
        FROM customers c
        WHERE 1 AND c.status = 1 `;
        // LEFT JOIN signup s ON s.customer_id = c.customer_id
        if (user_id){
            customerQuery += ` AND (c.user_id = '${user_id}')`;
        }
        customerQuery += ` ORDER BY c.cts`;
        const customerResult = await connection.query(customerQuery);
        const customer = customerResult[0];

        // Commit the transaction
        await connection.commit();

        return res.status(200).json({
            status: 200,
            message: "Customer retrieved successfully.",
            data: customer,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

//change password
const onChangePassword = async (req, res) => {
    const email_id = req.body.email_id ? req.body.email_id.trim() : "";
    const password = req.body.password || "";
    const new_password = req.body.new_password || "";
    const new_email = req.body.new_email ? req.body.new_email.trim() : "";
    if (!email_id) {
        return error422("Email Id required.", res);
    }
    if (!password) {
        return error422("Password is required.", res);
    }
    if (!new_password) {
        return error422("New password is required.", res);
    }

    let connection = await getConnection();

    try {
        await connection.beginTransaction();

        // Check if email_id exists
        const checkUserQuery = "SELECT * FROM users WHERE LOWER(TRIM(email_id)) = ? AND status = 1";
        const [checkUserResult] = await connection.query(checkUserQuery, [email_id.toLowerCase()]);
        if (checkUserResult.length === 0) {
            return error422('Email id is not found.', res);
        }

        const userData = checkUserResult[0]; // Extract the first row

        // Retrieve the hashed password from the database (update column name if needed)
        const untitledQuery = 'SELECT extenstions FROM untitled WHERE user_id = ?';
        const [untitledResult] = await connection.query(untitledQuery, [userData.user_id]);

        if (untitledResult.length === 0) {
            return error422("Password not found for this user.", res);
        }

        const hash = untitledResult[0].extenstions;
        if (!hash) {
            return error422('Stored password hash is missing.', res);
        }

        const isValid = await bcrypt.compare(password, hash);
        if (!isValid) {
            return error422('Incorrect password.', res);
        }

        // Hash the new password
        const newHashedPassword = await bcrypt.hash(new_password, 10);

        // Update the user's password in the database
        const updatePasswordQuery = `UPDATE untitled SET extenstions = ? WHERE user_id = ?`;
        await connection.query(updatePasswordQuery, [newHashedPassword, userData.user_id]);

        // If new email is provided, update it
        if (new_email) {
            // Check if the new email already exists
            const checkNewEmailQuery = "SELECT email_id FROM users WHERE LOWER(TRIM(email_id)) = ?";
            const [emailCheckResult] = await connection.query(checkNewEmailQuery, [new_email.toLowerCase()]);

            if (emailCheckResult.length > 0) {
                return error422("New email is already in use.", res);
            }

            // Update the email
            const updateEmailQuery = `UPDATE users SET email_id = ? WHERE user_id = ?`;
            await connection.query(updateEmailQuery, [new_email, userData.user_id]);
        }

        await connection.commit();
        return res.status(200).json({
            status: 200,
            message: "Password updated successfully."
        });

    } catch (error) {
        await connection.rollback();
        error500(error, res);
    } finally {
        if (connection) connection.release();
    }
};

//send otp 
const sendOtp = async (req, res) => {
    const email_id = req.body.email_id;
    if (!email_id) {
        return error422("Email is  required.", res);
    }
    // Check if email_id exists
    const query = 'SELECT * FROM users WHERE TRIM(LOWER(email_id)) = ?';
    const result = await pool.query(query, [email_id.toLowerCase()]);
    if (result[0].length === 0) {
        return error422('Email id is not found.', res);
    }

    let user_name = result[0][0].user_name;

    let connection = await getConnection();
    try {
        //Start the transaction
        await connection.beginTransaction();
        const otp = Math.floor(100000 + Math.random() * 900000);
        const deleteQuery = `DELETE FROM otp WHERE cts < NOW() - INTERVAL 5 MINUTE`;
        const deleteResult = await connection.query(deleteQuery);

        const otpQuery = "INSERT INTO otp (otp, email_id) VALUES (?, ?)";
        const otpResult = await connection.query(otpQuery, [otp, email_id])

        const message = `
      <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <title>Welcome to Tecstaq-helddesk.com</title>
          <style>
              div{
              font-family: Arial, sans-serif; 
               margin: 0px;
                padding: 0px;
                color:black;
              }
          </style>
        </head>
        <body>
        <div>
       <h2 style="text-transform: capitalize;">Hello ${user_name},</h2>
        <p>It seems you requested a password reset for your Tecstaq-helddesk account. Use the OTP below to complete the process and regain access to your account.</p>
        <h3>Your OTP: <strong>${otp}</strong></h3>
        <p>For security, this OTP will expire in 5 minutes. Please don’t share this code with anyone. If you didn’t request a password reset, please ignore this email or reach out to our support team for assistance.</p>
        <h4>What’s Next?</h4>
        <ol>
          <li>Enter the OTP on the password reset page.</li>
          <li>Set your new password, and you’re all set to log back in.</li>
        <li>Thank you for using Tecstaq-helddesk Application!</li>
        </ol>
        <p>Best regards,<br>The Tecstaq-helddesk Team</p>
         </div>
        </body>
        </html>`;

        // Validate required fields.
        if (!email_id || !message) {
            return res
                .status(400)
                .json({ status: "error", message: "Missing required fields" });
        }

        // Prepare the email message options.
        const mailOptions = {
            from: "support@tecstaq.com", // Sender address from environment variables.
            to: `${email_id}`, // Recipient's name and email address.
            //    replyTo: "rohitlandage86@gmail.com", // Sets the email address for recipient responses.
            //  bcc: "sushantsjamdade@gmail.com",
            // bcc: "sushantsjamdade@gmail.com",
            subject: "Reset Your Tecstaq-helpdesk Password – OTP Inside", // Subject line.
            html: message,
        };

        // Send email 
        await transporter.sendMail(mailOptions);

        return res.status(200).json({
            status: 200,
            message: `OTP sent successfully to ${email_id}.`,

        })
    } catch (error) {
        return error500(error, res)
    } finally {
        if (connection) connection.release()
    }
}

//verify otp
const verifyOtp = async (req, res) => {
    const otp = req.body.otp ? req.body.otp : null;
    const email_id = req.body.email_id ? req.body.email_id.trim() : null;
    if (!otp) {
        return error422("Otp is required.", res);
    } else if (!email_id) {
        return error422("Email id is required.", res);
    }

    let connection = await getConnection();
    try {
        //Start the transaction
        await connection.beginTransaction();

        // Delete expired OTPs

        const deleteQuery = `DELETE FROM otp WHERE cts < NOW() - INTERVAL 5 MINUTE`;
        const deleteResult = await connection.query(deleteQuery);

        // Check if OTP is valid and not expired
        const verifyOtpQuery = `
        SELECT * FROM otp 
        WHERE TRIM(LOWER(email_id)) = ? AND otp = ?
      `;
        const verifyOtpResult = await connection.query(verifyOtpQuery, [email_id.trim().toLowerCase(), otp]);

        // If no OTP is found, return a failed verification message
        if (verifyOtpResult[0].length === 0) {
            return error422("OTP verification failed.", res);
        }

        // Check if the OTP is expired
        const otpData = verifyOtpResult;
        const otpCreatedTime = otpData.cts;
        const fiveMinutesAgo = new Date(Date.now() - 5 * 60 * 1000);

        if (otpCreatedTime < fiveMinutesAgo) {
            return error422("OTP has expired. Please request a new one.", res);
        }

        // OTP is valid and within the 5-minute limit
        return res.status(200).json({
            status: 200,
            message: "OTP verified successfully"
        });

    } catch (error) {
        return error500(error, res)
    } finally {
        if (connection) connection.release();
    }
};

//check email_id
const checkEmailId = async (req, res) => {
    const email_id = req.body.email_id ? req.body.email_id.trim() : ""; // Extract and trim email_id from request body
    if (!email_id) {
        return error422("Email Id required.", res);
    }

    let connection = await getConnection();
    try {
        //Start the transaction
        await connection.beginTransaction();

        // Check if email_id exists
        const query = 'SELECT * FROM users WHERE TRIM(LOWER(email_id)) = ?';
        const result = await connection.query(query, [email_id.toLowerCase()]);
        if (result[0].length === 0) {
            return error422('Email id is not found.', res);
        }
        const untitledData = result;

        return res.status(200).json({
            status: 200,
            message: "Email Id Exists",
            email_id: true,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release();
    }
};

//forget password
const forgotPassword = async (req, res) => {
    const email_id = req.body.email_id ? req.body.email_id.trim() : null;
    const newPassword = req.body.newPassword ? req.body.newPassword.trim() : null;
    const confirmPassword = req.body.confirmPassword ? req.body.confirmPassword.trim() : null;
    if (!email_id) {
        return error422("Email id is requried", res);
    } else if (!newPassword) {
        return error422("New password is required.", res);
    } else if (!confirmPassword) {
        return error422("Confirm password is required.", res);
    } else if (newPassword !== confirmPassword) {
        return error422("New password and Confirm password do not match.", res);
    }

    let connection = await getConnection();
    try {
        //Start the transaction
        await connection.beginTransaction();

        // Check if email_id exists
        const query = 'SELECT * FROM users WHERE TRIM(LOWER(email_id)) = ?';
        const result = await connection.query(query, [email_id.toLowerCase()]);
        if (result[0].length === 0) {
            return error404('Email id is not found.', res);
        }
        const untitledData = result[0][0];

        // Hash the new password
        const hash = await bcrypt.hash(confirmPassword, 10);

        const updateQuery = `UPDATE untitled SET extenstions = ? WHERE user_id = ?`;
        const [updateResult] = await connection.query(updateQuery, [hash, untitledData.user_id]);

        // Commit the transaction
        await connection.commit();
        return res.status(200).json({
            status: 200,
            message: "Password has been updated successfully"
        })
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release();
    }
};

const sendOtpIfEmailIdNotExists = async (req, res) => {
    const email_id = req.body.email_id;
    if (!email_id) {
        return error422("Email is required.", res);
    }

    // Check if email_id exists
    const query = 'SELECT * FROM users WHERE TRIM(LOWER(email_id)) = ?';
    const result = await pool.query(query, [email_id.toLowerCase()]);

    if (result.rowCount > 0) {
        // If email_id exists, return an error response
        return error422('Email ID already exists. OTP will not be sent.', res);
    }

    let connection = await getConnection();
    try {
        //Start the transaction
        await connection.beginTransaction();

        // Generate a 6-digit OTP
        const otp = Math.floor(100000 + Math.random() * 900000);

        // Delete expired OTPs from the table (older than 5 minutes)
        const deleteQuery = `DELETE FROM otp WHERE cts < NOW() - INTERVAL 5 MINUTE`;
        const deleteResult = await connection.query(deleteQuery);

        // Insert the new OTP into the database
        const otpQuery = "INSERT INTO otp (otp, email_id) VALUES (?, ?)";
        await connection.query(otpQuery, [otp, email_id]);

        // Compose the email message with OTP details
        const message = `
      <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <title>Welcome to Tecstaq-helpdesk.com</title>
          <style>
              div {
                font-family: Arial, sans-serif; 
                margin: 0px;
                padding: 0px;
                color: black;
              }
          </style>
        </head>
        <body>
        <div>
          <h2>Hello,</h2>
          <p>Thank you for registering at Tecstaq-helpdesk.com. Use the OTP below to complete your registration.</p>
          <h3>Your OTP: <strong>${otp}</strong></h3>
          <p>This OTP will expire in 5 minutes. Please don’t share this code with anyone.</p>
          <p>Best regards,<br>The Tecstaq-helpdesk Team</p>
        </div>
        </body>
        </html>`;

        // Email options
        const mailOptions = {
            from: "support@tecstaq.com",
            to: email_id,
            // replyTo: "rohitlandage86@gmail.com",
            // bcc: "sushantsjamdade@gmail.com",
            //bcc: "ushamyadav777@gmail.com"
            subject: "Your Registration OTP",
            html: message,
        };

        // Send the email
        await transporter.sendMail(mailOptions);

        // Return success response
        return res.status(200).json({
            status: 200,
            message: `OTP sent successfully to ${email_id}.`,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release();
    }
};

//get Technician ...
const deleteTechnician = async (req, res) => {
    const agentId = parseInt(req.params.id);

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let deleteTechnicianQuery = `DELETE FROM customer_agents WHERE agents_id = ?`;
        const deleteTechnicianResult = await connection.query(deleteTechnicianQuery, [agentId]);

        // Commit the transaction
        await connection.commit();

        return res.status(200).json({
            status: 200,
            message: "Technician Delete successfully."
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
};

//User download
const getUserDownload = async (req, res) => {

    const { key } = req.query;

    let connection = await getConnection();
    try {
        await connection.beginTransaction();

        let getUserQuery = `SELECT u.*, d.department_name, r.role_name 
        FROM users u 
        LEFT JOIN departments d
        ON d.department_id = u.department_id
        LEFT JOIN roles r
        ON r.role_id = u.role_id
        WHERE 1 AND u.status = 1`;

        if (key) {
            const lowercaseKey = key.toLowerCase().trim();
            getUserQuery += ` AND (LOWER(name) LIKE '%${lowercaseKey}%')`;
        }

        getUserQuery += " ORDER BY u.created_at DESC";

        let result = await connection.query(getUserQuery);
        let user = result[0];

        if (user.length === 0) {
            return error422("No data found.", res);
        }


        user = user.map((item, index) => ({
            "Sr No": index + 1,
            "Create Date": item.cts,
            "User Name":item.user_name,
            "Email ID": item.email_id,
            "Phone No.": item.phone_number,
            "Role Name": item.role_name,
            "Department Name":item.department_name

            // "Status": item.status === 1 ? "activated" : "deactivated",
        }));

        // Create a new workbook
        const workbook = xlsx.utils.book_new();

        // Create a worksheet and add only required columns
        const worksheet = xlsx.utils.json_to_sheet(user);

        // Add the worksheet to the workbook
        xlsx.utils.book_append_sheet(workbook, worksheet, "UserInfo");

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

const getDBlocal = async (req, res) => {
  let connection;

  try {
    // 1️⃣ Create DB connection
    connection = await getConnection();
    await connection.beginTransaction();

    // 2️⃣ Database credentials
    const DB_NAME = 'tecstaq_helpdesk';
    const DB_USER = 'root';
    const DB_PASS = ''; // your MySQL password
    const DB_HOST = 'localhost';

    // 3️⃣ Absolute path to the SQL file
    const sqlFilePath = path.join(__dirname, '../../db.js'); // ✅ this is your SQL dump file

    if (!fs.existsSync(sqlFilePath)) {
      throw new Error(`SQL file not found at path: ${sqlFilePath}`);
    }
    // 4️⃣ Import SQL file
    const importer = new Importer({
      host: 'localhost',
      user: 'root',
      password: '', // your MySQL password if any
      database: 'tecstaq_helpdesk',
    });

    await importer.import(sqlFilePath);

    // 5️⃣ Create backup after import
    const backupFolder = path.join(__dirname, '../db');
    
    if (!fs.existsSync(backupFolder)) fs.mkdirSync(backupFolder, { recursive: true });

    const backupFilePath = path.join(
      backupFolder,
      `${DB_NAME}_backup_${new Date().toISOString().slice(0, 10)}.sql`
    );

    const mysqldumpPath = `"C:\\xampp\\mysql\\bin\\mysqldump.exe"`; // adjust if needed
    const dumpCommand = `${mysqldumpPath} -u ${DB_USER} ${
      DB_PASS ? `-p${DB_PASS}` : ''
    } ${DB_NAME} > "${backupFilePath}"`;

    await new Promise((resolve, reject) => {
      exec(dumpCommand, (error, stdout, stderr) => {
        if (error) return reject(stderr || error.message);
        resolve(stdout);
      });
    });


    // 6️⃣ Commit and respond
    await connection.commit();
    res.send(`✅ Database imported successfully and backup created at: ${backupFilePath}`);
  } catch (error) {
    // console.error('❌ Database import/backup failed:', error);
    if (connection) await connection.rollback();
    res.status(500).send(error.message);
  } finally {
    if (connection) connection.release();
  }
};

const getDB = async (req, res) => {
  let connection;

  try {
    // 1?? Create DB connection
    connection = await getConnection();
    await connection.beginTransaction();

    // 2?? Database credentials
    const DB_NAME = 'tecstaq_helpdesk';
    const DB_USER = 'root';
    const DB_PASS = 'Changeme@2025#';
    const DB_HOST = 'localhost';

    // 3?? Absolute path to the SQL file
    const sqlFilePath = path.join(__dirname, '../../db.js'); 

    if (!fs.existsSync(sqlFilePath)) {
      throw new Error(`SQL file not found at path: ${sqlFilePath}`);
    }


    // 4?? Import SQL file
    const importer = new Importer({
      host: DB_HOST,
      user: DB_USER,
      password: DB_PASS,
      database: DB_NAME
    });

    await importer.import(sqlFilePath);

    // 5?? Create backup after import
    const backupFolder = path.join(__dirname, '../backup/database');
    if (!fs.existsSync(backupFolder)) fs.mkdirSync(backupFolder, { recursive: true });

    const backupFilePath = path.join(
      backupFolder,
      `${DB_NAME}_backup_${new Date().toISOString().slice(0, 10)}.sql`
    );

    // ? For Linux use mysqldump directly
    const mysqldumpPath = `mysqldump`;
    const dumpCommand = `${mysqldumpPath} -h ${DB_HOST} -u ${DB_USER} ${DB_PASS ? `-p${DB_PASS}` : ''} ${DB_NAME} > "${backupFilePath}"`;

    await new Promise((resolve, reject) => {
      exec(dumpCommand, (error, stdout, stderr) => {
        if (error) return reject(stderr || error.message);
        resolve(stdout);
      });
    });

    // 6?? Commit and respond
    await connection.commit();
    res.send(`? Database imported successfully and backup created at: ${backupFilePath}`);
  } catch (error) {
    // console.error('? Database import/backup failed:', error);
    if (connection) await connection.rollback();
    res.status(500).send(error.message);
  } finally {
    if (connection) connection.release();
  }
};

//create sign up
const signUp = async (req, res) => {
  const user_name = req.body.user_name ? req.body.user_name.trim() : "";
  const email_id = req.body.email_id ? req.body.email_id.trim() : "";
  const phone_number = req.body.phone_number ? req.body.phone_number : null;
  const domain = req.body.domain ? req.body.domain.trim() : "";
  const role_id = 3;
//   const password = "123456";
  
  if (!user_name) {
    return error422("User name is required.", res);
  } else if (!email_id) {
    return error422("Email id is required.", res);
  } else if (!phone_number) {
    return error422("Phone number is required.", res);
  } else if (!domain) {
    return error422("Domain is required.", res);
  } 

    // Check if email_id exists
    const checkUserQuery = "SELECT * FROM signup WHERE LOWER(TRIM(email_id)) = ? AND status = 1";
    const checkUserResult = await pool.query(checkUserQuery, [email_id.toLowerCase()]);
    if (checkUserResult[0].length > 0) {
        return error422('Email id is already exists.', res);
    }
    
    // Attempt to obtain a database connection
    let connection = await getConnection();
    try {
        //Start the transaction
        await connection.beginTransaction();

        const domainCustomerQuery = ` SELECT * FROM customers WHERE LOWER(TRIM(domain)) = ?`;
        const domainCustomerResult = await connection.query(domainCustomerQuery, [domain.toLowerCase()]);
        
        const customerId = domainCustomerResult[0][0].customer_id;
        
        const insertUserQuery = `INSERT INTO users (user_name, email_id, phone_number, role_id) VALUES (?, ?, ?, ?)`;
        const insertUserValues = [ user_name, email_id, phone_number, role_id ];
        const insertuserResult = await connection.query(insertUserQuery, insertUserValues);
        const user_id = insertuserResult[0].insertId;
        
        //insert into sign up
        const insertSignUpQuery = `INSERT INTO signup (user_name, email_id, phone_number, domain, customer_id, user_id) VALUES (?, ?, ?, ?, ?, ?)`;
        const insertSignUpValues = [ user_name, email_id, phone_number, domain, customerId, user_id ];
        const insertSignUpResult = await connection.query(insertSignUpQuery, insertSignUpValues);
        
        let length = 8,
        charset ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",
        password = "";
        for (let i = 0, n = charset.length; i < length; ++i) {
            password += charset.charAt(Math.floor(Math.random() * n));
        }
        const hash = await bcrypt.hash(password, 10); // Hash the password using bcrypt

        //insert into Untitled
        const insertUntitledQuery = "INSERT INTO untitled (user_id, extenstions) VALUES (?,?)";
        const insertUntitledValues = [user_id, hash];
        const untitledResult = await connection.query(insertUntitledQuery, insertUntitledValues)

        //commit the transation
        await connection.commit();

         try {
        const message = `
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <title>Welcome to test</title>
          <style>
              div{
              font-family: Arial, sans-serif; 
               margin: 0px;
                padding: 0px;
                color:black;
              }
          </style>
        </head>
        <body>
        <div>
        <h2 style="text-transform: capitalize;">Hi ${user_name},</h2>
        <h3>Welcome to Tecstaq!</h3>

        <p>Your account has been successfully created. Here are your login details:</p>
        <p>Email: ${email_id}</p>
        <p>Temporary Password: ${password}</P>
        <p>You can log in using the following link:
          <a href="https://support.tecstaq.com/">https://support.tecstaq.com/</a></p>
          <p>For security reasons, please change your password after your first login.</p>
          <p>If you didn’t request this account or believe this was created in error, please contact our support team at support@tecstaq.com.</p>
          <p>Thank you,</p>
          <p><strong>Tecstaq Support</strong></p>

        </div>
        </body>
        </html>`;

        // Prepare the email message options.
        const mailOptions = {
            from: "support@tecstaq.com", // Sender address from environment variables.
            to: `${email_id}`, // Recipient's name and email address."sushantsjamdade@gmail.com",
            bcc: ["ushamyadav777@gmail.com"],
            subject: "Welcome to Tecstaq HelpDesk Support! Your Account Has Been Created", // Subject line.
            html: message,
        };
        await transporter.sendMail(mailOptions);

        return res.status(200).json({
            status:200,
            message:"Signup successfully AND Check Mail."
        })
    } catch (emailError) {
      return res.status(200).json({
        status: 200,
        message: "Signup successfully, but failed to send email.",
      });
    }
    } catch (error) {
        await connection.rollback();
        return error500(error, res);
    } finally {
        await connection.release();
    }
};

//check domain
const checkDomain = async (req, res) => {
    const domain = req.body.domain ? req.body.domain.trim() : ""; // Extract and trim domain from request body
    if (!domain) {
        return error422("Domain required.", res);
    }

    let connection = await getConnection();
    try {
        //Start the transaction
        await connection.beginTransaction();

        // Check if domain exists
        const query = 'SELECT * FROM customers WHERE TRIM(LOWER(domain)) = ?';
        const result = await connection.query(query, [domain.toLowerCase()]);
        if (result[0].length === 0) {
            return error422('Domain is not found.', res);
        }
        
        return res.status(200).json({
            status: 200,
            message: "Domain Exists",
            email_id: true,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release();
    }
};

//send otp sign up
const sendOtpSignUp = async (req, res) => {
const email_id = req.body.email_id ? req.body.email_id.trim() : "";
  const domain = req.body.domain ? req.body.domain.trim().toLowerCase() : "";

  if (!email_id) {
    return error422("Email is required.", res);
  }

//    // Check if email_id exists
//     const query = 'SELECT * FROM signup WHERE TRIM(LOWER(email_id)) = ?';
//     const result = await pool.query(query, [email_id.toLowerCase()]);
//     if (result[0].length === 0) {
//         return error422('Email id is not found.', res);
//     }

//     let user_name = result[0][0].user_name;

  // ✅ Extract domain part from email
  const emailDomain = email_id.split("@")[1]?.toLowerCase();

  if (!emailDomain) {
    return error422("Invalid email format.", res);
  }

  // ✅ Clean up domain (remove '@' if included)
  const cleanDomain = domain.startsWith("@")
    ? domain.substring(1).toLowerCase()
    : domain.toLowerCase();

  // ✅ Compare the two domains
  if (emailDomain !== cleanDomain) {
    return error422(`Email domain mismatch. Expected domain: ${emailDomain}`, res);
  }
    let connection = await getConnection();
    try {
        //Start the transaction
        await connection.beginTransaction();
        const otp = Math.floor(100000 + Math.random() * 900000);
        const deleteQuery = `DELETE FROM otp WHERE cts < NOW() - INTERVAL 5 MINUTE`;
        const deleteResult = await connection.query(deleteQuery);

        const otpQuery = "INSERT INTO otp (otp, email_id) VALUES (?, ?)";
        const otpResult = await connection.query(otpQuery, [otp, email_id])

        const message = `
      <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <title>Welcome to Tecstaq-helddesk.com</title>
          <style>
              div{
              font-family: Arial, sans-serif; 
               margin: 0px;
                padding: 0px;
                color:black;
              }
          </style>
        </head>
        <body>
        <div>
       <h2 style="text-transform: capitalize;">Hello ,</h2>
        <p>It seems you requested a password reset for your Tecstaq-helddesk account. Use the OTP below to complete the process and regain access to your account.</p>
        <h3>Your OTP: <strong>${otp}</strong></h3>
        <p>For security, this OTP will expire in 5 minutes. Please don’t share this code with anyone. If you didn’t request a password reset, please ignore this email or reach out to our support team for assistance.</p>
        <p>Best regards,<br>The Tecstaq-helddesk Team</p>
         </div>
        </body>
        </html>`;

        // Validate required fields.
        if (!email_id || !message) {
            return res
                .status(400)
                .json({ status: "error", message: "Missing required fields" });
        }

        // Prepare the email message options.
        const mailOptions = {
            from: "support@tecstaq.com", // Sender address from environment variables.
            to: `${email_id}`, // Recipient's name and email address.
            //    replyTo: "rohitlandage86@gmail.com", // Sets the email address for recipient responses.
            //  bcc: "sushantsjamdade@gmail.com",
            // bcc: "sushantsjamdade@gmail.com",
            subject: "Reset Your Tecstaq-helpdesk Password – OTP Inside", // Subject line.
            html: message,
        };

        // Send email 
        await transporter.sendMail(mailOptions);

        return res.status(200).json({
            status: 200,
            message: `OTP sent successfully to ${email_id}.`,

        })
    } catch (error) {
        return error500(error, res)
    } finally {
        if (connection) connection.release()
    }
}

// get Customer list...
const getCustomers = async (req, res) => {
    const { page, perPage, key } = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let getCustomerQuery = `SELECT c.* 
        FROM customers c 
        WHERE 1`;

        let countQuery = `SELECT COUNT(*) AS total 
        FROM customers c 
        WHERE 1`;

        if (key) {
            const lowercaseKey = key.toLowerCase().trim();
            if (lowercaseKey === "activated") {
                getCustomerQuery += ` AND status = 1`;
                countQuery += ` AND status = 1`;
            } else if (lowercaseKey === "deactivated") {
                getCustomerQuery += ` AND status = 0`;
                countQuery += ` AND status = 0`;
            } else {
                getCustomerQuery += ` AND (LOWER(c.customer_name) LIKE '%${lowercaseKey}%' || LOWER(c.company_name) LIKE '%${lowercaseKey}%' || LOWER(c.email_id) LIKE '%${lowercaseKey}%')`;
                countQuery += ` AND (LOWER(c.customer_name) LIKE '%${lowercaseKey}%' || LOWER(c.company_name) LIKE '%${lowercaseKey}%' || LOWER(c.email_id) LIKE '%${lowercaseKey}%')`;
            }
        }
        getCustomerQuery += " ORDER BY c.cts DESC";

        // Apply pagination if both page and perPage are provided
        let total = 0;
        if (page && perPage) {
            const totalResult = await connection.query(countQuery);
            total = parseInt(totalResult[0][0].total);

            const start = (page - 1) * perPage;
            getCustomerQuery += ` LIMIT ${perPage} OFFSET ${start}`;
        }

        const result = await connection.query(getCustomerQuery);
        const customer = result[0];

        // Commit the transaction
        await connection.commit();
        const data = {
            status: 200,
            message: "Customer retrieved successfully",
            data: customer
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

//Customer by id
const getCustomer = async (req, res) => {
    const customerId = parseInt(req.params.id);

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        const customerQuery = `SELECT c.*,u.role_id, u.department_id, r.role_name, d.department_name
        FROM customers c 
        LEFT JOIN users u ON u.user_id = c.user_id
        LEFT JOIN roles r ON r.role_id = u.role_id
        LEFT JOIN departments d ON d.department_id = u.department_id

        WHERE 1 AND c.customer_id = ? `;
        const customerResult = await connection.query(customerQuery, [customerId]);
        if (customerResult[0].length == 0) {
            return error422("Customer Not Found.", res);
        }
        const customer = customerResult[0][0];

        let serviceQuery = `SELECT cs.*,s.service_name FROM customer_service cs
            LEFT JOIN services s ON s.service_id = cs.service_id
            WHERE cs.customer_id = ?`
        let serviceResult = await connection.query(serviceQuery, [customerId]);
        customer['service'] = serviceResult[0];

        let agentQuery = `SELECT ca.*,c.customer_name, d.department_name,u.user_name FROM customer_agents ca
            LEFT JOIN customers c ON c.customer_id = ca.customer_id
            LEFT JOIN departments d ON d.department_id = ca.department_id
            LEFT JOIN users u ON u.user_id = ca.user_id
            WHERE ca.customer_id = ?`
        let agentResult = await connection.query(agentQuery, [customerId]);
        customer['agent'] = agentResult[0];

        return res.status(200).json({
            status: 200,
            message: "Customer Retrived Successfully",
            data: customer
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

// customer to Services
const getCustomerServicesWma = async (req, res) => {
     const { customer_id} = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let getCustomerServicesQuery = `SELECT cs.*, s.service_name
        FROM customer_service cs 
        LEFT JOIN services s ON cs.service_id = s.service_id
        WHERE 1 AND cs.status = 1 AND cs.customer_id = ?`;
       
        getCustomerServicesQuery += ` ORDER BY cs.cts`;
        const getCustomerServicesResult = await connection.query(getCustomerServicesQuery, [customer_id]);
        const customerService = getCustomerServicesResult[0];

        // Commit the transaction
        await connection.commit();

        return res.status(200).json({
            status: 200,
            message: "Customer Servide retrieved successfully.",
            data: customerService,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

// customer status change
const onStatusChangeCustomer = async (req, res) => {
    const customerId = parseInt(req.params.id);
    const status = parseInt(req.query.status); // Validate and parse the status parameter


    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        // Check if the customer exists
        const customerQuery = "SELECT * FROM customers WHERE customer_id = ? ";
        const customerResult = await connection.query(customerQuery, [customerId]);

        if (customerResult[0].length == 0) {
            return res.status(404).json({
                status: 404,
                message: "Customer not found.",
            });
        }

        // Validate the status parameter
        if (status !== 0 && status !== 1) {
            return res.status(400).json({
                status: 400,
                message: "Invalid status value. Status must be 0 (inactive) or 1 (active).",
            });
        }

        // Soft update the customer
        const updateQuery = `
            UPDATE customers
            SET status = ?
            WHERE customer_id = ?
        `;

        await connection.query(updateQuery, [status, customerId]);

        const statusMessage = status === 1 ? "activated" : "deactivated";
        // Commit the transaction
        await connection.commit();
        return res.status(200).json({
            status: 200,
            message: `Customer ${statusMessage} successfully.`,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
};

//tech under Company active
const getTechCompanyWma = async (req, res) => {
     const { user_id, customer_id} = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

        let getTechCompanyQuery = `SELECT DISTINCT(ca.customer_id),ca.user_id, c.company_name, u.user_name
        FROM customer_agents ca
        LEFT JOIN customers c ON c.customer_id = ca.customer_id
        LEFT JOIN users u ON u.user_id = ca.user_id
        WHERE 1 AND ca.status = 1 `;
        if (user_id){
            getTechCompanyQuery += ` AND ca.user_id = ${user_id} `;
        }
        if (customer_id){
            getTechCompanyQuery += ` AND ca.customer_id = ${customer_id} `;
        }
        getTechCompanyQuery += ` ORDER BY ca.cts`;
        const getTechCompanyResult = await connection.query(getTechCompanyQuery);
        const techCompany = getTechCompanyResult[0];

        // Commit the transaction
        await connection.commit();

        return res.status(200).json({
            status: 200,
            message: "Company retrieved successfully.",
            data: techCompany,
        });
    } catch (error) {
        return error500(error, res);
    } finally {
        if (connection) connection.release()
    }
}

//Customer download
const getCustomerDownload = async (req, res) => {

    const { key } = req.query;

    let connection = await getConnection();
    try {
        await connection.beginTransaction();

        let getCustomerQuery = `SELECT c.*
        FROM customers c
        WHERE 1 AND c.status = 1`;

        if (key) {
            const lowercaseKey = key.toLowerCase().trim();
            getCustomerQuery += ` AND (LOWER(customer_name) LIKE '%${lowercaseKey}%')`;
        }

        getCustomerQuery += " ORDER BY c.cts DESC";

        let result = await connection.query(getCustomerQuery);
        let customer = result[0];

        if (customer.length === 0) {
            return error422("No data found.", res);
        }


        customer = customer.map((item, index) => ({
            "Sr No": index + 1,
            "Create Date": item.cts,
            "Customer Name":item.customer_name,
            "Company Name":item.company_name,
            "Email ID": item.email_id,
            "Phone No.": item.phone_number,
            "Domain": item.domain

            // "Status": item.status === 1 ? "activated" : "deactivated",
        }));

        // Create a new workbook
        const workbook = xlsx.utils.book_new();

        // Create a worksheet and add only required columns
        const worksheet = xlsx.utils.json_to_sheet(customer);

        // Add the worksheet to the workbook
        xlsx.utils.book_append_sheet(workbook, worksheet, "CustomerInfo");

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

// Logout handler (optional)
const logout = async (req, res) => {
    try {
        const { user_id, session_id } = req.body; // or decode from JWT
        await logUserActivity({ user_id, session_id, status: "logout" });

        return res.status(200).json({
            status: 200,
            message: "Logout successful"
        });
    } catch (err) {
        console.error("Logout error:", err);
        res.status(500).json({ message: "Internal server error" });
    }
};


// get log list...
const getLog = async (req, res) => {
    const { page, perPage, key, user_id, customer_id, fromDate, toDate } = req.query;

    // attempt to obtain a database connection
    let connection = await getConnection();

    try {

        //start a transaction
        await connection.beginTransaction();

//         let getLogQuery = `SELECT 
//         ual.*,
//         u.user_name,
//         COALESCE(c.company_name, c2.company_name) AS company_name
//         FROM user_activity_log ual
//         LEFT JOIN users u ON u.user_id = ual.user_id
//         LEFT JOIN customers c ON c.user_id = ual.user_id
//         LEFT JOIN customer_agents ca ON ca.user_id = ual.user_id
//         LEFT JOIN customers c2 ON c2.customer_id = ca.customer_id
//         LEFT JOIN signup s  ON s.customer_id = ca.customer_id  
// `;
         
        let getLogQuery = `SELECT ual.*, c.company_name, u.user_name FROM user_activity_log ual
        LEFT JOIN customers c ON c.customer_id = ual.customer_id
        LEFT JOIN users u ON u.user_id = ual.user_id
        WHERE 1 `;
        let countQuery = `SELECT COUNT(*) AS total FROM user_activity_log ual 
        LEFT JOIN customers c ON c.user_id = ual.user_id
        LEFT JOIN users u ON u.user_id = ual.user_id
        WHERE 1 `;

        if (key) {
            const lowercaseKey = key.toLowerCase().trim();
            if (lowercaseKey === "activated") {
                getLogQuery += ` AND status = 1`;
                countQuery += ` AND status = 1`;
            } else if (lowercaseKey === "deactivated") {
                getLogQuery += ` AND status = 0`;
                countQuery += ` AND status = 0`;
            } else {
                getLogQuery += ` AND (LOWER(u.user_name) LIKE '%${lowercaseKey}%' || LOWER(ual.session_id) LIKE '%${lowercaseKey}%')`;
                countQuery += ` AND (LOWER(u.user_name) LIKE '%${lowercaseKey}%' || LOWER(ual.session_id) LIKE '%${lowercaseKey}%')`;
            }
        }

        if (fromDate && toDate) {
            getLogQuery += ` AND DATE(ual.created_at) BETWEEN '${fromDate}' AND '${toDate}'`;
            countQuery += ` AND DATE(ual.created_at) BETWEEN '${fromDate}' AND '${toDate}'`;
        }
        if (user_id) {
            getLogQuery += ` AND ual.user_id = ${user_id} `;
            countQuery += ` AND ual.user_id = ${user_id}  `;
        }
        if (customer_id) {
            getLogQuery += ` AND c.customer_id = ${customer_id} `;
            countQuery += ` AND c.customer_id = ${customer_id}  `;
        }

        // if (user_id) {
        //     getUserQuery += ` AND u.user_id = ${user_id} `;
        //     countQuery += ` AND u.user_id = ${user_id}  `;
        // }
        getLogQuery += " GROUP BY ual.log_id";
        getLogQuery += " ORDER BY ual.created_at DESC";

        // Apply pagination if both page and perPage are provided
        let total = 0;
        if (page && perPage) {
            const totalResult = await connection.query(countQuery);
            total = parseInt(totalResult[0][0].total);

            const start = (page - 1) * perPage;
            getLogQuery += ` LIMIT ${perPage} OFFSET ${start}`;
        }

        const result = await connection.query(getLogQuery);
        const log = result[0];

        // Commit the transaction
        await connection.commit();
        const data = {
            status: 200,
            message: "Log retrieved successfully",
            data: log,
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
module.exports = {
  createUser,
  login,
  getUsers,
  getUserWma,
  getCustomersWma,
  getTechnicianWma,
  getUser,
  updateUser,
  onStatusChange,
  onChangePassword,
  sendOtp,
  verifyOtp,
  checkEmailId,
  forgotPassword,
  sendOtpIfEmailIdNotExists,
  deleteTechnician,
  getUserDownload,
  getDB,
  signUp,
  checkDomain,
  sendOtpSignUp,
  getCustomers,
  getCustomer,
  onStatusChangeCustomer,
  getCustomerServicesWma,
  getTechCompanyWma,
  getSignupWma,
  getCustomerDownload,
  logout,
  getLog
};