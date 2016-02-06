var models = require('../models');
var connection = require('../db/index.js');

module.exports = {
  messages: {
    get: function(req, res) {
      connection.query('SELECT * FROM messages', function(err, rows, fields) {
        if (err) {
          throw err;
        }
        // set headers and such
        res.json({
          results: rows
        });
      });
    }, // a function which handles a get request for all messages
    post: function(req, res) {
      connection.query('INSERT INTO messages SET ?', req.body, function(err, res) {
        if (err) {
          throw err;
        }
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function(req, res) {
      console.log('hi');
    }, // a function which handles a get request for all users
    post: function(req, res) {} // a function which handles posting a user to the database
  }
};
