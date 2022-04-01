CREATE DATABASE demo;
USE demo;

CREATE TABLE users (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  description LONGTEXT
);

INSERT INTO users
VALUES (DEFAULT, "Adam", "adam@niepodam.pl", null),
       (DEFAULT, "Basia", "basia@niepodam.pl", null);
       
       
       
CREATE TABLE informations (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fonction VARCHAR(255) NOT NULL,
  entreprise VARCHAR(255) NOT NULL,
  description LONGTEXT
);       

INSERT INTO informations
VALUES (DEFAULT, "Analyste", "adam@niepodam.pl", null),
       (DEFAULT, "Dev", "basia@niepodam.pl", null);