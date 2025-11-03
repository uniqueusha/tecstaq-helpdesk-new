const express = require('express')
const serviceController = require('../controllers/service.controller')
const router = express.Router();
const checkAuth = require('../middleware/check.auth')

//create service
router.post('/', serviceController.createServices);
//all list
router.get('/', serviceController.getAllServices);
//download
router.get('/download', serviceController.getServiceDownload);
//active list  
router.get('/wma', serviceController.getServicesWma);
//by id
router.get('/:id', serviceController.getService);
//update service
router.put('/:id', serviceController.updateService);
//status change
router.patch('/:id', serviceController.onStatusChange)

module.exports = router