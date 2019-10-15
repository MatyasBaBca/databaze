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

#cviceni 4
CREATE TABLE `classrooms` (
  `id_classroom` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `seat_count` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_classroom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

INSERT INTO `classrooms` ( `number`, `seat_count`, `location`) VALUES
(1,	'13',	50,	'druhá budova'),

CREATE TABLE `subjects` (
  `id_subject` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `shortcut` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id_subject`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `subjects` ( `name`, `description`, `shortcut`) VALUES
(1,	'programove vybaveni',	'hrani',	'PV'),

#cviceni 5
SELECT * FROM subjects;
DELETE 
FROM subjects
WHERE id_subjects = 5; (5 OR id_subjects = 4;)

UPDATE subjects
SET id_guarantor = 4
WHERE id_subject = 4 OR id_subject = 5;

UPDATE subjects
SET id_guarantor = 4
WHERE id_guarantor = 99;

SELECT SUM(seats)
FROM classrooms;
