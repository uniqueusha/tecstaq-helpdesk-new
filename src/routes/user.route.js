const express = require('express')
const userController = require('../controllers/user.controller')
const router = express.Router();
const checkAuth = require('../middleware/check.auth')

//create organization
router.post('/', userController.createUser);
//login  
router.post('/login', userController.login);
//logout
router.post('/logout', userController.logUserActivity);

//signup 
router.post('/signup', userController.signUp);
//domain check
router.post('/domain-check', userController.checkDomain);
//otp domain email same
router.post('/match', userController.sendOtpSignUp);
//all list
router.get('/', userController.getUsers);
//active list
router.get('/wma', userController.getUserWma);
//customer list
router.get('/customer', userController.getCustomers);
//download user
router.get('/download', userController.getUserDownload);
//customer download
router.get('/customer-download', userController.getCustomerDownload);
// router.get('/test-mail', userController.testMail);
//active customer agent
router.get('/customer-wma', userController.getCustomersWma);
//active technician
router.get('/technician-wma', userController.getTechnicianWma);
//Signup active
router.get('/signup-wma', userController.getSignupWma);
//customer under services
router.get('/customer-service', userController.getCustomerServicesWma);
//db download
router.get('/db-download', userController.getDB);
//technician company
router.get('/technician-company', userController.getTechCompanyWma);
//by id 
router.get('/:id', userController.getUser);
//customer by id
router.get('/customer/:id', userController.getCustomer);
//change password
router.put('/change-password',userController.onChangePassword);
//update user
router.put('/:id', userController.updateUser);
//status change
router.patch('/:id', userController.onStatusChange);
//status change customer
router.patch('/customer/:id', userController.onStatusChangeCustomer);

router.post('/send-otp',userController.sendOtp);
router.post('/verify-otp',userController.verifyOtp);
router.post('/check-emailid',userController.checkEmailId);
router.post('/forgot-Password',userController.forgotPassword);
router.post('/send-otp-if-email-not-exists',userController.sendOtpIfEmailIdNotExists);

//delete Technician
router.delete('/:id',userController.deleteTechnician);


module.exports = router