# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.29)
# Database: gallery
# Generation Time: 2013-11-15 02:45:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ci_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(50) NOT NULL DEFAULT '',
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;

INSERT INTO `photos` (`id`, `url`, `category`)
VALUES
	(1,'files/gallery_photos/nature/nature1.jpg',1),
	(2,'files/gallery_photos/nature/nature2.jpg',1),
	(3,'files/gallery_photos/nature/nature3.jpg',1),
	(4,'files/gallery_photos/nature/nature4.jpg',1),
	(5,'files/gallery_photos/nature/nature5.jpg',1),
	(6,'files/gallery_photos/nature/nature6.jpg',1),
	(7,'files/gallery_photos/nature/nature7.jpg',1),
	(8,'files/gallery_photos/nature/nature8.jpg',1),
	(9,'files/gallery_photos/nature/nature9.jpg',1);

/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table thumbnails
# ------------------------------------------------------------

DROP TABLE IF EXISTS `thumbnails`;

CREATE TABLE `thumbnails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `thumb_url` varchar(200) NOT NULL DEFAULT '',
  `photo_url` varchar(200) NOT NULL DEFAULT '',
  `category` smallint(6) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `thumbnails` WRITE;
/*!40000 ALTER TABLE `thumbnails` DISABLE KEYS */;

INSERT INTO `thumbnails` (`id`, `thumb_url`, `photo_url`, `category`, `title`, `description`)
VALUES
	(1,'/clairejonesphotography/files/gallery_thumbs/nature/nature1_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature1.jpg',1,'Orange Balloon Flower','Orange Flower capture 2012'),
	(2,'/clairejonesphotography/files/gallery_thumbs/nature/nature2_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature2.jpg',1,'Red Dandilions','Red Dandillion 2012'),
	(3,'/clairejonesphotography/files/gallery_thumbs/nature/nature3_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature3.jpg',1,'Sunflower','Sunflower in the field that caught my eye'),
	(4,'/clairejonesphotography/files/gallery_thumbs/nature/nature4_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature4.jpg',1,'Lilacs in the field','Lilacs, Purple Beauty'),
	(5,'/clairejonesphotography/files/gallery_thumbs/nature/nature5_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature5.jpg',1,'A Sleepy Hollow','Makes me sleepy when looking into the hollow'),
	(6,'/clairejonesphotography/files/gallery_thumbs/nature/nature6_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature6.jpg',1,'Sunshine through the trees','Shining right into your and my life'),
	(7,'/clairejonesphotography/files/gallery_thumbs/nature/nature7_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature7.jpg',1,'Boquet in the wind','Wind blowing the boquet all about'),
	(8,'/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature8.jpg',1,'Lily','Lilly 2009'),
	(44,'/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature9.jpg',1,'Cherry on the top','Cherry picking in the fall'),
	(45,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife1.jpg',2,'Cats Eyes','Beautiful and mysterious creatures'),
	(46,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife2_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife2.jpg',2,'Dog','Mans best friend'),
	(47,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife3_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife3.jpg',2,'Dragon Fly','Amazing capture from my walk with chester'),
	(48,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife4_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife4.jpg',2,'Turtle','From the zoo a turtle I couldn\'t resist'),
	(49,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife5_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife5.jpg',2,'Snapper','Watch it when he\'s hungry!'),
	(50,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife6_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife6.jpg',2,'Cardinal','First cardinal of the season'),
	(51,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife7_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife7.jpg',2,'Duck','From the park where the ducks flock from all the children feeding them'),
	(52,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife8_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife8.jpg',2,'Bambi','Bambi looking scared and into a whole new world'),
	(53,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife9_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife9.jpg',2,'Tiger','Majestic, Powerful and Awesome'),
	(54,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife1.jpg',2,'Cats Eyes','Beautiful and mysterious creatures'),
	(55,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife1.jpg',2,'Cats Eyes','Beautiful and mysterious creatures'),
	(56,'/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature8.jpg',1,'Lily','Lilly 2009'),
	(57,'/clairejonesphotography/files/gallery_thumbs/wildlife/wildlife1_sm.jpg','/clairejonesphotography/files/gallery_photos/wild/wildlife1.jpg',2,'Cats Eyes','Beautiful and mysterious creatures'),
	(58,'/clairejonesphotography/files/gallery_thumbs/nature/nature8_sm.jpg','/clairejonesphotography/files/gallery_photos/nature/nature8.jpg',1,'Lily','Lilly 2009'),
	(59,'/clairejonesphotography/files/gallery_thumbs/wedding/wedding1_sm.jpg','/clairejonesphotography/files/gallery_photos/wedding/wedding1.jpg',3,'Wedding','Jill and Bob\'s Wedding cake'),
	(60,'/clairejonesphotography/files/gallery_thumbs/wedding/wedding2_sm.jpg','/clairejonesphotography/files/gallery_photos/wedding/wedding2.jpg',3,'WEdding','Please hand the rings over'),
	(61,'/clairejonesphotography/files/gallery_thumbs/wedding/wedding3_sm.jpg','/clairejonesphotography/files/gallery_photos/wedding/wedding3.jpg',3,'Wedding','Beautiful Roses for the bride to be'),
	(62,'/clairejonesphotography/files/gallery_thumbs/wedding/wedding4_sm.jpg','/clairejonesphotography/files/gallery_photos/wedding/wedding4.jpg',3,'Wedding','Kelly and Greg slicing their cake'),
	(63,'/clairejonesphotography/files/gallery_thumbs/wedding/wedding5_sm.jpg','/clairejonesphotography/files/gallery_photos/wedding/wedding5.jpg',3,'Wedding','Beautiful buquet from Sarah\'s wedding'),
	(64,'/clairejonesphotography/files/gallery_thumbs/wedding/wedding6_sm.jpg','/clairejonesphotography/files/gallery_photos/wedding/wedding6.jpg',3,'Wedding','John and Carol exiting the church'),
	(65,'/clairejonesphotography/files/gallery_thumbs/wedding/wedding7_sm.jpg','/clairejonesphotography/files/gallery_photos/wedding/wedding7.jpg',3,'Wedding','In France a beautiful setting for this special occasion'),
	(66,'/clairejonesphotography/files/gallery_thumbs/wedding/wedding8_sm.jpg','/clairejonesphotography/files/gallery_photos/wedding/wedding8.jpg',3,'Wedding','I caught this beautiful shot right before the toast'),
	(67,'/clairejonesphotography/files/gallery_thumbs/wedding/wedding9_sm.jpg','/clairejonesphotography/files/gallery_photos/wedding/wedding9.jpg',3,'Wedding','Fun loving Debby in a field after getting hitched'),
	(68,'/clairejonesphotography/files/gallery_thumbs/portraits/portrait1_sm.jpg','/clairejonesphotography/files/gallery_photos/portrait/portrait1.jpg',4,'Portrait','Shelly looking too cute in the park'),
	(69,'/clairejonesphotography/files/gallery_thumbs/portraits/portrait2_sm.jpg','/clairejonesphotography/files/gallery_photos/portrait/portrait2.jpg',4,'Portrait','While on vacation in Pakistan, their looks priceless'),
	(70,'/clairejonesphotography/files/gallery_thumbs/portraits/portrait3_sm.jpg','/clairejonesphotography/files/gallery_photos/portrait/portrait3.jpg',4,'Portrait','Another shot in Pakistan, a village girl that wanted her photo taken'),
	(71,'/clairejonesphotography/files/gallery_thumbs/portraits/portrait4_sm.jpg','/clairejonesphotography/files/gallery_photos/portrait/portrait4.jpg',4,'Portrait','Senior Prom is a special time'),
	(72,'/clairejonesphotography/files/gallery_thumbs/portraits/portrait5_sm.jpg','/clairejonesphotography/files/gallery_photos/portrait/portrait5.jpg',4,'Portrait','Brian sitting and pondering life as it goes by his window'),
	(73,'/clairejonesphotography/files/gallery_thumbs/portraits/portrait6_sm.jpg','/clairejonesphotography/files/gallery_photos/portrait/portrait6.jpg',4,'Portrait','A child in the village'),
	(74,'/clairejonesphotography/files/gallery_thumbs/portraits/portrait7_sm.jpg','/clairejonesphotography/files/gallery_photos/portrait/portrait7.jpg',4,'Portrait','A self of me taking a picture in Time Square'),
	(75,'/clairejonesphotography/files/gallery_thumbs/portraits/portrait8_sm.jpg','/clairejonesphotography/files/gallery_photos/portrait/portrait8.jpg',4,'Portrait','Don\'t be shy I\'m not going to bite'),
	(76,'/clairejonesphotography/files/gallery_thumbs/portraits/portrait9_sm.jpg','/clairejonesphotography/files/gallery_photos/portrait/portrait9.jpg',4,'Portrait','Jerry on his photoshoot to the beach'),
	(77,'/clairejonesphotography/files/gallery_thumbs/landscape/landscape1_sm.jpg','/clairejonesphotography/files/gallery_photos/landscape/landscape1.jpg',5,'Grand View','Shot from the plane on my way home from vacation in Europe'),
	(78,'/clairejonesphotography/files/gallery_thumbs/landscape/landscape2_sm.jpg','/clairejonesphotography/files/gallery_photos/landscape/landscape2.jpg',5,'Grand View','From the resort in Greece, Hello Morning Waters!'),
	(79,'/clairejonesphotography/files/gallery_thumbs/landscape/landscape3_sm.jpg','/clairejonesphotography/files/gallery_photos/landscape/landscape3.jpg',5,'Grand View','The sun has gone down in greece'),
	(80,'/clairejonesphotography/files/gallery_thumbs/landscape/landscape4_sm.jpg','/clairejonesphotography/files/gallery_photos/landscape/landscape4.jpg',5,'Grand View','Great sky captured in Nevada'),
	(81,'/clairejonesphotography/files/gallery_thumbs/landscape/landscape5_sm.jpg','/clairejonesphotography/files/gallery_photos/landscape/landscape5.jpg',5,'Grand View','In Rome the ancient building are spectacular'),
	(82,'/clairejonesphotography/files/gallery_thumbs/landscape/landscape6_sm.jpg','/clairejonesphotography/files/gallery_photos/landscape/landscape6.jpg',5,'Grand View','Red Rocks in Nevada'),
	(83,'/clairejonesphotography/files/gallery_thumbs/landscape/landscape7_sm.jpg','/clairejonesphotography/files/gallery_photos/landscape/landscape7.jpg',5,'Grand View','A helicopter ride for the ages'),
	(84,'/clairejonesphotography/files/gallery_thumbs/landscape/landscape8_sm.jpg','/clairejonesphotography/files/gallery_photos/landscape/landscape8.jpg',5,'Grand View','Misty morning hop '),
	(85,'/clairejonesphotography/files/gallery_thumbs/landscape/landscape9_sm.jpg','/clairejonesphotography/files/gallery_photos/landscape/landscape9.jpg',5,'Grand View','Cactus in the desert');

/*!40000 ALTER TABLE `thumbnails` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `password`)
VALUES
	(135,'admin','21232f297a57a5a743894a0e4a801fc3');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
