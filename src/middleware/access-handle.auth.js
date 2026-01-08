
const accessHandle = (allowedRoles = []) => {
    return (req, res, next) => {
        const user = req.companyData;

        // user data missing → token invalid OR checkAuth not used
        if (!user) {
            return  res.status(422).json({
                status:422,
                message:'Unauthorized – Missing companyData.'
            })
        }

        const roleId = user.department_id;

        // If allowedRoles array has roles → check access
        if (allowedRoles.length > 0 && !allowedRoles.includes(roleId)) {
            return  res.status(422).json({
                status:422,
                message:"Access Denied – You don't have permission to access this resource."
            })
        }
        
        next();
    };
};

module.exports = accessHandle;
