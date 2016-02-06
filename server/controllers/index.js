var models = require('../models');
var connection = require('../db/index.js');
var orm = require('../../orm-resources/orm');

module.exports = {
  messages: {
    get: function(req, res) {
      connection.query('SELECT * FROM messages', function(err, rows, fields) {
        if (err) {
          throw err;
        }
        // set headers and such
        res.json(rows);
      });
    }, // a function which handles a get request for all messages
    post: function(req, res) {
      console.log('req.body', req.body);
      orm.handleMessage(req.body);
      res.json({});
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function(req, res) {
      connection.query('SELECT * FROM users', function(err, rows, fields) {
        if (err) {
          throw err;
        }
        // set headers and such
        res.json({
          results: rows
        });
      });
    }, // a function which handles a get request for all users
    post: function(req, res) {
      console.log('req.body', req.body);
      orm.handleUser(req.body);
      // connection.query('INSERT INTO users SET ?', req.body, function(err, res) {
      //   if (err) {
      //     throw err;
      //   }
      // });
      res.json({});
    } // a function which handles posting a user to the database
  }
};
