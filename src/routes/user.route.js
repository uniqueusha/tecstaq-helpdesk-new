const express = require('express')
const userController = require('../controllers/user.controller')
const router = express.Router();
const checkAuth = require('../middleware/check.auth')
const accessHandle = require('../middleware/access-handle.auth');
const rateLimit = require("express-rate-limit");

// const loginRateLimiter = rateLimit({
//   windowMs: 5 * 60 * 1000,       // 5 minutes
//   max: 3,    
//   skipSuccessfulRequests: true,   
//   skipFailedRequests: false,     
//   message: {
//     status: 429,
//     message: "Too many login attempts. Please try again later."
//   },
//   standardHeaders: true,
//   legacyHeaders: false,
// }); 
//create organization
router.post('/', checkAuth, accessHandle([1,5]),userController.createUser);
//login  
router.post('/login', userController.login);
//logout
router.post('/logout', userController.logout);

//signup 
router.post('/signup', userController.signUp);
//domain check
router.post('/domain-check', userController.checkDomain);
//otp domain email same
router.post('/match', userController.sendOtpSignUp);
//all list
router.get('/', checkAuth, accessHandle([1,5]),userController.getUsers);
//active list
router.get('/wma', checkAuth, accessHandle([1,2,3,5]),userController.getUserWma);
//log
router.get('/log-report', checkAuth, accessHandle([1,2,3,5]),userController.getLog);
//customer list
router.get('/customer', checkAuth, accessHandle([1,5]),userController.getCustomers);
//download user
router.get('/download', checkAuth, accessHandle([1,5]),userController.getUserDownload);
//customer download
router.get('/customer-download', checkAuth, accessHandle([1,5]),userController.getCustomerDownload);
// router.get('/test-mail', userController.testMail);
//active customer agent
router.get('/customer-wma', checkAuth, accessHandle([1,2,3,5]),userController.getCustomersWma);
//active technician
router.get('/technician-wma', checkAuth, accessHandle([1,2,3,5]),userController.getTechnicianWma);
//Signup active
router.get('/signup-wma', checkAuth, accessHandle([1,2,3,5]),userController.getSignupWma);
//customer under services
router.get('/customer-service', checkAuth, accessHandle([1,2,3,5]),userController.getCustomerServicesWma);
//db download
router.get('/db-download', userController.getDB);
//technician company
router.get('/technician-company', checkAuth, accessHandle([1,2,3,5]),userController.getTechCompanyWma);
//by id 
router.get('/:id', checkAuth, accessHandle([1,5]),userController.getUser);
//customer by id
router.get('/customer/:id', checkAuth, accessHandle([1,5]),userController.getCustomer);
//change password
router.put('/change-password',userController.onChangePassword);
//update user
router.put('/:id', checkAuth, accessHandle([1,5]),userController.updateUser);
//update customer
router.put('/customer/:id', checkAuth, accessHandle([1,5]),userController.updateCustomer);
//status change
router.patch('/:id', checkAuth, accessHandle([1,5]),userController.onStatusChange);
//status change customer
router.patch('/customer/:id', checkAuth, accessHandle([1,5]),userController.onStatusChangeCustomer);

router.post('/send-otp',userController.sendOtp);
router.post('/verify-otp',userController.verifyOtp);
router.post('/check-emailid',userController.checkEmailId);
router.post('/forgot-Password',userController.forgotPassword);
router.post('/send-otp-if-email-not-exists',userController.sendOtpIfEmailIdNotExists);

//delete Technician
router.delete('/:id',checkAuth, accessHandle([1,5]),userController.deleteTechnician);


module.exports = router