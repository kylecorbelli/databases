var models = require('../models');
var connection = require('../db/index.js');
var orm = require('../../orm-resources/orm');

module.exports = {
  messages: {
    get: function(req, res) {
      orm.handleGet('messages', function(result) {
        res.json(result);
      });
    }, // a function which handles a get request for all messages
    post: function(req, res) {
      orm.handlePost(orm.Message, req.body);
      res.json({});
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function(req, res) {
      orm.handleGet('users', function(result) {
        res.json(result);
      });
    }, // a function which handles a get request for all users
    post: function(req, res) {
      orm.handlePost(orm.User, req.body);
      res.json({});
    } // a function which handles posting a user to the database
  }
};
