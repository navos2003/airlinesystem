--Retrieve the total number of passengers for each flight:

SELECT Flight_Number, SUM(Num_Passengers) AS total_Passengers
FROM FLIGHT
GROUP BY Flight_Number;

--Retrieve the flight numbers with more than 50 passengers:

SELECT Flight_Number, SUM(Num_Passengers) AS total_Passengers
FROM FLIGHT
GROUP BY Flight_Number
HAVING SUM(Num_Passengers) > 50;

--Retrieve the Flight Numbers of flights whose duration is greater than the average duration of all flights whose airport of departure is JFK. 

SELECT Flight_Number
FROM FLIGHT
WHERE Duration > ALL
(
SELECT AVG(Duration)
FROM FLIGHT
WHERE Airport_of_Departure = 'JFK'
);

--Retrieve passport numbers and ticket numbers of passengers who spent more than $1500 on flight tickets

SELECT PTicket_Number, PPassport_Number
FROM purchases
WHERE PTicket_Number IN (
    SELECT Ticket_Number
    FROM ticket
    WHERE Price > 1500
);

