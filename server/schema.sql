CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  ID int AUTO_INCREMENT,
  Name varchar(40),
  PRIMARY KEY(ID)
);

CREATE TABLE rooms (
  ID int AUTO_INCREMENT,
  Name varchar(40),
  PRIMARY KEY(ID)
);

CREATE TABLE messages (
  ID int AUTO_INCREMENT,
  Text varchar(140),
  UserID int,
  Timestamp timestamp,
  RoomID int,
  PRIMARY KEY(ID),
  FOREIGN KEY(UserID) REFERENCES users(ID),
  FOREIGN KEY(RoomID) REFERENCES rooms(ID) 
);


CREATE TABLE users_rooms (
  UserID int,
  RoomID int,
  FOREIGN KEY(UserID) REFERENCES users(ID),
  FOREIGN KEY(RoomID) REFERENCES rooms(ID) 
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

