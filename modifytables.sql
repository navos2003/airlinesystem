--ACCOMMODATIONS
INSERT INTO ACCOMMODATIONS (Reservation_ID, Accomodation_Type)
VALUES(011, 'Indian Food');
INSERT INTO ACCOMMODATIONS (Reservation_ID, Accomodation_Type)
VALUES(022, 'American Food');
INSERT INTO ACCOMMODATIONS (Reservation_ID, Accomodation_Type)
VALUES(033, 'Spicy Food');
INSERT INTO ACCOMMODATIONS (Reservation_ID, Accomodation_Type)
VALUES(044, 'Medicine');
INSERT INTO ACCOMMODATIONS (Reservation_ID, Accomodation_Type)
VALUES(055, 'Switch Seats');
SELECT * FROM ACCOMMODATIONS;

--FLIGHT
INSERT INTO FLIGHT (Flight_Number, Airport_of_Departure, Num_Passengers, Duration, Airport_of_Arrival, Date_of_Departure)
VALUES (001, 'JFK', 150, 540, 'LAX', CONVERT(DATE, '2024-01-01', 120));
INSERT INTO FLIGHT (Flight_Number, Airport_of_Departure, Num_Passengers, Duration, Airport_of_Arrival, Date_of_Departure)
VALUES (002, 'LAX', 100, 560, 'JFK', CONVERT(DATE, '2024-03-01', 120));
INSERT INTO FLIGHT (Flight_Number, Airport_of_Departure, Num_Passengers, Duration, Airport_of_Arrival, Date_of_Departure)
VALUES (003, 'PHL', 90, 440, 'LAX', CONVERT(DATE, '2024-06-01', 120));
INSERT INTO FLIGHT (Flight_Number, Airport_of_Departure, Num_Passengers, Duration, Airport_of_Arrival, Date_of_Departure)
VALUES (004, 'EWR', 105, 90, 'IAD', CONVERT(DATE, '2024-09-01', 120));
INSERT INTO FLIGHT (Flight_Number, Airport_of_Departure, Num_Passengers, Duration, Airport_of_Arrival, Date_of_Departure)
VALUES (005, 'IAD', 120, 180, 'JFK', CONVERT(DATE, '2024-02-01', 120));
SELECT * FROM FLIGHT;

--AIRPORT
INSERT INTO AIRPORT(Airport_Name, City, State, Zip_Code, Country)
VALUES ('JFK','QUEENS', 'NY', 11106, 'USA');
INSERT INTO AIRPORT(Airport_Name, City, State, Zip_Code, Country)
VALUES ('PHL','PHILADELPHIA', 'PA', 19153, 'USA');
INSERT INTO AIRPORT(Airport_Name, City, State, Zip_Code, Country)
VALUES ('LAX','LOS ANGELES', 'CA', 90045, 'USA');
INSERT INTO AIRPORT(Airport_Name, City, State, Zip_Code, Country)
VALUES ('IAD', 'DULLES', 'VA', 20166, 'USA');
INSERT INTO AIRPORT(Airport_Name, City, State, Zip_Code, Country)
VALUES ('EWR','NEWARK', 'NJ', 07104, 'USA');
SELECT * FROM AIRPORT;

--PASSENGER
INSERT INTO PASSENGER (Passport_Number, Date_of_Birth, Gender, First_Name, Last_Name, Bags_Checked_In)
VALUES ('US12345678', CONVERT(DATE, '1990-01-01', 120), 'Male', 'John', 'Doe', 2);
INSERT INTO PASSENGER (Passport_Number, Date_of_Birth, Gender, First_Name, Last_Name, Bags_Checked_In)
VALUES ('UK23456789', CONVERT(DATE, '1985-07-20', 120), 'Female', 'Jane', 'Smith', 1);
INSERT INTO PASSENGER (Passport_Number, Date_of_Birth, Gender, First_Name, Last_Name, Bags_Checked_In)
VALUES ('JP34567890', CONVERT(DATE, '1995-03-15', 120), 'Male', 'Ken', 'Tanaka', 0);
INSERT INTO PASSENGER (Passport_Number, Date_of_Birth, Gender, First_Name, Last_Name, Bags_Checked_In)
VALUES ('CN45678901', CONVERT(DATE, '1988-11-11', 120), 'Female', 'Yan', 'Li', 2);
INSERT INTO PASSENGER (Passport_Number, Date_of_Birth, Gender, First_Name, Last_Name, Bags_Checked_In)
VALUES ('AU56789012', CONVERT(DATE, '1977-05-08', 120), 'Male', 'David', 'Johnson', 1);
SELECT * FROM PASSENGER;

--TICKET
INSERT INTO TICKET (Ticket_Number, Cabin_Class, Purchase_Date, Price, Seat_Number)
VALUES (1, 'Economy', CONVERT(DATE, '2023-03-27', 120), 500.00, '23A');
INSERT INTO TICKET (Ticket_Number, Cabin_Class, Purchase_Date, Price, Seat_Number)
VALUES (2, 'Business', CONVERT(DATE, '2023-03-28', 120), 1500.00, '10D');
INSERT INTO TICKET (Ticket_Number, Cabin_Class, Purchase_Date, Price, Seat_Number)
VALUES (3, 'First', CONVERT(DATE, '2023-03-29', 120), 2500.00, '1A');
INSERT INTO TICKET (Ticket_Number, Cabin_Class, Purchase_Date, Price, Seat_Number)
VALUES (4, 'Economy', CONVERT(DATE, '2023-03-30', 120), 600.00, '34C');
INSERT INTO TICKET (Ticket_Number, Cabin_Class, Purchase_Date, Price, Seat_Number)
VALUES (5, 'Business', CONVERT(DATE, '2023-03-31', 120), 2000.00, '8A');
SELECT * FROM TICKET;

--PAYMENT 
INSERT INTO PAYMENT (Card_Number, Payment_Date, Billing_Address, Payment_Method)
VALUES ('1234567812345678', CONVERT(DATE, '2022-01-01', 120), '123 Main St, Anytown USA', 'Visa');
INSERT INTO PAYMENT (Card_Number, Payment_Date, Billing_Address, Payment_Method)
VALUES ('9876543298765432', CONVERT(DATE, '2022-01-02', 120), '456 Elm St, Anytown USA', 'Mastercard');
INSERT INTO PAYMENT (Card_Number, Payment_Date, Billing_Address, Payment_Method)
VALUES ('4567123445671234', CONVERT(DATE, '2022-01-03', 120), '789 Oak St, Anytown USA', 'Discover');
INSERT INTO PAYMENT (Card_Number, Payment_Date, Billing_Address, Payment_Method)
VALUES ('1111222233334444', CONVERT(DATE, '2022-01-04', 120), '111 Pine St, Anytown USA', 'American Express');
INSERT INTO PAYMENT (Card_Number, Payment_Date, Billing_Address, Payment_Method)
VALUES ('5555666677778888', CONVERT(DATE, '2022-01-05', 120), '555 Cedar St, Anytown USA', 'Visa');
SELECT * FROM PAYMENT;

--PAYS_FOR
INSERT INTO PAYS_FOR (PTicket_Number, PCard_Number)
VALUES(1, 1234567812345678);
INSERT INTO PAYS_FOR (PTicket_Number, PCard_Number)
VALUES(2, 9876543298765432);
INSERT INTO PAYS_FOR (PTicket_Number, PCard_Number)
VALUES(3, 4567123445671234);
INSERT INTO PAYS_FOR (PTicket_Number, PCard_Number)
VALUES(4, 1111222233334444);
INSERT INTO PAYS_FOR (PTicket_Number, PCard_Number)
VALUES(5, 5555666677778888);
SELECT * FROM PAYS_FOR;

--PURCHASES
INSERT INTO PURCHASES (PTicket_Number, PPassport_Number, P_Seat_Number)
VALUES (1, 'US12345678', '23A');
INSERT INTO PURCHASES (PTicket_Number, PPassport_Number, P_Seat_Number)
VALUES(2, 'UK23456789', '10D');
INSERT INTO PURCHASES (PTicket_Number, PPassport_Number, P_Seat_Number)
VALUES(3, 'JP34567890', '1A');
INSERT INTO PURCHASES (PTicket_Number, PPassport_Number, P_Seat_Number)
VALUES(4, 'CN45678901', '34C');
INSERT INTO PURCHASES (PTicket_Number, PPassport_Number, P_Seat_Number)
VALUES(5, 'AU56789012', '8A');
SELECT * FROM PURCHASES;

--PHONE_NUMBER
INSERT INTO Phone_Number (Phone_Numbers, Passport_Numbers,PSeat_Number)
VALUES (123-456-7890, 'US12345678','23A');
INSERT INTO Phone_Number (Phone_Numbers, Passport_Numbers, PSeat_Number)
VALUES(555-123-4567, 'UK23456789','10D');
INSERT INTO Phone_Number (Phone_Numbers, Passport_Numbers,PSeat_Number)
VALUES(987-654-3210, 'JP34567890', '1A');
INSERT INTO Phone_Number (Phone_Numbers, Passport_Numbers,PSeat_Number)
VALUES(123-789-4560, 'CN45678901', '34C');
INSERT INTO Phone_Number (Phone_Numbers, Passport_Numbers,PSeat_Number)
VALUES(456-789-1234, 'AU56789012', '8A');
SELECT * FROM Phone_Number;

-----------------------------------------------------------------------------

--ACCOMMODATIONS
UPDATE ACCOMMODATIONS
SET Accomodation_Type = 'Emotional Support Animal'
WHERE Reservation_ID = 011;
SELECT * FROM ACCOMMODATIONS;

DELETE FROM ACCOMMODATIONS
WHERE Reservation_ID = 011;
SELECT * FROM ACCOMMODATIONS;

--FLIGHT
UPDATE FLIGHT
SET Airport_of_Departure = 'EWR'
WHERE Flight_Number = 001;
SELECT * FROM FLIGHT;

DELETE FROM FLIGHT
WHERE Flight_Number = 001;
SELECT * FROM FLIGHT;

--AIRPORT
UPDATE AIRPORT
SET Zip_Code = 11430
WHERE Airport_name = 'JFK';
SELECT * FROM AIRPORT;

DELETE FROM AIRPORT
WHERE Airport_Name = 'JFK';
SELECT * FROM AIRPORT;

--PASSENGER
UPDATE PASSENGER
SET Bags_Checked_In = 3
WHERE Passport_Number = 'UK23456789';
SELECT * FROM PASSENGER;

DELETE FROM PASSENGER
WHERE Passport_Number = 'UK23456789';
SELECT * FROM PASSENGER;

--TICKET
UPDATE TICKET
SET Cabin_Class = 'First Class'
WHERE Ticket_Number = 1;
SELECT * FROM TICKET;

DELETE FROM TICKET
WHERE Ticket_Number = 1;
SELECT * FROM TICKET;

--PAYMENT
UPDATE PAYMENT
SET Billing_Address = '8974 Wakehurst Street, Hackettstown, NJ'
WHERE Card_Number = 4567123445671234;
SELECT * FROM PAYMENT;

DELETE FROM PAYMENT
WHERE Card_Number = 4567123445671234;
SELECT * FROM PAYMENT;

--PAYS_FOR
UPDATE PAYS_FOR
SET PTicket_Number = 4
WHERE PCard_Number = 9876543298765432;
SELECT * FROM PAYS_FOR;

DELETE FROM PAYS_FOR
WHERE PTicket_Number = 4 AND PCard_Number = 1111222233334444;
SELECT * FROM PAYS_FOR;

--PURCHASES
UPDATE PURCHASES
SET P_Seat_Number = '33C'
WHERE PTicket_Number = '3';
SELECT * FROM PURCHASES;

DELETE FROM PURCHASES 
WHERE PTicket_Number = 4 
AND PPassport_Number = 'CN45678901' 
AND P_Seat_Number = '34C';
SELECT * FROM PURCHASES;

--PHONE_NUMBER
UPDATE Phone_Number
SET PSeat_Number = '14D'
WHERE Passport_Numbers = 'US12345678';
SELECT * FROM Phone_Number;

DELETE FROM Phone_Number 
WHERE Phone_Numbers = 456-789-1234 
AND Passport_Numbers = 'AU56789012' 
AND PSeat_Number = '8A';
SELECT * FROM Phone_Number;


