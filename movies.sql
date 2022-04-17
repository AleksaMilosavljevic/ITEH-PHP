/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.24-MariaDB : Database - movies
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`movies` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `movies`;

/*Table structure for table `filmovi` */

DROP TABLE IF EXISTS `filmovi`;

CREATE TABLE `filmovi` (
  `film_id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_filma` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reziser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ocena` int(11) NOT NULL,
  `link_imdb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zanr_id` int(11) NOT NULL,
  PRIMARY KEY (`film_id`),
  KEY `zanr_id` (`zanr_id`),
  CONSTRAINT `filmovi_ibfk_1` FOREIGN KEY (`zanr_id`) REFERENCES `zanr` (`zanr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `filmovi` */

LOCK TABLES `filmovi` WRITE;

insert  into `filmovi`(`film_id`,`naziv_filma`,`reziser`,`ocena`,`link_imdb`,`zanr_id`) values 
(6,'La Grande Belezza','Paolo Sorrentino',10,'https://www.imdb.com/title/tt2358891/',1),
(7,'Shutter Island','Martin Scorsese',10,'https://www.imdb.com/title/tt1130884/',1),
(8,'The Godfather','Francis Ford Coppola',10,'https://www.imdb.com/title/tt0068646/',1),
(9,'Nobody','Ilya Naishuller',7,'https://www.imdb.com/title/tt7888964/',2),
(10,'Parasite','Bong Joon-ho',8,'https://www.imdb.com/title/tt6751668/',2),
(11,'Se7en','David Fincher',10,'https://www.imdb.com/title/tt0114369/',2),
(12,'The Big Lebowski','Ethan Coen, Joel Coen',9,'https://www.imdb.com/title/tt0118715/',3),
(13,'21 Jump Street','Phil Lord, Chris Miller',7,'https://www.imdb.com/title/tt1232829/',3),
(14,'Borat','Larry Charles',8,'https://www.imdb.com/title/tt0443453/',3),
(15,'The Shinning','Stanley Kubrick',9,'https://www.imdb.com/title/tt0081505/',4),
(16,'It','Andrés Muschietti',7,'https://www.imdb.com/title/tt1396484/',4),
(17,'The Nun','Corin Hardy',5,'https://www.imdb.com/title/tt5814060/',4),
(18,'The Dark Knight','Christopher Nolan',10,'https://www.imdb.com/title/tt0468569/',5),
(19,'Deadpool','Tim Miller',8,'https://www.imdb.com/title/tt1431045/',5),
(20,'Captain Marvel','Anna Boden, Ryan Fleck',3,'https://www.imdb.com/title/tt4154664/',5),
(21,'2001: A Space Odyssey','Stanley Kubrick',9,'https://www.imdb.com/title/tt0062622/',6),
(22,'Interstellar','Christopher Nolan',9,'https://www.imdb.com/title/tt0816692/',6),
(23,'Star Wars: Revenge of the Sith (Episode III)','George Lucas',7,'https://www.imdb.com/title/tt0121766/',6);

UNLOCK TABLES;

/*Table structure for table `zanr` */

DROP TABLE IF EXISTS `zanr`;

CREATE TABLE `zanr` (
  `zanr_id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_zanra` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`zanr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `zanr` */

LOCK TABLES `zanr` WRITE;

insert  into `zanr`(`zanr_id`,`naziv_zanra`) values 
(1,'Drama'),
(2,'Triler'),
(3,'Komedija'),
(4,'Horor'),
(5,'Superheroji'),
(6,'Sci Fi');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
