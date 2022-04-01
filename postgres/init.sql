CREATE DATABASE aviation;

CREATE TABLE flights ( 
  id SERIAL PRIMARY KEY,
  fligh_date DATE NOT NULL,
  departure_airport VARCHAR(50) DEFAULT NULL,
  departure_timezone VARCHAR(50)  DEFAULT NULL,
  departure_IATA VARCHAR(50)  DEFAULT NULL,
  arrival_airport VARCHAR(50)  DEFAULT NULL,
  arrival_timezone VARCHAR(50)  DEFAULT NULL,
  arrival_IATA VARCHAR(50)  DEFAULT NULL,
  airline_name VARCHAR(50)  DEFAULT NULL );
