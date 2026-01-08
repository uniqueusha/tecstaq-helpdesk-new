const express = require('express')
const ticketController = require('../controllers/ticket.controller');
const router = express.Router();
const checkAuth = require('../middleware/check.auth');
const accessHandle = require('../middleware/access-handle.auth');


//get ticket
router.post('/', checkAuth, accessHandle([1,2,3,5]),ticketController.createTicket);
//list ticket
router.get('/', checkAuth, accessHandle([1,2,3,5]),ticketController.getAllTickets);
//report
router.get('/report', checkAuth, accessHandle([1,2,3,5]),ticketController.getAllTicketReports);
//report download
router.get('/dowmload-report', checkAuth, accessHandle([1,2,3,5]),ticketController.getTicketReportsDownload);
//status count
router.get('/status-count', ticketController.getTicketStatusCount);
//Month Wise Status Count
router.get('/month-wise-status-count', checkAuth, accessHandle([1,2,3,5]),ticketController.getMonthWiseStatusCount);
//todat open ticket
router.get('/today-open-ticket', checkAuth, accessHandle([1,2,3,5]),ticketController.getTodayOpenTicketList);
//doc download
router.get('/doc-download', checkAuth, accessHandle([1,2,3,5]),ticketController.getDocumentDownload);
//download
router.get('/download', checkAuth, accessHandle([1,2,3,5]),ticketController.getTicketDownload);
//status list
router.get('/status-list', checkAuth, accessHandle([1,2,3,5]),ticketController.getStatusList);
//by id
router.get('/:id',checkAuth, accessHandle([1,2,3,5]), ticketController.getTicket)
//update ticket
router.put('/:id', checkAuth, accessHandle([1,2,3,5]),checkAuth,ticketController.updateTicket);

module.exports = router;