const sanitizeHtml = require('sanitize-html');

function sanitizeObject(obj) {
  if (!obj) return;

  for (const key in obj) {
    if (typeof obj[key] === 'string') {
      obj[key] = sanitizeHtml(obj[key], {
        allowedTags: [],
        allowedAttributes: {}
      });
    } else if (typeof obj[key] === 'object') {
      sanitizeObject(obj[key]);
    }
  }
}

module.exports = (req, res, next) => {
  sanitizeObject(req.body); 
  sanitizeObject(req.query);
  sanitizeObject(req.params);
  next();
};
