DROP DATABASE chat;
CREATE DATABASE chat;

USE chat;

-- CREATE TABLE users (
--   ID int AUTO_INCREMENT,
--   Name varchar(40),
--   PRIMARY KEY(ID)
-- );

-- CREATE TABLE rooms (
--   ID int AUTO_INCREMENT,
--   Name varchar(40),
--   PRIMARY KEY(ID)
-- );

CREATE TABLE messages (
  ID int AUTO_INCREMENT,
  text varchar(140),
  username varchar(40),
  Timestamp timestamp,
  roomname varchar(40),
  PRIMARY KEY(ID)
  -- FOREIGN KEY(UserID) REFERENCES users(ID),
  -- FOREIGN KEY(RoomID) REFERENCES rooms(ID) 
);

INSERT INTO messages (text, username, roomname) VALUES ('Hi', 'Bob', 'lobby');

CREATE TABLE users (
  ID int AUTO_INCREMENT,
  username varchar(40),
  Timestamp timestamp,
  PRIMARY KEY(ID)
);
-- CREATE TABLE users_rooms (
--   UserID int,
--   RoomID int,
--   FOREIGN KEY(UserID) REFERENCES users(ID),
--   FOREIGN KEY(RoomID) REFERENCES rooms(ID) 
-- );

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

