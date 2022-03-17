CREATE DATABASE chat;

USE chat;

CREATE TABLE users (id INTEGER PRIMARY KEY, username TEXT NOT NULL);

CREATE TABLE messages (id INTEGER PRIMARY KEY, textBody TEXT NOT NULL, userid INTEGER NOT NULL, FOREIGN KEY(userid) REFERENCES users(id));


CREATE TABLE room (id INTEGER PRIMARY KEY, roomName TEXT NOT NULL);

CREATE TABLE usersRoom (id INTEGER PRIMARY KEY, roomId INTEGER NOT NULL, userId INTEGER NOT NULL, FOREIGN KEY(roomId) REFERENCES room(id), FOREIGN KEY(userId) REFERENCES users(id));

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

