const express = require('express')
const priorityController = require('../controllers/priority.controller')
const router = express.Router();
const checkAuth = require('../middleware/check.auth');
const accessHandle = require('../middleware/access-handle.auth');


router.post('/', checkAuth, accessHandle([5]),priorityController.addPriority);
//all list
router.get('/', checkAuth, accessHandle([5]),priorityController.getAllPriorities);
//active list  
router.get('/wma', checkAuth, accessHandle([1,2,3,5]),priorityController.getPriorityWma);
//download
router.get('/download', checkAuth, accessHandle([5]),priorityController.getPriorityDownload);
//get list by id
router.get('/:id', checkAuth, accessHandle([5]),priorityController.getPriority);
// update priority
router.put('/:id', checkAuth, accessHandle([5]),priorityController.updatePriority);
//update status
router.patch('/:id', checkAuth, accessHandle([5]),priorityController.onStatusChange);


module.exports = router