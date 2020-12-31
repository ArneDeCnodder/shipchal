DROP SCHEMA SHIPPING;
CREATE SCHEMA SHIPPING;
CREATE TABLE SHIPPING.Persoon (
    personid int NOT NULL PRIMARY KEY,
    first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL);
INSERT INTO SHIPPING.Persoon (personid, first_name, last_name) 
VALUES (1, 'Arne', 'De Cnodder');
INSERT INTO SHIPPING.Persoon (personid, first_name, last_name)
VALUES (2, 'Maarten', 'Struyf');
INSERT INTO SHIPPING.Persoon (personid, first_name, last_name)
VALUES (5, 'Rutger', 'Mols');
INSERT INTO SHIPPING.Persoon (personid, first_name, last_name)
VALUES (4, 'Bram', 'Verbruggen');
INSERT INTO SHIPPING.Persoon (personid, first_name, last_name)
VALUES (3, 'Filippo', 'Bagnoli');
