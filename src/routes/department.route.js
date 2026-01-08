const express = require('express')
const departmentController = require('../controllers/deparment.controller')
const router = express.Router();
const checkAuth = require('../middleware/check.auth')
const accessHandle = require('../middleware/access-handle.auth');

//create department
router.post('/', checkAuth, accessHandle([5]),departmentController.createDepartment);
//get department
router.get('/', checkAuth, accessHandle([5]),departmentController.getAllDepartment);
//download
router.get('/download', checkAuth, accessHandle([5]),departmentController.getDepartmentDownload);
//active list
router.get('/wma', checkAuth, accessHandle([1,2,3,5]),departmentController.getDepartmentsWma);
//get id by department
router.get('/:id', checkAuth, accessHandle([5]),departmentController.getDepartment);
//update department
router.put('/:id', checkAuth, accessHandle([5]),departmentController.updateDepartment);
//status change
router.patch('/:id', checkAuth, accessHandle([5]),departmentController.onStatusChange);


module.exports = router