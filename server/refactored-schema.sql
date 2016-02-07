DROP DATABASE chat;
CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id smallint NOT NULL AUTO_INCREMENT,
  username varchar NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE rooms (
  id smallint NOT NULL AUTO_INCREMENT,
  roomname varchar NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE messages (
  id smallint NOT NULL AUTO_INCREMENT,
  text varchar NOT NULL,
  userId smallint NOT NULL,
  roomId smallint NOT NULL,
  createdAt timestamp,
  PRIMARY KEY(id),
  FOREIGN KEY(userId) REFERENCES users(id),
  FOREIGN KEY(roomId) REFERENCES users(id)
);


INSERT IF NOT EXISTS INTO users (username) VALUES ( req.body.username )
INSERT INTO rooms (roomname) VALUES ( req.body.roomname )
INSERT INTO messages (text, userId, roomId) VALUES (req.body.text,(select id from users where username=req.body.username), (select id from rooms where roomname=req.body.roomname)); 