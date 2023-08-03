-- Dropping tables
DROP TABLE PAYS_FOR;
DROP TABLE PURCHASES;
DROP TABLE Phone_Number;
DROP TABLE TICKET;
DROP TABLE PASSENGER;
DROP TABLE PAYMENT;
DROP TABLE ACCOMMODATIONS;
DROP TABLE FLIGHT;
DROP TABLE AIRPORT;

CREATE TABLE ACCOMMODATIONS
(
    Reservation_ID INT NOT NULL,
    Accomodation_Type VARCHAR(50),
    --CONSTRAINT pk_reserveid PRIMARY KEY(Reservation_ID)
    PRIMARY KEY(Reservation_ID)
);

CREATE TABLE FLIGHT
(
    Flight_Number INT NOT NULL,
    Airport_of_Departure VARCHAR(50),
    Num_Passengers INT,  
    Duration FLOAT NOT NULL,
    Airport_of_Arrival VARCHAR(50),
    Date_of_Departure DATE NOT NULL,
    PRIMARY KEY(Flight_Number)
);

CREATE TABLE AIRPORT
(
    Airport_Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    Zip_Code INT NOT NULL,
    Country VARCHAR(50),
    PRIMARY KEY(Airport_Name)
);

CREATE TABLE PASSENGER
(
    Passport_Number VARCHAR(10) NOT NULL,
    Date_of_Birth DATE NOT NULL,
    Gender VARCHAR(6) NOT NULL,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Bags_Checked_In INT NOT NULL,
    PRIMARY KEY(Passport_Number)
);

CREATE TABLE TICKET
(
    Ticket_Number INT NOT NULL PRIMARY KEY,
    Cabin_Class VARCHAR(50),
    Purchase_Date DATE NOT NULL,
    Price FLOAT,
    --Flight_ID INT NOT NULL,
    Seat_Number VARCHAR(4) NOT NULL
);

CREATE TABLE PAYMENT
(
    Card_Number BIGINT NOT NULL PRIMARY KEY,
    Payment_Date DATE NOT NULL,
    Billing_Address VARCHAR(50) NOT NULL,
    Payment_Method VARCHAR(50)
);

CREATE TABLE PAYS_FOR
(
    PTicket_Number INT NOT NULL,
    PCard_Number BIGINT NOT NULL,
    FOREIGN KEY(PTicket_Number) REFERENCES TICKET(Ticket_Number)
    ON DELETE CASCADE,
    FOREIGN KEY(PCard_Number) REFERENCES PAYMENT(Card_Number)
    ON DELETE CASCADE,
    PRIMARY KEY(PTicket_Number, PCard_Number)
);

CREATE TABLE PURCHASES
(
    PTicket_Number INT NOT NULL,
    PPassport_Number VARCHAR(10) NOT NULL,
    P_Seat_Number VARCHAR(6) NOT NULL,
    FOREIGN KEY(PTicket_Number) REFERENCES TICKET(Ticket_Number)
    ON DELETE CASCADE,
    FOREIGN KEY(PPassport_Number) REFERENCES PASSENGER(Passport_Number)
    ON DELETE CASCADE,
    PRIMARY KEY(PTicket_Number, PPassport_Number, P_Seat_Number)
);

CREATE TABLE Phone_Number
(
    Phone_Numbers INT NOT NULL,
    Passport_Numbers VARCHAR(20) NOT NULL,
    PSeat_Number VARCHAR(20) NOT NULL,
    PRIMARY KEY(Phone_Numbers, Passport_Numbers, PSeat_Number)
);
