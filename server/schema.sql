DROP DATABASE chat;
CREATE DATABASE chat;

USE chat;

-- CREATE TABLE rooms (
--   ID int AUTO_INCREMENT,
--   Name varchar(40),
--   PRIMARY KEY(ID)
-- );

CREATE TABLE messages (
  id int NOT NULL AUTO_INCREMENT,
  text varchar(140) NOT NULL,
  username char(40),
  createdAt timestamp,
  updatedAt timestamp,
  roomname char(40),
  PRIMARY KEY(ID)
  -- FOREIGN KEY(UserID) REFERENCES users(ID),
  -- FOREIGN KEY(RoomID) REFERENCES rooms(ID) 
);

-- TEST MESSAGE
INSERT INTO messages (text, username, roomname) VALUES ('Hi', 'Bob', 'lobby');

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  username char(40),
  createdAt timestamp,
  updatedAt timestamp,
  PRIMARY KEY(ID)
);
-- CREATE TABLE users_rooms (
--   UserID int,
--   RoomID int,
--   FOREIGN KEY(UserID) REFERENCES users(ID),
--   FOREIGN KEY(RoomID) REFERENCES rooms(ID) 
-- );

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

