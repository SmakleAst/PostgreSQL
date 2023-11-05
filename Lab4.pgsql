/*Первое задание*/
ALTER TABLE ticket
ADD CHECK (carriage_number > 0)

/*Второе задание*/
ALTER TABLE intermediate_stations
ADD parking_time INTERVAL

/*Третье задание*/
CREATE TABLE person (
    ID BIGINT PRIMARY KEY,
    SURNAME CHARACTER(30),
    NAME CHARACTER(30),
    MIDDLE_NAME CHARACTER(30),
    PASSPORT_SERIES BIGINT,
    PASSPORT_NUMBER BIGINT,
    BIRTH_DATE DATE,
    SEX CHARACTER(30)
);

/*Четвертое задание*/
ALTER TABLE person 
ADD CONSTRAINT check_sex 
CHECK (sex IN ('M', 'F'));

/*Пятое задание*/
CREATE TABLE TICKET_PURCHASE (
    PURCHASE_ID BIGINT PRIMARY KEY,
    TICKET_ID BIGINT REFERENCES TICKET(ID),
    PERSON_ID BIGINT REFERENCES PERSON(ID),
    PURCHASE_DATE DATE,
    RETURN_DATE DATE DEFAULT NULL
);



/*Шестое задание*/
ALTER TABLE ticket
DROP COLUMN status;

/*Седьмое задание*/
CREATE TABLE BONUSES (
    BONUS_ID BIGINT PRIMARY KEY,
    SUM_OF_BONUSES BIGINT,
    NUMBER_OF_TRIPS BIGINT
);

/*Восьмое задание*/
ALTER TABLE Person
ADD Bonuses BIGINT REFERENCES BONUSES(BONUS_ID);

/*Девятое задание*/
ALTER TABLE ticket 
ALTER COLUMN carriage_type 
SET DEFAULT 1;

/*Десятое задание*/
ALTER TABLE intermediate_stations
ADD Distance FLOAT;

TABLE ticket;

INSERT INTO TICKET VALUES (26, 1, 1, 100, 5000, -1);