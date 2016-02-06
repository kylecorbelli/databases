var db = require('../db');

module.exports = {
  messages: {
    get: function() {}, // a function which produces all the messages
    post: function() {} // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function() {}, // a function which produces all users
    post: function() {} // a function which can be used to insert a user into the database
  }
};
