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

SELECT location, SUM(seats) AS pocet_mist
FROM classrooms
GROUP BY location;

SELECT location, SUM(seats) AS pocet_mist
FROM classrooms
GROUP BY location
ORDER BY pocet_mist;

SELECT * FROM subjects
ORDER BY name DESC(ASC);

SELECT id_guarantor, COUNT(*) AS pocet_predmetu
FROM subjects
GROUP BY id_guarantor;

#cviceni 6
CREATE TABLE schedule(
  id_schedule int(11) NOT NULL AUTO_INCREMENT,
  id_teacher int(11) NOT NULL,
  id_class int(11) NOT NULL,
  id_subject int(11) NOT NULL,
  id_classroom int(11) NOT NULL,
  id_lesson int(11) NOT NULL,
  description TEXT,
  PRIMARY KEY (id_schedule)
);
  DESCRIBE schedule;
INSERT INTO `schedule` (`id_teacher`, `id_class`, `id_subject`, `id_classroom`,`id_lesson` `description`)
VALUES (2,1,2,2,1,'Toto je popis první vyučovací hodiny');

CREATE TABLE `lessons` (
  `id_lesson` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  PRIMARY KEY (`id_lesson`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

INSERT INTO `lessons` (`id_lesson`, `position`, `start_time`, `end_time`) VALUES
(0, 0, '07:00:00',	'07:45:00')
(1,	1,	'07:50:00',	'08:35:00'),
(2,	2,	'08:45:00',	'09:30:00'),
(3,	3,	'09:40:00',	'10:25:00'),
(4,	4,	'10:45:00',	'11:30:00'),
(5,	5,	'11:40:00',	'12:25:00'),
(6,	6,	'12:55:00',	'13:40:00'),
(7,	7,	'13:50:00',	'14:35:00'),
(8,	8,	'14:45:00',	'15:30:00'),
(9,	9,	'15:35:00',	'16:20:00'),
(10,	10,	'16:25:00',	'17:10:00');

#cviceni 7
SELECT *
FROM schedule sch
JOIN teachers t ON sch.id_teacher = t.id_teacher
JOIN classes cls ON sch.id_class = cls.id_class
JOIN subjects su ON sch.id_subject = su.id_subject
JOIN classrooms clrs ON sch.id_subject = clrs.id_classroom
JOIN lessons le ON sch.id_subject = le.id_lesson;

UPDATE schedule
SET id_lesson = 2
WHERE id_schedule = 1;

SELECT sch.date AS Datum, l.position AS vyucovaci_hodina, su.shortcut AS předmět, t. lastname AS učitel, clrs.number AS místnost
FROM schedule sch
JOIN teachers t ON sch.id_teacher = t.id_teacher
JOIN classes cls ON sch.id_class = cls.id_class
JOIN subjects su ON sch.id_subject = su.id_subject
JOIN classrooms clrs ON sch.id_subject = clrs.id_classroom
JOIN lessons l ON sch.id_subject = l.id_lesson

#cviceni 8
                      SCHOOL
https://www.draw.io/#G1yxqvvNd6SbCXGmvlHTCunRruGq50lWQT

#cviceni 9
                      LIBRARY
https://www.draw.io/#G1AEx6D3bUuygNZiMcBEo5oKK5lR7FECvV

SELECT COUNT(*) AS pocet_autoru FROM authors;
SELECT COUNT(*) AS pocet_knih FROM books;
SELECT COUNT(*) AS pocet_zanry FROM genres;
SELECT COUNT(*) AS pocet_vydavatelstvi FROM publishers;

SELECT bok.id_book AS ID, title AS název, firstname AS jméno, lastname AS přijmení, pub.name AS nakladatelství, gen.name AS žánr
FROM books bok
JOIN authors au ON bok.id_author = au.id_author
JOIN publishers pub ON bok.id_publisher = pub.id_publisher
JOIN genres gen ON bok.id_genre = gen.id_genre;

SELECT bok.id_book AS ID, title AS název, firstname AS jméno, lastname AS přijmení, pub.name AS nakladatelství, g.id_genre AS žánr
FROM books bok
JOIN authors au ON bok.id_author = au.id_author
JOIN publishers pub ON bok.id_publisher = pub.id_publisher
JOIN books_genres bg ON bok.id_book = bg.id_book
JOIN genres g ON g.id_genre = bg.id_genre;

#cviceni X
                OSSP_wars
https://www.draw.io/#G1XckmHXIZczmCjVaxilGab8QIB_Zox9Xo

SELECT AVG(damage)
FROM units;
SELECT MAX(HP)
FROM units;
SELECT MIN(damage)
FROM units;

SELECT name AS nazev_guildy, nickname AS přezdívka, created_ad AS datum_vytvoreni
FROM players p
JOIN guilds g ON p.id_guild = g.id_guild
ORDER BY nazev_guildy;

SELECT g.name, COUNT(*) AS pocet_hracu_guildy
FROM players p
JOIN guilds g ON p.id_guild = g.id_guild
GROUP BY g.id_guild

SELECT nickname AS prezdivka, ch.name AS jmeno_charakteru, level AS uroven, c.name AS trida
FROM players p
JOIN characters ch ON p.id_player = ch.id_player
JOIN classes c ON ch.id_class = c.id_class
SELECT MAX(level)
FROM characters;

SELECT COALESCE(g.id_guild, "Nevyplněno") AS "ID guildy", p.id_player AS "ID hráče", g.name AS "Jméno", p.nickname AS "Jmého hráče"
FROM guilds g
RIGHT JOIN players p ON g.id_guild = p.id_guild;

SELECT *
FROM players
ORDER BY id_player
LIMIT 5;

DELETE FROM players 
WHERE id_guild = 2

----OSSP_WARS----


CREATE DATABASE `ossp_wars` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci */;
USE `ossp_wars`;

CREATE TABLE `characters` (
  `id_character` int(11) NOT NULL AUTO_INCREMENT,
  `id_player` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `name` varchar(255) COLLATE cp1250_czech_cs NOT NULL,
  `level` int(11) NOT NULL,
  `HP` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `strength` int(11) NOT NULL,
  `intelligence` int(11) NOT NULL,
  `agility` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `mana` int(11) NOT NULL,
  PRIMARY KEY (`id_character`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1250 COLLATE=cp1250_czech_cs;

INSERT INTO `characters` (`id_character`, `id_player`, `id_class`, `name`, `level`, `HP`, `money`, `strength`, `intelligence`, `agility`, `defense`, `mana`) VALUES
(1,	1,	1,	'BaBča',	69,	156000,	321321,	1000,	200,	500,	1200,	250),
(2,	1,	2,	'BaBčus',	54,	144000,	30000,	250,	1000,	300,	200,	500),
(3,	2,	3,	'jdoe999',	12,	2000,	8000,	250,	300,	150,	200,	100),
(4,	2,	4,	'Jd0e123',	16,	3000,	10000,	200,	123,	66,	123,	100),
(5,	3,	5,	'Knefi',	42,	13000,	25000,	423,	123,	561,	325,	123),
(6,	3,	6,	'KnefiCZ',	65,	156000,	56500,	2300,	652,	256,	654,	200);

CREATE TABLE `classes` (
  `id_class` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE cp1250_czech_cs NOT NULL,
  PRIMARY KEY (`id_class`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1250 COLLATE=cp1250_czech_cs;

INSERT INTO `classes` (`id_class`, `name`) VALUES
(1,	'warrior'),
(2,	'mage'),
(3,	'hunter'),
(4,	'necromancer'),
(5,	'thief'),
(6,	'paladin');

CREATE TABLE `guilds` (
  `id_guild` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE cp1250_czech_cs NOT NULL,
  `created_ad` datetime NOT NULL,
  PRIMARY KEY (`id_guild`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1250 COLLATE=cp1250_czech_cs;

INSERT INTO `guilds` (`id_guild`, `name`, `created_ad`) VALUES
(1,	'ASDASOVE',	'2020-01-14 10:55:45'),
(2,	'ossp',	'2020-01-14 10:56:32'),
(3,	'Božena Němcová',	'2020-02-13 09:18:04');

CREATE TABLE `players` (
  `id_player` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE cp1250_czech_cs NOT NULL,
  `email` varchar(255) COLLATE cp1250_czech_cs NOT NULL,
  `password` varchar(255) COLLATE cp1250_czech_cs NOT NULL,
  `birthdate` date NOT NULL,
  `create-ad` datetime NOT NULL,
  `newsletter` tinytext COLLATE cp1250_czech_cs NOT NULL,
  `gdpr` tinytext COLLATE cp1250_czech_cs NOT NULL,
  `id_guild` int(11) NOT NULL,
  PRIMARY KEY (`id_player`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1250 COLLATE=cp1250_czech_cs;

INSERT INTO `players` (`id_player`, `nickname`, `email`, `password`, `birthdate`, `create-ad`, `newsletter`, `gdpr`, `id_guild`) VALUES
(1,	'BaBca',	'babca@babca.com',	'*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9',	'2002-12-12',	'2020-01-14 10:52:17',	'',	'',	1),
(2,	'JDoe',	'jdoe@jdoe.com',	'*A1D5B40F60B310D4E9DF90C35347F6DCE14C3EC8',	'2020-01-14',	'2020-01-14 10:52:59',	'',	'',	2),
(3,	'Knajfi',	'Knajfl@knajfl.com',	'*D2595A17C97EDE875647A5DABBD135E81AC2550B',	'2020-01-14',	'2020-01-14 10:53:54',	'',	'',	3),
(4,	'MartinKokainCZ',	'martin@kokain.com',	'kokain',	'2020-02-13',	'2020-02-13 09:16:57',	'',	'',	0);

CREATE TABLE `units` (
  `id_unit` int(11) NOT NULL AUTO_INCREMENT,
  `id_unit_type` int(11) NOT NULL,
  `HP` int(11) NOT NULL,
  `damage` int(11) NOT NULL,
  `id_character` int(11) NOT NULL,
  PRIMARY KEY (`id_unit`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1250 COLLATE=cp1250_czech_cs;

INSERT INTO `units` (`id_unit`, `id_unit_type`, `HP`, `damage`, `id_character`) VALUES
(1,	1,	5000,	500,	1),
(2,	2,	3620,	360,	2),
(3,	3,	15900,	4000,	5),
(4,	4,	2500,	300,	3),
(5,	5,	10000,	2000,	5),
(6,	6,	200,	5,	6),
(7,	7,	5000,	350,	4),
(8,	8,	350,	15,	3),
(9,	9,	666666,	9999,	1);

CREATE TABLE `units_types` (
  `id_units_types` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE cp1250_czech_cs NOT NULL,
  PRIMARY KEY (`id_units_types`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1250 COLLATE=cp1250_czech_cs;

INSERT INTO `units_types` (`id_units_types`, `name`) VALUES
(1,	'Zombie'),
(2,	'Elf'),
(3,	'wolf'),
(4,	'ghost'),
(5,	'bear'),
(6,	'dog'),
(7,	'worker'),
(8,	'monkey'),
(9,	'tank');

