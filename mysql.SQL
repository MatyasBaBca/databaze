#cviceni 1
show tables;
SELECT * FROM users;
SELECT COUNT(*) from ticketit_settings;

#cviceni 3
CREATE TABLE studenti; (
 
   `firstname` varchar(255),
   `lastname` varchar(255),
   `description` text,
   `address` varchar(255),
   `city` varchar(255),
   `DOB` date,
   `ID_Student` int

);

SELECT *
FROM students
WHERE firstname = "martin" AND "kokes"
WHERE id_student = 4 OR id_student = 2;

INSERT INTO `students` (firstname,lastname,birthdate,address,description,city,id_student)
VALUES
("martin", "kokes", "silně společensky", "ossp", 'kolin', '1980-12-04')

CREATE TABLE `teachers` (
  `firstname` varchar(255) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8_bin NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `city` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_teacher` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `teachers` (`firstname`, `lastname`, `birthdate`, `address`, `description`, `city`, `id_teacher`) VALUES
('martin',	'kokes',	'1980-12-04',	'ossp',	'ucitel na IT',	'Kolin',	1),