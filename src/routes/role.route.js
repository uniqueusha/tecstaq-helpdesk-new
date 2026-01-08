const express = require('express')
const roleController = require('../controllers/role.controller')
const router = express.Router();
const checkAuth = require('../middleware/check.auth');
const accessHandle = require('../middleware/access-handle.auth');


//create role
router.post('/', checkAuth, accessHandle([5]),roleController.createRole);
//all list
router.get('/', checkAuth, accessHandle([5]),roleController.getAllRoles);
//download
router.get('/download', checkAuth, accessHandle([5]),roleController.getRoleDownload);
//active list  
router.get('/wma', checkAuth, accessHandle([1,2,3,5]),roleController.getRolesWma);
//by id
router.get('/:id', checkAuth, accessHandle([5]),roleController.getRole);
//update role
router.put('/:id', checkAuth, accessHandle([5]),roleController.updateRole);
//status change
router.patch('/:id', checkAuth, accessHandle([5]),roleController.onStatusChange)

module.exports = router