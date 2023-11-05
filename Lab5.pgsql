/*Создание таблиц*/
/*Районы*/
CREATE TABLE AREA (
    ID BIGINT PRIMARY KEY,
    NAME CHARACTER(30)
);

INSERT INTO AREA VALUES (1, 'Трусовский');
INSERT INTO AREA VALUES (2, 'Ленинский');
INSERT INTO AREA VALUES (3, 'Советский');
INSERT INTO AREA VALUES (4, 'Кировский');
INSERT INTO AREA VALUES (5, 'АЦКК');
INSERT INTO AREA VALUES (6, '6-Микрорайон');
INSERT INTO AREA VALUES (7, 'Стрелецкое');
INSERT INTO AREA VALUES (8, 'Бабайка');
INSERT INTO AREA VALUES (9, 'Завод Ленина');
INSERT INTO AREA VALUES (10, 'Мостстрой');

TABLE AREA;

/*Объект недвижимости*/
CREATE TABLE PROPERTY (
    ID BIGINT PRIMARY KEY,
    AREA_ID BIGINT REFERENCES AREA(ID),
    ADDRESS CHARACTER(30),
    FLOOR BIGINT,
    NUMBER_OF_ROOMS BIGINT,
    TYPE BIGINT,
    STATUS BIGINT,
    COST DOUBLE PRECISION,
    DESCRIPTION TEXT,
    SQUARE DOUBLE PRECISION,
    DATE_OF_ANNOUNCEMENT TIMESTAMP,
    CHECK (type IN ('1', '2')),
    CHECK (status IN ('0', '1'))
);

INSERT INTO PROPERTY
    VALUES (1, 1, 'Бумажников', 10, 3, 1, 1, 100000000, 'Элитная квартира в элитном районе', 200, '2023-10-11 20:00:00');
INSERT INTO PROPERTY
    VALUES (2, 2, 'Ленинский проспект 20', 5, 2, 1, 0, 3000000, 'Квартира центре города', 70, '2023-10-10 20:00:00');
INSERT INTO PROPERTY
    VALUES (3, 3, 'Ул. Джона Рида 41', 2, 1, 1, 1, 1000000, 'Квартира в Советском', 25, '2023-10-09 20:00:00');
INSERT INTO PROPERTY
    VALUES (4, 4, 'ул. Каховского 1А', 1, 3, 2, 1, 5000000, 'Дом у цирка', 90, '2023-10-08 20:00:00');
INSERT INTO PROPERTY
    VALUES (5, 5, 'Бумажников 20Б', 40, 5, 1, 1, 10000000000, 'Люкс квартира в люкс доме', 500, '2023-10-07 20:00:00');
INSERT INTO PROPERTY
    VALUES (6, 6, 'Магистральная, 30', 3, 1, 1, 0, 1000000, 'Уютная однушка у тц Декстер', 20, '2023-10-06 20:00:00');
INSERT INTO PROPERTY
    VALUES (7, 7, 'Юных Ленинцев, 14', 1, 2, 2, 0, 2000000, 'Домик в Стрелецком', 60, '2023-10-05 20:00:00');
INSERT INTO PROPERTY
    VALUES (8, 8, 'Энергетическая, 5 к1', 4, 1, 1, 1, 500000, 'Эконом вариант в районе Бабаевского', 18, '2023-10-04 20:00:00');
INSERT INTO PROPERTY
    VALUES (9, 9, 'Заводская площадь, 41', 5, 2, 1, 1, 3000000, 'Трешка в районе завода Ленина', 80, '2023-10-03 20:00:00');
INSERT INTO PROPERTY
    VALUES (10, 10, 'Дзержинского, 153', 1, 3, 2, 1, 1000000, 'Прострорный ддом у мостстроя', 100, '2023-10-02 20:00:00');
INSERT INTO PROPERTY
    VALUES (11, 1, 'Бумажниковб 3А', 1, 1, 1, 1, 5000000, 'Уютная студия в элитном районе', 18, '2023-10-01 20:00:00');
INSERT INTO PROPERTY
    VALUES (12, 1, 'Бумажников 20А', 10, 3, 1, 1, 50000000, 'Элитный район', 150, '2022-10-01 20:00:00');
INSERT INTO PROPERTY
    VALUES (13, 1, 'Бумажников 20', 11, 4, 1, 1, 70000000, 'Президентский район', 200, '2022-10-02 20:00:00');
INSERT INTO PROPERTY
    VALUES (14, 1, 'Бумажников 20Б', 9, 1, 1, 1, 20000000, 'Возможность прикоснуться к прекрасному', 60, '2023-10-20 20:00:00');
INSERT INTO PROPERTY
    VALUES (15, 1, 'Бумажников 20Б', 9, 1, 1, 1, 20000000, 'Возможность прикоснуться к прекрасному', 60, '2023-10-20 20:00:00');
INSERT INTO PROPERTY
    VALUES (16, 1, 'Бумажников 20Б', 9, 1, 1, 1, 20000000, 'Возможность прикоснуться к прекрасному', 60, '2022-10-20 20:00:00');


UPDATE property Set DATE_OF_ANNOUNCEMENT = '2022-10-11 20:00:00' WHERE (id = 1);

TABLE property;

/*Криетрии оценки*/
CREATE TABLE EVALUATION_CRITERIA (
    ID BIGINT PRIMARY KEY,
    NAME CHARACTER(30)
);

INSERT INTO EVALUATION_CRITERIA VALUES (1, 'Расположение');
INSERT INTO EVALUATION_CRITERIA VALUES (2, 'Качество постройки');
INSERT INTO EVALUATION_CRITERIA VALUES (3, 'Транспортная доступность');
INSERT INTO EVALUATION_CRITERIA VALUES (4, 'Обустройство района');

TABLE evaluation_criteria;

/*Оценки*/
CREATE TABLE ESTIMATES (
    ID BIGINT PRIMARY KEY,
    PROPERTY_ID BIGINT REFERENCES PROPERTY(ID),
    DATE_OF_ESTIMATE TIMESTAMP,
    EVALUATION_CRITERIA_ID BIGINT REFERENCES EVALUATION_CRITERIA(ID),
    ESTIMATE DOUBLE PRECISION
);

INSERT INTO ESTIMATES VALUES (1, 1, '2023-10-12 20:00:00', 1, 5);
INSERT INTO ESTIMATES VALUES (2, 2, '2023-10-13 20:00:00', 2, 4.1);
INSERT INTO ESTIMATES VALUES (3, 3, '2023-10-14 20:00:00', 3, 3.4);
INSERT INTO ESTIMATES VALUES (4, 4, '2023-10-15 20:00:00', 4, 2.7);
INSERT INTO ESTIMATES VALUES (5, 5, '2023-10-16 20:00:00', 1, 5);
INSERT INTO ESTIMATES VALUES (6, 6, '2023-10-17 20:00:00', 2, 3.3);
INSERT INTO ESTIMATES VALUES (7, 7, '2023-10-18 20:00:00', 3, 1.7);
INSERT INTO ESTIMATES VALUES (8, 8, '2023-10-19 20:00:00', 4, 0.7);
INSERT INTO ESTIMATES VALUES (9, 9, '2023-10-20 20:00:00', 1, 3);
INSERT INTO ESTIMATES VALUES (10, 10, '2023-10-21 20:00:00', 2, 3.9);
INSERT INTO ESTIMATES VALUES (11, 1, '2023-10-12 20:00:00', 2, 5);
INSERT INTO ESTIMATES VALUES (12, 1, '2023-10-12 20:00:00', 3, 5);
INSERT INTO ESTIMATES VALUES (13, 1, '2023-10-12 20:00:00', 4, 5);

TABLE estimates;

/*Риелтор*/
CREATE TABLE REALTOR (
    ID BIGINT PRIMARY KEY,
    SURNAME CHARACTER(30),
    NAME CHARACTER(30),
    MIDDLE_NAME CHARACTER(30),
    PHONE CHARACTER(30)
);

INSERT INTO REALTOR VALUES (1, 'Бовтунов', 'Денис', 'Сергеевич', '8-800-555-35-35');
INSERT INTO REALTOR VALUES (2, 'Сулейманов', 'Дамир', 'Алексеевич', '8-777-777-77-77');
INSERT INTO REALTOR VALUES (3, 'Иванов', 'Иван', 'Иванович', '8-900-000-00-00');
INSERT INTO REALTOR VALUES (4, 'Булкина', 'Лариса', 'Викторовна', '8-666-666-66-66');
INSERT INTO REALTOR VALUES (5, 'Пластова', 'Ирина', 'Георгиевна', '8-555-555-55-55');
INSERT INTO REALTOR VALUES (6, 'Ушаков', 'Борис', 'Игоревич', '8-111-111-11-11');

TABLE realtor;

/*Продажа*/
CREATE TABLE SALE (
    ID BIGINT PRIMARY KEY,
    PROPERTY_ID BIGINT REFERENCES PROPERTY(ID),
    DATE_OF_SALE TIMESTAMP,
    REALTOR_ID BIGINT REFERENCES REALTOR(ID),
    COST DOUBLE PRECISION
);

INSERT INTO SALE VALUES(1, 1, '2023-10-12 20:00:00', 1, 110000000);
INSERT INTO SALE VALUES(2, 2, '2023-10-11 20:00:00', 2, 3100000);
INSERT INTO SALE VALUES(3, 3, '2023-10-10 20:00:00', 2, 1100000);
INSERT INTO SALE VALUES(4, 4, '2023-10-09 20:00:00', 3, 5100000);
INSERT INTO SALE VALUES(5, 5, '2023-10-08 20:00:00', 1, 11000000000);
INSERT INTO SALE VALUES(6, 6, '2023-10-07 20:00:00', 3, 1100000);
INSERT INTO SALE VALUES(7, 7, '2023-10-06 20:00:00', 4, 2100000);
INSERT INTO SALE VALUES(8, 8, '2023-10-05 20:00:00', 4, 510000);
INSERT INTO SALE VALUES(9, 9, '2023-10-04 20:00:00', 5, 3100000);
INSERT INTO SALE VALUES(10, 10, '2023-10-03 20:00:00', 5, 1100000);
INSERT INTO SALE VALUES(11, 11, '2022-10-03 20:00:00', 6, 51000000);
INSERT INTO SALE VALUES(12, 12, '2022-10-03 20:00:00', 2, 71000000);
INSERT INTO SALE VALUES(13, 13, '2023-10-21 20:00:00', 1, 25000000);
INSERT INTO SALE VALUES(14, 14, '2023-10-30 20:00:00', 1, 25000000);
INSERT INTO SALE VALUES(15, 15, '2023-10-30 20:00:00', 1, 25000000);
INSERT INTO SALE VALUES(16, 16, '2022-10-30 20:00:00', 1, 25000000);

TABLE sale;


/*Запросы*/
/*1*/
SELECT p.address AS "Address", a.name AS "Area"
FROM Property p
JOIN Area a ON p.area_id = a.id
WHERE p.cost / p.area_id < (SELECT AVG(cost / area_id) FROM Property WHERE area_id = a.id);

/*2*/
SELECT a.name AS "Area"
FROM Area a
JOIN Property p ON a.id = p.area_id
WHERE p.status = 0
GROUP BY a.name
HAVING COUNT(p.id) > 0;

/*3*/
SELECT p.address AS "Address", a.name AS "Area"
FROM Property p
JOIN Area a ON p.area_id = a.id
JOIN Estimates e ON p.id = e.property_id
GROUP BY p.address, a.name
HAVING AVG(e.estimate) > 3.5;

/*4*/
SELECT EXTRACT(YEAR FROM DATE_OF_ANNOUNCEMENT) AS "Year"
FROM Property
GROUP BY "Year"
HAVING COUNT(id) BETWEEN 2 AND 4;

/*5*/
SELECT r.surname AS "Surname", r.name AS "Name", r.middle_name AS "Middle_Name"
FROM Realtor r
WHERE r.id NOT IN
(
    SELECT s.realtor_id
    FROM sale s
    WHERE EXTRACT(YEAR FROM s.DATE_OF_SALE) = EXTRACT(YEAR FROM NOW())
);

/*6*/
SELECT CONCAT(r.surname, ' ', LEFT(r.name, 1), '.', LEFT(r.middle_name, 1), '.') AS "Full_Name"
FROM Realtor r
JOIN
    (
        SELECT s.realtor_id, COUNT(DISTINCT p.area_id) AS count_of_area
        FROM Sale s
        JOIN Property p ON s.property_id = p.id
        GROUP BY s.realtor_id
        HAVING COUNT(DISTINCT p.area_id) > 2
    ) AS tmp_realtors ON r.id = tmp_realtors.realtor_id;

/*7*/
SELECT a.name AS "Area"
FROM Area a
JOIN Property p ON a.id = p.area_id
GROUP BY a.name
HAVING AVG(p.square) > 30;

/*8*/
SELECT CONCAT(r.surname, ' ', LEFT(r.name, 1), '.', LEFT(r.middle_name, 1), '.') AS "Full_Name",
    EXTRACT(YEAR FROM s.date_of_sale) AS "Year"
FROM Realtor r
JOIN Sale s ON r.id = s.realtor_id
WHERE
    r.surname = 'Бовтунов' AND
    r.name = 'Денис' AND
    r.middle_name = 'Сергеевич'
GROUP BY "Full_Name", "Year"
HAVING COUNT(s.property_id) >= 2;

/*9*/
SELECT CONCAT(r.surname, ' ', LEFT(r.name, 1), '.', LEFT(r.middle_name, 1), '.') AS "Full_Name",
    CONCAT(ROUND((SUM(s.cost * 0.15))::numeric, 2), ' rubles') AS "Award"
FROM Sale AS s
JOIN Realtor AS r ON s.realtor_id = r.id
WHERE
    EXTRACT(YEAR FROM s.date_of_sale) = EXTRACT(YEAR FROM CURRENT_DATE) AND
    EXTRACT(MONTH FROM s.date_of_sale) = 10
GROUP BY "Full_Name"
HAVING ROUND((SUM(s.cost * 0.15))::numeric, 2) > 40000;

/*10*/
SELECT 'One-room apartment' AS "Flat type", COUNT(*) AS "Number of properties"
FROM Property
WHERE area_id = 1 AND number_of_rooms = 1
UNION ALL

SELECT 'Two-room apartment' AS "Flat type", COUNT(*) AS "Number of properties"
FROM Property
WHERE area_id = 1 AND number_of_rooms = 2
UNION ALL

SELECT 'More than two rooms' AS "Flat type", COUNT(*) AS "Number of properties"
FROM Property
WHERE area_id = 1 AND number_of_rooms > 2;

/*11*/
SELECT DISTINCT ec.name AS "Criteria",
    CONCAT(ROUND(AVG(e.estimate)::numeric, 2), ' of 5') AS "Estimate",
    CASE
        WHEN AVG(e.estimate) >= 4.5 THEN 'Excellently'
        WHEN AVG(e.estimate) >= 4 THEN 'Thats good'
        WHEN AVG(e.estimate) >= 3.5 THEN 'Well'
        WHEN AVG(e.estimate) >= 3 THEN 'Satisfactory'
        ELSE 'Unsatisfactorily'
    END AS "Descripton"
FROM Estimates e
JOIN Evaluation_criteria ec ON e.evaluation_criteria_id = ec.id
WHERE e.property_id = 2
GROUP BY ec.name;

/*12*/
CREATE TABLE PROPERTY_STRUCTURE (
    ID BIGINT PRIMARY KEY,
    PROPERTY_ID BIGINT REFERENCES PROPERTY(ID),
    TYPE_OF_ROOM SMALLINT CHECK (TYPE_OF_ROOM IN (1, 2, 3, 4)),
    SQUARE NUMERIC CHECK (SQUARE > 0)
);

TABLE PROPERTY_STRUCTURE;

INSERT INTO PROPERTY_STRUCTURE VALUES (1, 1, 2, 50);
INSERT INTO PROPERTY_STRUCTURE VALUES (2, 1, 3, 50);
INSERT INTO PROPERTY_STRUCTURE VALUES (3, 2, 1, 20);
INSERT INTO PROPERTY_STRUCTURE VALUES (4, 2, 2, 20);
INSERT INTO PROPERTY_STRUCTURE VALUES (5, 3, 3, 10);
INSERT INTO PROPERTY_STRUCTURE VALUES (6, 3, 4, 20);
INSERT INTO PROPERTY_STRUCTURE VALUES (7, 4, 2, 10);
INSERT INTO PROPERTY_STRUCTURE VALUES (8, 4, 3, 10);
INSERT INTO PROPERTY_STRUCTURE VALUES (9, 5, 3, 5);
INSERT INTO PROPERTY_STRUCTURE VALUES (10, 5, 4, 10);

/*13*/
SELECT
    CASE
        WHEN TYPE_OF_ROOM = 1 THEN 'Kitchen'
        WHEN TYPE_OF_ROOM = 2 THEN 'Hall'
        WHEN TYPE_OF_ROOM = 3 THEN 'Bedroom'
        WHEN TYPE_OF_ROOM = 4 THEN 'Bathroom'
    END AS "Type_of_room",
    CONCAT(square, ' sq.m.') AS "Square"
FROM PROPERTY_STRUCTURE
WHERE PROPERTY_ID = 1;

/*14*/
SELECT
    CASE
        WHEN TYPE_OF_ROOM = 1 THEN 'Kitchen'
        WHEN TYPE_OF_ROOM = 2 THEN 'Hall'
        WHEN TYPE_OF_ROOM = 3 THEN 'Bedroom'
        WHEN TYPE_OF_ROOM = 4 THEN 'Bathroom'
    END AS "Type_of_room",
    CONCAT(ps.square, ' sq.m.') AS "Square",
    CONCAT(p.square, ' sq.m.') AS "Total square",
    CONCAT(ROUND(((ps.square / p.square) * 100)::numeric, 2), '%') AS "Percentage of total area"
FROM PROPERTY_STRUCTURE ps
JOIN Property p ON ps.property_id = p.id
WHERE property_id = 3
GROUP BY TYPE_OF_ROOM, p.square, ps.square;

/*15*/
SELECT a.name AS "Area",
    COUNT(ps.property_id) AS "Number_of_objects"
FROM PROPERTY_STRUCTURE AS ps
JOIN Property AS p ON ps.property_id = p.id
JOIN Area AS a ON p.area_id = a.id
GROUP BY a.name
HAVING SUM(ps.square) > 40;

/*16*/
SELECT p.address AS "Address", p.date_of_announcement AS "Date_of_announcement",
    s.date_of_sale AS "Date_of_sale"
FROM Sale AS s
INNER JOIN Property AS p ON s.property_id = p.id
WHERE s.date_of_sale <= (p.date_of_announcement + INTERVAL '4 months');

/*17*/
SELECT p.address AS "Address", a.name AS "Area",
    CASE
        WHEN p.status = 0 THEN 'On sale'
        WHEN p.status = 1 THEN 'Sold'
    END AS "Status"
FROM Property AS p
JOIN Area a ON p.area_id = a.id
WHERE p.date_of_announcement >= (CURRENT_DATE - INTERVAL '4 months') AND
    p.cost / p.square <
    (
        SELECT AVG(cost / square)
        FROM property pr
        WHERE pr.area_id = p.area_id
    );


/*18*/
WITH SalesData AS (
    SELECT a.name AS area_name, EXTRACT(YEAR FROM s.date_of_sale) AS sale_year, COUNT(*) AS sales_count
    FROM Sale s
    JOIN Property p ON s.property_id = p.id
    JOIN Area a ON p.area_id = a.id
    GROUP BY a.name, EXTRACT(YEAR FROM s.date_of_sale)
)
SELECT area_name AS "Area", (MAX(CASE WHEN sale_year = 2022 THEN sales_count ELSE 0 END)::float) AS "2022",
    (MAX(CASE WHEN sale_year = 2023 THEN sales_count ELSE 0 END)::float) AS "2023",
    CONCAT
    (
        CASE
        WHEN
            MAX(CASE WHEN sale_year = 2022 THEN sales_count ELSE 0 END) = 0
        THEN
            MAX(CASE WHEN sale_year = 2023 THEN sales_count ELSE 0 END) * 100
        ELSE
            (((MAX(CASE WHEN sale_year = 2023 THEN sales_count ELSE 0 END)::float) -
                MAX(CASE WHEN sale_year = 2022 THEN sales_count ELSE 0 END)::float) /
                MAX(CASE WHEN sale_year = 2022 THEN sales_count ELSE 0 END)::float) * 100
        END
    , '%') AS "Change_in_percentage"
FROM SalesData
GROUP BY area_name
ORDER BY area_name;

/*19*/
SELECT p.type AS "Type_of_property", COUNT(s.id)
    AS "Sales_quantity",
    CONCAT((COUNT(s.id) * 100) / (SELECT COUNT(*) FROM Sale WHERE (DATE_PART('year', date_of_sale) = 2023)),
    '%') AS "Percentage_of_Total_Quantity",
    ROUND(SUM(s.cost)::numeric, 2) AS "Total_amount"
FROM Sale s
JOIN Property p ON s.property_id = p.id
WHERE DATE_PART('year', s.date_of_sale) = 2023
GROUP BY p.type;