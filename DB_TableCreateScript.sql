CREATE DATABASE TravelOnTheGo;

Use TravelOnTheGo;

CREATE TABLE IF NOT EXISTS Passanger
 (
 Passenger_name 	VARCHAR(50)
,Category			VARCHAR(10)
,Gender				VARCHAR(1)
,Boarding_City 		VARCHAR(50)
,Destination_City 	VARCHAR(50)
,Distance 			INT
,Bus_Type 			VARCHAR(50)
 );
 
 CREATE TABLE IF NOT EXISTS Price
 (
 Bus_Type 	varchar(50)
 ,Distance 	int 
 ,Price 		int
 );
