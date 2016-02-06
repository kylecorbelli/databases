/* You'll need to
 * npm install sequelize
 * before running this example. Documentation is at http://sequelizejs.com/
 */

var Sequelize = require('sequelize');
var db = new Sequelize('chat', 'root', 'p');
/* TODO this constructor takes the database name, username, then password.
 * Modify the arguments if you need to */

/* first define the data structure by giving property names and datatypes
 * See http://sequelizejs.com for other datatypes you can use besides STRING. */
var User = db.define('users', {
  id: Sequelize.INTEGER,
  username: Sequelize.STRING
});

var Message = db.define('messages', {
  id: Sequelize.INTEGER,
  username: Sequelize.STRING,
  text: Sequelize.STRING,
  roomname: Sequelize.STRING
});

/* .sync() makes Sequelize create the database table for us if it doesn't
 *  exist already: */
module.exports.handleUser = function(body) {
  User.sync().then(function() {
    User.build(body).save().then(function() {
      console.log('Added user');
    });
  });
};

module.exports.handleMessage = function(body) {
  Message.sync().then(function() {
    Message.build(body).save().then(function() {
      console.log('Added user');
    });
  });
};
