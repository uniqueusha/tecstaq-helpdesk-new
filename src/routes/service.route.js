const express = require('express')
const serviceController = require('../controllers/service.controller')
const router = express.Router();
const checkAuth = require('../middleware/check.auth');
const accessHandle = require('../middleware/access-handle.auth');


//create service
router.post('/', checkAuth, accessHandle([5]),serviceController.createServices);
//all list
router.get('/', checkAuth, accessHandle([5]),serviceController.getAllServices);
//download
router.get('/download', checkAuth, accessHandle([5]),serviceController.getServiceDownload);
//active list  
router.get('/wma', checkAuth, accessHandle([1,2,3,5]),serviceController.getServicesWma);
//by id
router.get('/:id', checkAuth, accessHandle([5]),serviceController.getService);
//update service
router.put('/:id', checkAuth, accessHandle([5]),serviceController.updateService);
//status change
router.patch('/:id', checkAuth, accessHandle([5]),serviceController.onStatusChange)

module.exports = router