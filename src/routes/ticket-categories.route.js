const express = require('express')
const ticketCategoryController = require('../controllers/ticket-categories.controller')
const router = express.Router();
const checkAuth = require('../middleware/check.auth');
const accessHandle = require('../middleware/access-handle.auth');



//get ticket category
router.post('/',checkAuth, accessHandle([5]),ticketCategoryController.createTicketCategories);
router.get('/', checkAuth, accessHandle([5]),ticketCategoryController.getAllTicketCategories);
router.get('/wma', checkAuth, accessHandle([1,2,3,5]),ticketCategoryController.getTicketCategoriesWma);
router.get('/download', checkAuth, accessHandle([5]),ticketCategoryController.getTicketCategoriesDownload);
router.get('/:id', checkAuth, accessHandle([5]),ticketCategoryController.getTicketCategories);
router.put('/:id', checkAuth, accessHandle([5]),ticketCategoryController.updateTicketCategories);
router.patch('/:id', checkAuth, accessHandle([5]),ticketCategoryController.onStatusChange);
module.exports = router