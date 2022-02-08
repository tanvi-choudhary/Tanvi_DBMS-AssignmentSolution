Use TravelOnTheGo;

## Query 3 
##How many females and how many male passengers travelled for a minimum distance of 600 KM s
SELECT 		count(Passenger_name) as Number, 
			Gender
FROM 		Passanger 
WHERE 		Distance >= 600
GROUP BY 	Gender
;

##Query 4
##minimum ticket price for Sleeper Bus
SELECT 	MIN(Price) 
FROM 	Price
WHERE 	Bus_Type = 'Sleeper'
;

##Query 5
##passenger names whose names start with character 'S'
SELECT 		Passenger_name
FROM 		Passanger 
WHERE 		Passenger_name like 'S%'
;

##Query 6
##price charged for each passenger displaying Passenger name, Boarding City,
##Destination City, Bus_Type, Price in the output
SELECT 		PA.Passenger_name
			,PA.Boarding_City
            ,PA.Destination_City
            ,PR.Bus_Type
            ,PR.Price
FROM 		Passanger 	PA
INNER JOIN  Price		PR
ON 			PA.Bus_Type = PR.Bus_Type
AND 		PA.Distance = PR.Distance
;

##Query 7
##passenger name/s and his/her ticket price who travelled in the Sitting bus
##for a distance of 1000 KM s
SELECT 		PA.Passenger_name
			,PR.Price
FROM 		Passanger 	PA
INNER JOIN  Price		PR
ON 			PA.Bus_Type = PR.Bus_Type
AND 		PA.Distance = PR.Distance
AND 		PA.Bus_Type = 'Sitting'
AND 		PA.Distance = 1000
;

##Query 8
with cte1 as
(
SELECT 		Passenger_name
			,Distance
FROM 		Passanger 	
WHERE 		Passenger_name 		= 	'Pallavi'
AND 		Boarding_City 		IN ('Bengaluru','Panaji')
AND 		Destination_City 	IN ('Bengaluru','Panaji')
)
SELECT 		PA.Passenger_name
			,PR.Price
            ,PR.Bus_Type
FROM 		cte1 					PA
INNER JOIN  Price					PR
ON 			PA.Distance 		= 	PR.Distance
;

##Query 9
SELECT 		DISTINCT Distance
FROM 		Passanger 
ORDER BY    Distance desc
;

##Query 10
SELECT 		Passenger_name
			,Distance / (SELECT SUM(Distance) FROM Passanger) *100 as Percentage
FROM 		Passanger		
;

##Query 11
SELECT  distance
		,price
		,CASE 	WHEN price > 1000 
				THEN 'Expensive'
				WHEN price > 500
				THEN 'Average Cost'
				ELSE 'Cheap'
		END AS Categories
FROM Price
;
