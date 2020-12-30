CREATE SCHEMA SHIPPING
CREATE TABLE `Persoon` (
   `personid` int(11) NOT NULL,
   `first_name` varchar(20) NOT NULL,
   `last_name` varchar(20) NOT NULL);
INSERT INTO Persoon (`personid`, `first_name`, `last_name`) VALUES
 (1, 'Arne', 'De Cnodder'),
 (2, 'Maarten', 'Struyf'),
 (5, 'Rutger', 'Mols'),
 (4, 'Bram', 'Verbruggen'),
 (3, 'Filippo', 'Bagnoli');
