#
# TABLE STRUCTURE FOR: Canteen
#

DROP DATABASE IF EXISTS `canteen`;
CREATE DATABASE `canteen`;
USE `canteen`;

-- Generation time: Thu, 08 Nov 2018 12:43:08 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_24
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `Canteen`;
CREATE TABLE `Canteen` (
  `Canteen_id` int(11) NOT NULL AUTO_INCREMENT,
  `Canteen_name` text DEFAULT NULL,
  `Owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Canteen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

INSERT INTO `Canteen` VALUES ('1','Aidan Courts','22'),
('2','Reilly Fork','84'),
('3','Mariah Roads','36'),
('4','Kilback Skyway','39'),
('5','Treutel Oval','76'),
('6','Duane Ports','80'),
('7','O\'Reilly Ports','73'),
('8','Botsford Stravenue','86'),
('9','Zack Lodge','9'),
('10','Raymundo Street','54'),
('11','Feest Camp','27'),
('12','Noah Fords','38'),
('13','Kris Shores','81'),
('14','Walter Plain','75'),
('15','Harley Plain','35'),
('16','Batz Court','99'),
('17','Davis Mountain','20'),
('18','Lindgren Manors','55'),
('19','Becker Heights','92'),
('20','Monte Green','45'),
('21','Gorczany Track','33'),
('22','Maureen Plains','37'),
('23','Erdman Throughway','72'),
('24','Raina Curve','48'),
('25','Stewart Crest','25'),
('26','Reggie Squares','71'),
('27','Leonel Lodge','51'),
('28','Smith Stream','16'),
('29','Osinski Mills','3'),
('30','Murazik Cove','59'),
('31','Bernhard Locks','32'),
('32','Buckridge Hills','57'),
('33','Ankunding Mall','30'),
('34','Kadin Expressway','69'),
('35','Lew Flat','14'),
('36','Ankunding Inlet','62'),
('37','Hailie Loop','85'),
('38','Burley Cape','87'),
('39','Windler Vista','8'),
('40','Justine Spurs','18'),
('41','Katheryn Falls','43'),
('42','Benton Rue','68'),
('43','Watsica Ferry','66'),
('44','Kayden Rapids','70'),
('45','Harber Crossing','49'),
('46','Kautzer Brooks','41'),
('47','Cathy Cliff','34'),
('48','Kemmer Manor','90'),
('49','Thiel Pike','23'),
('50','Swift Prairie','24'),
('51','Muller Trace','82'),
('52','Emily Oval','7'),
('53','Cletus Common','4'),
('54','Isaiah Station','63'),
('55','Fadel Ports','26'),
('56','Breitenberg Forks','53'),
('57','Wolf Motorway','79'),
('58','Strosin Glens','21'),
('59','Jacobi Plaza','52'),
('60','Kovacek Motorway','97'),
('61','Maxie Rapid','94'),
('62','Robel Garden','31'),
('63','Gottlieb Place','28'),
('64','Jamarcus Gateway','11'),
('65','Hayes Turnpike','95'),
('66','Reece Grove','5'),
('67','Becker Corners','89'),
('68','Fleta Trace','47'),
('69','Nasir Lodge','96'),
('70','Gage Highway','61'),
('71','Beahan Walks','78'),
('72','Maryam Prairie','88'),
('73','Littel Plaza','65'),
('74','Renee Mill','67'),
('75','Selina Meadows','77'),
('76','Rhoda Parkway','98'),
('77','Tristin Center','13'),
('78','Gorczany Cliff','19'),
('79','Jakayla Prairie','56'),
('80','Roselyn Shoals','74'),
('81','Ara Ramp','12'),
('82','Nicolas Junction','100'),
('83','Kuhlman Prairie','42'),
('84','Carroll Centers','17'),
('85','Mertz Crossing','93'),
('86','Legros Forges','60'),
('87','Wilhelm Route','15'),
('88','Adolfo Key','50'),
('89','Pfeffer Ford','44'),
('90','Tillman Spring','2'),
('91','Amaya Trace','83'),
('92','Grimes Port','29'),
('93','Camille Shores','46'),
('94','Emil Skyway','40'),
('95','Joy Isle','1'),
('96','Johnpaul Wall','64'),
('97','Osinski Overpass','91'),
('98','Pasquale Port','10'),
('99','Lynch Springs','6'),
('100','Westley Ford','58'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


#
# TABLE STRUCTURE FOR: Has
#

DROP TABLE IF EXISTS `Has`;

CREATE TABLE `Has` (
  `Canteen_id` int(11) DEFAULT NULL,
  `Items_id` int(11) DEFAULT NULL,
  `Has_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (99, 266, 41);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (88, 249, 40);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (96, 294, 21);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (56, 244, 26);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (27, 220, 32);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (68, 219, 18);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (42, 229, 18);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (45, 221, 11);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (63, 234, 49);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (75, 253, 21);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (18, 250, 30);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (85, 283, 40);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (57, 269, 42);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (67, 300, 3);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (51, 264, 8);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (95, 207, 34);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (11, 248, 1);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (74, 226, 19);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (41, 246, 34);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (55, 272, 14);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (72, 235, 19);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (5, 257, 43);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (31, 203, 39);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (86, 267, 40);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (64, 279, 17);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (2, 214, 11);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (23, 289, 9);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (36, 245, 23);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (37, 288, 22);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (60, 201, 32);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (92, 225, 34);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (94, 268, 48);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (54, 241, 36);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (65, 224, 43);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (30, 297, 22);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (82, 287, 2);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (78, 282, 7);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (10, 216, 49);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (48, 254, 24);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (28, 205, 34);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (81, 204, 39);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (34, 261, 3);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (53, 258, 37);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (39, 208, 36);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (46, 285, 38);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (84, 211, 38);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (90, 222, 19);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (89, 209, 30);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (73, 243, 31);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (98, 233, 41);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (20, 276, 12);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (47, 293, 27);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (77, 263, 29);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (4, 228, 13);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (71, 218, 15);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (1, 278, 13);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (24, 238, 50);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (76, 213, 42);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (59, 274, 7);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (91, 270, 21);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (16, 231, 8);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (49, 252, 18);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (44, 239, 15);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (83, 202, 6);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (40, 255, 47);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (3, 215, 32);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (14, 265, 2);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (93, 273, 7);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (7, 237, 32);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (29, 291, 4);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (19, 295, 17);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (43, 232, 11);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (100, 271, 4);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (32, 284, 48);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (97, 259, 48);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (70, 242, 14);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (87, 296, 28);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (25, 281, 11);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (52, 286, 44);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (12, 212, 44);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (50, 299, 42);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (26, 223, 27);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (58, 240, 13);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (21, 227, 35);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (15, 277, 2);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (62, 217, 45);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (79, 280, 32);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (61, 247, 7);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (22, 298, 27);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (17, 292, 12);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (66, 262, 48);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (13, 290, 30);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (9, 206, 28);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (33, 210, 7);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (35, 236, 13);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (8, 256, 1);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (69, 230, 16);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (6, 251, 42);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (38, 275, 42);
INSERT INTO `Has` (`Canteen_id`, `Items_id`, `Has_quantity`) VALUES (80, 260, 42);


#
# TABLE STRUCTURE FOR: Items
#

-- Generation time: Fri, 02 Nov 2018 15:26:23 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_22
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Generation time: Fri, 02 Nov 2018 15:43:26 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_24
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `Items`;
CREATE TABLE `Items` (
  `Items_id` int(11) DEFAULT NULL,
  `Items_name` text DEFAULT NULL,
  `Ingredients` text DEFAULT NULL,
  `Image` text DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Item_type` text DEFAULT NULL,
  `Price` int(10) DEFAULT NULL,
  `Max` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Items` VALUES ('262','Cyan','embrace rich action-items','http://lorempixel.com/640/480/','Self-enabling local concept','#0adaad','62','8'),
('205','Khaki','evolve scalable experiences','http://lorempixel.com/640/480/','Inverse 5thgeneration interface','#0e7008','48','1'),
('238','GreenYellow','visualize cutting-edge portals','http://lorempixel.com/640/480/','Managed transitional middleware','#ca2782','17','20'),
('266','PaleGreen','transition mission-critical e-commerce','http://lorempixel.com/640/480/','Managed client-driven policy','#ba1f32','99','2'),
('246','AntiqueWhite','target efficient convergence','http://lorempixel.com/640/480/','Enterprise-wide intermediate focusgroup','#a093ce','47','1'),
('256','Violet','orchestrate magnetic supply-chains','http://lorempixel.com/640/480/','Mandatory asynchronous ability','#328b65','143','18'),
('270','Bisque','deliver dot-com users','http://lorempixel.com/640/480/','Multi-tiered disintermediate product','#53207b','29','13'),
('278','OrangeRed','monetize virtual networks','http://lorempixel.com/640/480/','De-engineered stable help-desk','#8e4899','31','14'),
('292','SpringGreen','envisioneer transparent synergies','http://lorempixel.com/640/480/','Reverse-engineered motivating knowledgebase','#11c6cc','13','1'),
('254','Yellow','architect dot-com architectures','http://lorempixel.com/640/480/','Switchable secondary array','#041d5c','59','3'),
('252','Green','monetize world-class solutions','http://lorempixel.com/640/480/','Multi-channelled asynchronous migration','#fb4f42','22','19'),
('290','Cornsilk','deploy seamless e-tailers','http://lorempixel.com/640/480/','Automated regional middleware','#d59727','115','9'),
('294','Thistle','generate rich webservices','http://lorempixel.com/640/480/','Advanced coherent challenge','#b3edbd','145','10'),
('241','SteelBlue','matrix proactive models','http://lorempixel.com/640/480/','Integrated impactful protocol','#2f3d01','124','7'),
('204','SandyBrown','redefine 24/7 content','http://lorempixel.com/640/480/','Decentralized high-level instructionset','#9b9472','147','4'),
('261','CornflowerBlue','unleash extensible e-business','http://lorempixel.com/640/480/','Programmable multimedia service-desk','#e18851','66','9'),
('229','DarkGray','syndicate viral niches','http://lorempixel.com/640/480/','Facetoface 24/7 portal','#9c1159','51','19'),
('202','LightBlue','mesh revolutionary applications','http://lorempixel.com/640/480/','Open-architected asynchronous application','#157f46','31','20'),
('285','LavenderBlush','grow end-to-end methodologies','http://lorempixel.com/640/480/','Reduced coherent focusgroup','#e9ca00','55','17'),
('218','NavajoWhite','leverage out-of-the-box experiences','http://lorempixel.com/640/480/','Versatile multi-tasking array','#50ddba','107','10'),
('206','LightSteelBlue','incubate dot-com ROI','http://lorempixel.com/640/480/','Implemented clear-thinking support','#f8bf2d','30','13'),
('209','LightSlateGray','target visionary platforms','http://lorempixel.com/640/480/','Extended exuding concept','#518ae6','72','20'),
('258','OliveDrab','mesh world-class experiences','http://lorempixel.com/640/480/','Digitized incremental parallelism','#dbbae5','69','11'),
('260','Purple','monetize value-added web-readiness','http://lorempixel.com/640/480/','Realigned intangible focusgroup','#cc8936','16','2'),
('223','WhiteSmoke','envisioneer mission-critical channels','http://lorempixel.com/640/480/','Centralized intangible framework','#1e125c','93','9'),
('225','LawnGreen','cultivate proactive metrics','http://lorempixel.com/640/480/','User-centric heuristic hierarchy','#a5c1a7','29','15'),
('220','RosyBrown','morph proactive e-business','http://lorempixel.com/640/480/','Facetoface optimal toolset','#a11ec6','115','18'),
('215','Aqua','disintermediate interactive e-markets','http://lorempixel.com/640/480/','Multi-layered modular structure','#23ec97','26','18'),
('277','Sienna','empower visionary ROI','http://lorempixel.com/640/480/','Balanced radical hierarchy','#a8a7ef','150','1'),
('227','Lime','e-enable cross-media infrastructures','http://lorempixel.com/640/480/','Adaptive holistic emulation','#23ca9b','102','5'),
('250','Gold','empower revolutionary markets','http://lorempixel.com/640/480/','Public-key regional extranet','#233c70','75','3'),
('226','MediumTurquoise','brand world-class synergies','http://lorempixel.com/640/480/','Innovative static interface','#bb491c','126','12'),
('280','MistyRose','harness mission-critical systems','http://lorempixel.com/640/480/','Organized assymetric knowledgebase','#e0e805','52','20'),
('268','Ivory','embrace cutting-edge e-markets','http://lorempixel.com/640/480/','Inverse solution-oriented archive','#f74ca9','140','17'),
('228','DarkRed','streamline strategic eyeballs','http://lorempixel.com/640/480/','Quality-focused transitional methodology','#6d076c','95','19'),
('233','DarkSlateBlue','strategize innovative users','http://lorempixel.com/640/480/','Re-engineered executive attitude','#92fea8','41','3'),
('230','DimGrey','repurpose cutting-edge infomediaries','http://lorempixel.com/640/480/','Reactive fault-tolerant adapter','#b961eb','33','2'),
('267','DarkKhaki','incentivize frictionless markets','http://lorempixel.com/640/480/','Networked 24/7 securedline','#f26d73','39','11'),
('274','LightSalmon','seize global applications','http://lorempixel.com/640/480/','Profound didactic algorithm','#3c17da','21','8'),
('286','LightCyan','seize collaborative functionalities','http://lorempixel.com/640/480/','Automated tangible knowledgebase','#db65a0','119','3'),
('272','MediumSpringGreen','reinvent next-generation platforms','http://lorempixel.com/640/480/','Versatile discrete strategy','#3ea228','111','20'),
('289','Coral','maximize mission-critical bandwidth','http://lorempixel.com/640/480/','Focused user-facing concept','#70ee03','34','15'),
('291','Chartreuse','extend sticky systems','http://lorempixel.com/640/480/','Fully-configurable eco-centric standardization','#61c8ea','26','13'),
('211','Moccasin','deploy revolutionary bandwidth','http://lorempixel.com/640/480/','Multi-channelled 24hour time-frame','#76f981','37','13'),
('288','PowderBlue','benchmark visionary technologies','http://lorempixel.com/640/480/','Multi-layered uniform migration','#5b88b5','111','15'),
('213','MediumVioletRed','harness distributed relationships','http://lorempixel.com/640/480/','Fundamental homogeneous knowledgeuser','#e8d6f0','19','16'),
('219','DarkSalmon','productize back-end e-services','http://lorempixel.com/640/480/','Diverse object-oriented firmware','#8dab02','27','18'),
('259','DarkGreen','reinvent out-of-the-box channels','http://lorempixel.com/640/480/','Re-contextualized assymetric moderator','#9e6d20','99','17'),
('299','LimeGreen','extend B2B deliverables','http://lorempixel.com/640/480/','Mandatory bottom-line extranet','#b61072','46','11'),
('284','Tan','empower e-business content','http://lorempixel.com/640/480/','Adaptive exuding info-mediaries','#fcae6a','18','19'),
('210','SlateGray','innovate impactful content','http://lorempixel.com/640/480/','Centralized optimal emulation','#9637ec','84','17'),
('269','BlanchedAlmond','unleash bleeding-edge schemas','http://lorempixel.com/640/480/','Intuitive regional collaboration','#0c624e','46','10'),
('201','Peru','transition robust schemas','http://lorempixel.com/640/480/','Multi-lateral client-driven approach','#226fdb','90','15'),
('275','DarkOliveGreen','mesh extensible applications','http://lorempixel.com/640/480/','Operative homogeneous product','#c82bb0','113','12'),
('253','PaleTurquoise','productize transparent schemas','http://lorempixel.com/640/480/','Visionary local strategy','#dc46eb','78','16'),
('257','MediumOrchid','deploy ubiquitous markets','http://lorempixel.com/640/480/','Organized 5thgeneration structure','#50fb65','92','5'),
('283','DarkViolet','deliver collaborative metrics','http://lorempixel.com/640/480/','Total attitude-oriented initiative','#888b40','82','11'),
('282','LemonChiffon','facilitate frictionless infomediaries','http://lorempixel.com/640/480/','Enterprise-wide executive encoding','#fe7e1f','142','18'),
('216','LightSeaGreen','utilize open-source interfaces','http://lorempixel.com/640/480/','Adaptive multimedia ability','#984600','129','6'),
('237','AliceBlue','harness viral systems','http://lorempixel.com/640/480/','Multi-lateral 5thgeneration GraphicInterface','#8d2a0d','96','9'),
('245','LightSkyBlue','unleash revolutionary functionalities','http://lorempixel.com/640/480/','Integrated radical GraphicInterface','#b9d51a','99','7'),
('247','DarkMagenta','engineer 24/365 ROI','http://lorempixel.com/640/480/','Quality-focused maximized capability','#d8221f','20','2'),
('276','Silver','engage plug-and-play web-readiness','http://lorempixel.com/640/480/','Optional even-keeled matrix','#f703fa','132','3'),
('236','MediumPurple','facilitate global users','http://lorempixel.com/640/480/','Monitored dynamic utilisation','#42f188','89','4'),
('203','Turquoise','facilitate next-generation initiatives','http://lorempixel.com/640/480/','Visionary exuding benchmark','#c712a5','125','15'),
('263','Orchid','drive ubiquitous platforms','http://lorempixel.com/640/480/','Realigned radical pricingstructure','#1b461c','138','2'),
('235','Aquamarine','utilize robust networks','http://lorempixel.com/640/480/','Inverse methodical focusgroup','#53c55f','87','16'),
('296','DimGray','repurpose wireless methodologies','http://lorempixel.com/640/480/','Synergized non-volatile capacity','#3640c4','16','7'),
('208','PeachPuff','engage sexy e-business','http://lorempixel.com/640/480/','Exclusive tangible openarchitecture','#d067d7','91','9'),
('273','DarkSeaGreen','transform best-of-breed paradigms','http://lorempixel.com/640/480/','Reactive 3rdgeneration openarchitecture','#cb19de','116','20'),
('298','LightGray','engage next-generation e-markets','http://lorempixel.com/640/480/','Multi-lateral methodical toolset','#9ce6b4','150','8'),
('264','OldLace','innovate vertical niches','http://lorempixel.com/640/480/','Realigned global installation','#a8ca7a','139','13'),
('239','Blue','exploit 24/365 bandwidth','http://lorempixel.com/640/480/','Customer-focused system-worthy synergy','#8e75ac','127','17'),
('214','DeepPink','reinvent intuitive vortals','http://lorempixel.com/640/480/','Cross-platform responsive protocol','#1cc0c3','56','14'),
('212','DodgerBlue','seize transparent architectures','http://lorempixel.com/640/480/','Stand-alone content-based strategy','#8e59ae','101','3'),
('243','Gray','drive interactive relationships','http://lorempixel.com/640/480/','Open-source modular complexity','#c29d9f','120','19'),
('232','Chocolate','enable 24/7 platforms','http://lorempixel.com/640/480/','Optional analyzing data-warehouse','#188e3f','100','6'),
('271','Beige','utilize dot-com ROI','http://lorempixel.com/640/480/','Streamlined interactive knowledgebase','#ce3c68','104','16'),
('293','SaddleBrown','whiteboard revolutionary convergence','http://lorempixel.com/640/480/','Down-sized empowering neural-net','#703e4a','97','8'),
('234','DarkCyan','redefine B2B bandwidth','http://lorempixel.com/640/480/','Digitized discrete extranet','#7153c6','79','4'),
('300','MediumSlateBlue','deliver clicks-and-mortar ROI','http://lorempixel.com/640/480/','Synergistic full-range contingency','#1846c1','41','13'),
('231','PapayaWhip','enable synergistic vortals','http://lorempixel.com/640/480/','Organized composite hierarchy','#e31c35','98','7'),
('242','LightCoral','productize innovative communities','http://lorempixel.com/640/480/','Horizontal tangible solution','#0a696b','24','1'),
('265','MintCream','benchmark wireless synergies','http://lorempixel.com/640/480/','Compatible clear-thinking array','#2d837d','43','9'),
('248','LightPink','leverage enterprise vortals','http://lorempixel.com/640/480/','Vision-oriented eco-centric website','#ac1890','59','15'),
('287','Orange','implement leading-edge portals','http://lorempixel.com/640/480/','Advanced 24hour contingency','#ace5a0','149','10'),
('224','Navy','engineer dynamic web-readiness','http://lorempixel.com/640/480/','Ameliorated fault-tolerant concept','#baecf1','143','16'),
('255','MidnightBlue','transform wireless eyeballs','http://lorempixel.com/640/480/','Front-line didactic portal','#3e05ee','108','15'),
('221','Plum','matrix front-end deliverables','http://lorempixel.com/640/480/','Versatile systemic matrices','#043f1d','148','3'),
('222','DarkOrchid','engineer frictionless solutions','http://lorempixel.com/640/480/','Fundamental impactful architecture','#51d671','24','11'),
('279','White','monetize customized infomediaries','http://lorempixel.com/640/480/','Total value-added workforce','#c484c5','32','1'),
('244','SeaShell','leverage killer channels','http://lorempixel.com/640/480/','Realigned transitional standardization','#072c0e','83','20'),
('295','Indigo ','disintermediate intuitive metrics','http://lorempixel.com/640/480/','Up-sized fault-tolerant encryption','#038912','133','13'),
('217','LightYellow','drive enterprise communities','http://lorempixel.com/640/480/','Organic real-time product','#4107be','126','2'),
('281','DeepSkyBlue','redefine one-to-one paradigms','http://lorempixel.com/640/480/','Virtual contextually-based database','#8a798b','34','18'),
('297','Magenta','redefine enterprise e-markets','http://lorempixel.com/640/480/','Multi-lateral solution-oriented firmware','#199910','64','19'),
('251','ForestGreen','architect seamless mindshare','http://lorempixel.com/640/480/','Virtual object-oriented info-mediaries','#ed64ea','131','12'),
('249','Azure','engineer dot-com niches','http://lorempixel.com/640/480/','Cloned tangible infrastructure','#a4ff06','43','1'),
('207','PaleVioletRed','expedite proactive paradigms','http://lorempixel.com/640/480/','Persevering mission-critical policy','#1753e1','143','17'),
('240','Salmon','reintermediate robust action-items','http://lorempixel.com/640/480/','Persistent 24/7 opensystem','#6e08cd','128','18'); 



-- Generation time: Thu, 08 Nov 2018 12:42:32 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_24
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `Owner`;
CREATE TABLE `Owner` (
  `Owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `Owner_name` text DEFAULT NULL,
  `Social_id` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  PRIMARY KEY (`Owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

INSERT INTO `Owner` VALUES ('1','Ebba Schumm','360397','malinda50@example.net'),
('2','Prof. Eudora Friesen','711666','wgrant@example.net'),
('3','Charles Orn V','287804','shannon12@example.net'),
('4','Antoinette Wilkinson','235438','mccullough.gay@example.org'),
('5','Charlotte Hamill','863251','gonzalo14@example.org'),
('6','Rick Koss','28625','sanford.kiley@example.net'),
('7','Major Stehr Jr.','388100','nhintz@example.net'),
('8','Dr. Kenton Kilback I','383620','idach@example.org'),
('9','Arielle Schmidt','781189','huels.twila@example.org'),
('10','Miss Rebecca Dietrich Jr.','370666','fadel.dorian@example.net'),
('11','Lon Weissnat DDS','460429','margie.hackett@example.com'),
('12','Benton Daniel','972762','goyette.duane@example.com'),
('13','Prof. Kendrick Padberg II','719499','cprosacco@example.org'),
('14','Prof. Grant Brekke','5760','timothy.dibbert@example.com'),
('15','Delores Bruen DVM','320517','florence27@example.com'),
('16','Elta Kuvalis','51084','janice90@example.com'),
('17','Dr. Sonya Gibson','276544','ctorphy@example.net'),
('18','Joanne Rogahn','12991','mauricio35@example.com'),
('19','Prof. Brisa Tremblay MD','869781','hilbert88@example.com'),
('20','Marilyne Kemmer V','110683','demetris24@example.com'),
('21','Telly VonRueden DDS','684788','mhoeger@example.org'),
('22','Lilla Zulauf IV','759119','emiliano.waters@example.com'),
('23','Dejon Volkman','777282','cesar06@example.com'),
('24','Miss Idella Prohaska PhD','648746','quigley.robert@example.com'),
('25','Dr. Giuseppe Bartell DDS','846697','axel.rippin@example.com'),
('26','Rahul Schaden','571609','marquardt.elena@example.net'),
('27','Noelia Nienow','426112','zsauer@example.com'),
('28','Dr. Nicola Watsica','403254','syble10@example.org'),
('29','Kassandra Russel','462505','rippin.josie@example.org'),
('30','Loraine Jenkins','920449','abe.white@example.org'),
('31','Dovie Thiel','908457','archibald34@example.net'),
('32','Kurt Bode','822066','abbott.ollie@example.com'),
('33','Prof. Donny Dietrich DDS','677338','dfarrell@example.org'),
('34','Adam Grimes Sr.','108112','susan.lebsack@example.com'),
('35','Mr. Davon Watsica','467809','pacocha.hattie@example.org'),
('36','Karelle Franecki','429299','bnikolaus@example.com'),
('37','Lawson Wisozk MD','354445','amanda60@example.net'),
('38','Ofelia Gislason','742659','raymundo.rosenbaum@example.org'),
('39','Ms. Pattie Murray','168367','dante.macejkovic@example.org'),
('40','Wyman Hagenes','960550','wilfred53@example.net'),
('41','Dr. Eduardo Volkman DDS','75723','eleanora37@example.org'),
('42','Prof. Rod Schuppe','613081','zkihn@example.net'),
('43','Mr. Dayne Von V','53390','jude.schroeder@example.net'),
('44','Ethel Corwin','786533','lesly51@example.org'),
('45','Mariah Kuhlman','588815','hsauer@example.net'),
('46','Gisselle O\'Keefe','232211','gutmann.sally@example.org'),
('47','Dr. Josiah Schaefer PhD','41559','pietro01@example.net'),
('48','Jeramy Harris','460517','beer.katelynn@example.com'),
('49','Angus Franecki','993847','gloria69@example.net'),
('50','Mrs. Aglae Gaylord','55498','tod58@example.com'),
('51','Chloe Kohler','806692','gaylord49@example.org'),
('52','Prof. Linwood Osinski','515072','delbert98@example.org'),
('53','Mr. Martin Funk','226599','jkshlerin@example.org'),
('54','Cornell Murazik','784519','christina.hamill@example.net'),
('55','Harmon Abshire','291130','felipe.ratke@example.com'),
('56','Brett Rempel','516742','rico70@example.net'),
('57','Devon Huels','101132','anya45@example.net'),
('58','Eula Tromp','645001','weber.ella@example.net'),
('59','Natalia Adams','347571','kaylee.donnelly@example.com'),
('60','Dr. Clifford Zieme','847420','madaline.hettinger@example.com'),
('61','Dr. Howard Berge','665511','arvel37@example.org'),
('62','Liza Hills','599482','imorissette@example.net'),
('63','Grace Wintheiser','371107','ocarter@example.net'),
('64','Watson Wilderman','729406','cathryn72@example.org'),
('65','Brianne Cummings','770018','mohammad12@example.org'),
('66','Dejon Russel','635533','xmccullough@example.org'),
('67','Everardo Bins','301618','odubuque@example.com'),
('68','Rae Hessel','81367','will.zelda@example.org'),
('69','Kyleigh Larson','962405','rex.lynch@example.org'),
('70','Alyson Trantow PhD','766566','myrtis57@example.net'),
('71','Prof. Destiny Weissnat','524945','judy10@example.net'),
('72','Kareem Walsh','48306','ernestine99@example.org'),
('73','Vita McGlynn','646350','kristoffer.gutkowski@example.net'),
('74','Alta Doyle','789972','abigayle.o\'hara@example.net'),
('75','Andrew Tromp V','249391','christophe.gleichner@example.org'),
('76','Sandrine Ratke','91585','stehr.ciara@example.net'),
('77','Prof. Karelle Tremblay DVM','651541','flesch@example.net'),
('78','Waylon Stark','922732','kiana.bauch@example.net'),
('79','Reinhold O\'Kon','921293','jarred.gislason@example.org'),
('80','Prof. Raoul Goyette','947210','bria77@example.org'),
('81','Augustine Nikolaus','376745','bart.tromp@example.com'),
('82','Talia Bins Jr.','515621','kkoss@example.net'),
('83','Wilber Fadel','67193','ashleigh.hoeger@example.org'),
('84','Nella Walker','366489','theron73@example.com'),
('85','Shana Hane','26512','fahey.alberta@example.org'),
('86','Dr. Michel Greenfelder','320293','murray54@example.org'),
('87','Jacques Gleason PhD','503413','kutch.joey@example.net'),
('88','Linda Veum I','830614','gislason.earlene@example.net'),
('89','Stanford Borer','778054','bhettinger@example.net'),
('90','Jerod Cole','683791','fstreich@example.com'),
('91','Coty Wilkinson','96094','strosin.paula@example.net'),
('92','Schuyler McDermott IV','724107','eryn.kulas@example.net'),
('93','Pinkie Schulist Jr.','911307','marisa01@example.org'),
('94','Estrella Turcotte','787228','cordell.hickle@example.org'),
('95','Murl Schroeder','148172','peggie.mosciski@example.org'),
('96','Dr. Enola Bartell Sr.','177256','sophie.howell@example.org'),
('97','Dr. Dashawn Heidenreich','494508','rsteuber@example.net'),
('98','Prof. Alexis Hand V','230559','amccullough@example.org'),
('99','Miss Lori Farrell','273775','grimes.saul@example.com'),
('100','Deshawn Runolfsson II','823089','gmayer@example.net'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


#
# TABLE STRUCTURE FOR: Purchases
#

-- Generation time: Sun, 04 Nov 2018 11:09:18 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_24
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `Purchases`;
CREATE TABLE `Purchases` (
  `Item_id` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Purchase_basket_id` int(11) NOT NULL,
  `Purchase_date` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `Purchases` (`Item_id`, `Quantity`, `User_id`, `Purchase_basket_id`, `Purchase_date`, `Status`) VALUES
(201, 27, 310, 510, NULL, 1),
(201, 30, 341, 541, NULL, 1),
(201, 50, 353, 553, NULL, 1),
(201, 21, 356, 556, NULL, 1),
(201, 31, 365, 565, NULL, 1),
(201, 10, 389, 589, NULL, 1),
(201, 43, 390, 590, NULL, 1),
(202, 2, 311, 511, NULL, 0),
(202, 10, 321, 521, NULL, 0),
(202, 24, 337, 537, NULL, 0),
(202, 5, 356, 556, NULL, 0),
(202, 41, 361, 561, NULL, 0),
(202, 49, 395, 595, NULL, 0),
(203, 41, 305, 505, NULL, 0),
(203, 36, 330, 530, NULL, 0),
(203, 27, 332, 532, NULL, 0),
(203, 25, 346, 546, NULL, 0),
(203, 27, 375, 575, NULL, 0),
(204, 43, 303, 503, NULL, 0),
(204, 36, 320, 520, NULL, 0),
(204, 41, 383, 583, NULL, 0),
(205, 26, 302, 502, NULL, 0),
(205, 13, 324, 524, NULL, 0),
(205, 45, 326, 526, NULL, 0),
(205, 31, 334, 534, NULL, 0),
(205, 34, 355, 555, NULL, 0),
(205, 8, 370, 570, NULL, 0),
(205, 17, 393, 593, NULL, 0),
(205, 18, 398, 598, NULL, 0),
(206, 40, 321, 521, NULL, 0),
(206, 44, 364, 564, NULL, 0),
(206, 4, 376, 576, NULL, 0),
(207, 48, 309, 509, NULL, 0),
(207, 33, 335, 535, NULL, 0),
(207, 48, 339, 539, NULL, 0),
(207, 35, 340, 540, NULL, 0),
(207, 5, 368, 568, NULL, 0),
(207, 8, 382, 582, NULL, 0),
(207, 41, 393, 593, NULL, 0),
(208, 30, 325, 525, NULL, 0),
(208, 27, 327, 527, NULL, 0),
(208, 20, 353, 553, NULL, 0),
(208, 40, 394, 594, NULL, 0),
(209, 9, 312, 512, NULL, 0),
(209, 8, 329, 529, NULL, 0),
(209, 19, 343, 543, NULL, 0),
(209, 36, 349, 549, NULL, 0),
(209, 8, 352, 552, NULL, 0),
(209, 44, 375, 575, NULL, 0),
(209, 47, 378, 578, NULL, 0),
(210, 26, 300, 500, NULL, 0),
(210, 9, 309, 509, NULL, 0),
(210, 40, 311, 511, NULL, 0),
(210, 39, 320, 520, NULL, 0),
(210, 42, 325, 525, NULL, 0),
(210, 40, 340, 540, NULL, 0),
(210, 29, 343, 543, NULL, 0),
(210, 1, 364, 564, NULL, 0),
(210, 12, 369, 569, NULL, 0),
(211, 31, 308, 508, NULL, 0),
(211, 44, 325, 525, NULL, 0),
(211, 8, 331, 531, NULL, 0),
(212, 41, 306, 506, NULL, 0),
(212, 29, 308, 508, NULL, 0),
(212, 31, 340, 540, NULL, 0),
(212, 40, 351, 551, NULL, 0),
(212, 26, 355, 555, NULL, 0),
(212, 46, 356, 556, NULL, 0),
(212, 5, 357, 557, NULL, 0),
(212, 50, 364, 564, NULL, 0),
(212, 36, 379, 579, NULL, 0),
(212, 12, 380, 580, NULL, 0),
(213, 38, 329, 529, NULL, 0),
(213, 5, 358, 558, NULL, 0),
(213, 13, 359, 559, NULL, 0),
(214, 27, 366, 566, NULL, 0),
(214, 3, 394, 594, NULL, 0),
(214, 38, 396, 596, NULL, 0),
(214, 38, 398, 598, NULL, 0),
(215, 40, 315, 515, NULL, 0),
(215, 34, 316, 516, NULL, 0),
(215, 50, 331, 531, NULL, 0),
(215, 7, 339, 539, NULL, 0),
(215, 2, 351, 551, NULL, 0),
(215, 13, 352, 552, NULL, 0),
(215, 45, 354, 554, NULL, 0),
(215, 45, 358, 558, NULL, 0),
(215, 4, 367, 567, NULL, 0),
(215, 50, 376, 576, NULL, 0),
(216, 34, 300, 500, NULL, 0),
(216, 36, 310, 510, NULL, 0),
(216, 19, 393, 593, NULL, 0),
(217, 47, 313, 513, NULL, 0),
(217, 29, 350, 550, NULL, 0),
(217, 21, 373, 573, NULL, 0),
(217, 26, 395, 595, NULL, 0),
(218, 15, 327, 527, NULL, 0),
(218, 38, 350, 550, NULL, 0),
(218, 24, 363, 563, NULL, 0),
(218, 40, 375, 575, NULL, 0),
(218, 5, 389, 589, NULL, 0),
(219, 32, 339, 539, NULL, 0),
(219, 43, 347, 547, NULL, 0),
(219, 17, 355, 555, NULL, 0),
(219, 40, 369, 569, NULL, 0),
(219, 24, 372, 572, NULL, 0),
(219, 31, 378, 578, NULL, 0),
(219, 37, 393, 593, NULL, 0),
(220, 21, 308, 508, NULL, 0),
(220, 6, 353, 553, NULL, 0),
(220, 25, 354, 554, NULL, 0),
(220, 46, 372, 572, NULL, 0),
(220, 12, 375, 575, NULL, 0),
(220, 39, 378, 578, NULL, 0),
(220, 6, 394, 594, NULL, 0),
(221, 12, 335, 535, NULL, 0),
(221, 14, 377, 577, NULL, 0),
(222, 30, 373, 573, NULL, 0),
(222, 26, 379, 579, NULL, 0),
(222, 41, 386, 586, NULL, 0),
(222, 18, 398, 598, NULL, 0),
(223, 12, 350, 550, NULL, 0),
(223, 3, 366, 566, NULL, 0),
(223, 5, 376, 576, NULL, 0),
(224, 42, 325, 525, NULL, 0),
(224, 6, 328, 528, NULL, 0),
(224, 23, 331, 531, NULL, 0),
(225, 5, 308, 508, NULL, 0),
(225, 49, 314, 514, NULL, 0),
(225, 8, 348, 548, NULL, 0),
(225, 28, 377, 577, NULL, 0),
(225, 22, 385, 585, NULL, 0),
(226, 41, 307, 507, NULL, 0),
(226, 2, 312, 512, NULL, 0),
(226, 20, 328, 528, NULL, 0),
(226, 7, 334, 534, NULL, 0),
(226, 4, 339, 539, NULL, 0),
(226, 30, 357, 557, NULL, 0),
(226, 12, 360, 560, NULL, 0),
(227, 41, 313, 513, NULL, 0),
(227, 3, 322, 522, NULL, 0),
(227, 49, 327, 527, NULL, 0),
(227, 12, 360, 560, NULL, 0),
(227, 49, 376, 576, NULL, 0),
(227, 50, 382, 582, NULL, 0),
(227, 46, 399, 599, NULL, 0),
(228, 44, 314, 514, NULL, 0),
(228, 36, 343, 543, NULL, 0),
(228, 2, 345, 545, NULL, 0),
(228, 26, 361, 561, NULL, 0),
(228, 46, 369, 569, NULL, 0),
(228, 40, 381, 581, NULL, 0),
(228, 26, 387, 587, NULL, 0),
(228, 40, 394, 594, NULL, 0),
(228, 9, 399, 599, NULL, 0),
(228, 37, 400, 600, NULL, 0),
(229, 49, 310, 510, NULL, 0),
(229, 49, 313, 513, NULL, 0),
(229, 17, 318, 518, NULL, 0),
(229, 23, 360, 560, NULL, 0),
(229, 8, 373, 573, NULL, 0),
(230, 29, 319, 519, NULL, 0),
(230, 2, 325, 525, NULL, 0),
(230, 38, 328, 528, NULL, 0),
(230, 18, 329, 529, NULL, 0),
(230, 4, 333, 533, NULL, 0),
(230, 4, 340, 540, NULL, 0),
(230, 22, 384, 584, NULL, 0),
(231, 27, 301, 501, NULL, 0),
(231, 48, 308, 508, NULL, 0),
(231, 23, 329, 529, NULL, 0),
(231, 41, 333, 533, NULL, 0),
(231, 14, 351, 551, NULL, 0),
(231, 21, 389, 589, NULL, 0),
(232, 36, 313, 513, NULL, 0),
(232, 25, 342, 542, NULL, 0),
(232, 2, 348, 548, NULL, 0),
(232, 16, 371, 571, NULL, 0),
(232, 17, 391, 591, NULL, 0),
(233, 33, 300, 500, NULL, 0),
(233, 14, 310, 510, NULL, 0),
(233, 7, 320, 520, NULL, 0),
(233, 46, 323, 523, NULL, 0),
(233, 12, 332, 532, NULL, 0),
(233, 9, 333, 533, NULL, 0),
(233, 33, 334, 534, NULL, 0),
(233, 27, 340, 540, NULL, 0),
(233, 45, 343, 543, NULL, 0),
(233, 15, 345, 545, NULL, 0),
(233, 45, 346, 546, NULL, 0),
(233, 10, 356, 556, NULL, 0),
(233, 43, 358, 558, NULL, 0),
(233, 36, 384, 584, NULL, 0),
(233, 5, 391, 591, NULL, 0),
(234, 20, 379, 579, NULL, 0),
(234, 22, 398, 598, NULL, 0),
(235, 3, 302, 502, NULL, 0),
(235, 1, 328, 528, NULL, 0),
(235, 21, 339, 539, NULL, 0),
(235, 20, 345, 545, NULL, 0),
(235, 3, 361, 561, NULL, 0),
(236, 37, 341, 541, NULL, 0),
(236, 46, 345, 545, NULL, 0),
(236, 20, 346, 546, NULL, 0),
(236, 5, 354, 554, NULL, 0),
(236, 8, 382, 582, NULL, 0),
(236, 40, 385, 585, NULL, 0),
(236, 27, 400, 600, NULL, 0),
(237, 2, 317, 517, NULL, 0),
(237, 45, 331, 531, NULL, 0),
(237, 17, 338, 538, NULL, 0),
(237, 39, 358, 558, NULL, 0),
(237, 41, 368, 568, NULL, 0),
(237, 40, 392, 592, NULL, 0),
(237, 27, 399, 599, NULL, 0),
(238, 44, 305, 505, NULL, 0),
(238, 24, 306, 506, NULL, 0),
(238, 48, 311, 511, NULL, 0),
(238, 18, 333, 533, NULL, 0),
(238, 3, 335, 535, NULL, 0),
(238, 11, 339, 539, NULL, 0),
(238, 4, 385, 585, NULL, 0),
(238, 40, 386, 586, NULL, 0),
(239, 12, 331, 531, NULL, 0),
(239, 46, 333, 533, NULL, 0),
(239, 27, 336, 536, NULL, 0),
(239, 33, 341, 541, NULL, 0),
(239, 14, 353, 553, NULL, 0),
(239, 19, 391, 591, NULL, 0),
(240, 22, 305, 505, NULL, 0),
(240, 35, 323, 523, NULL, 0),
(240, 22, 325, 525, NULL, 0),
(240, 4, 370, 570, NULL, 0),
(240, 43, 397, 597, NULL, 0),
(241, 12, 302, 502, NULL, 0),
(241, 19, 309, 509, NULL, 0),
(241, 27, 318, 518, NULL, 0),
(241, 7, 340, 540, NULL, 0),
(241, 31, 349, 549, NULL, 0),
(241, 8, 358, 558, NULL, 0),
(241, 43, 374, 574, NULL, 0),
(241, 4, 377, 577, NULL, 0),
(241, 9, 379, 579, NULL, 0),
(242, 49, 309, 509, NULL, 0),
(242, 47, 321, 521, NULL, 0),
(242, 49, 369, 569, NULL, 0),
(243, 42, 318, 518, NULL, 0),
(243, 35, 356, 556, NULL, 0),
(243, 13, 388, 588, NULL, 0),
(244, 20, 304, 504, NULL, 0),
(244, 23, 319, 519, NULL, 0),
(244, 46, 330, 530, NULL, 0),
(244, 14, 374, 574, NULL, 0),
(245, 44, 300, 500, NULL, 0),
(245, 40, 302, 502, NULL, 0),
(245, 6, 363, 563, NULL, 0),
(246, 36, 324, 524, NULL, 0),
(246, 12, 338, 538, NULL, 0),
(246, 32, 340, 540, NULL, 0),
(246, 40, 364, 564, NULL, 0),
(246, 16, 371, 571, NULL, 0),
(246, 25, 383, 583, NULL, 0),
(246, 23, 384, 584, NULL, 0),
(246, 47, 386, 586, NULL, 0),
(247, 2, 310, 510, NULL, 0),
(247, 29, 352, 552, NULL, 0),
(247, 10, 387, 587, NULL, 0),
(247, 47, 389, 589, NULL, 0),
(247, 28, 398, 598, NULL, 0),
(248, 36, 305, 505, NULL, 0),
(248, 4, 313, 513, NULL, 0),
(248, 39, 342, 542, NULL, 0),
(248, 8, 355, 555, NULL, 0),
(248, 16, 379, 579, NULL, 0),
(248, 28, 381, 581, NULL, 0),
(248, 36, 397, 597, NULL, 0),
(249, 11, 303, 503, NULL, 0),
(249, 10, 340, 540, NULL, 0),
(249, 39, 378, 578, NULL, 0),
(249, 10, 384, 584, NULL, 0),
(250, 13, 301, 501, NULL, 0),
(250, 35, 304, 504, NULL, 0),
(250, 27, 315, 515, NULL, 0),
(250, 16, 332, 532, NULL, 0),
(250, 47, 356, 556, NULL, 0),
(250, 25, 366, 566, NULL, 0),
(250, 46, 398, 598, NULL, 0),
(251, 43, 308, 508, NULL, 0),
(251, 49, 323, 523, NULL, 0),
(251, 32, 324, 524, NULL, 0),
(251, 6, 350, 550, NULL, 0),
(251, 14, 368, 568, NULL, 0),
(251, 47, 371, 571, NULL, 0),
(251, 34, 389, 589, NULL, 0),
(251, 45, 396, 596, NULL, 0),
(252, 6, 312, 512, NULL, 0),
(252, 36, 316, 516, NULL, 0),
(252, 29, 326, 526, NULL, 0),
(252, 50, 334, 534, NULL, 0),
(252, 14, 349, 549, NULL, 0),
(252, 26, 362, 562, NULL, 0),
(252, 16, 378, 578, NULL, 0),
(252, 43, 384, 584, NULL, 0),
(253, 16, 314, 514, NULL, 0),
(253, 24, 320, 520, NULL, 0),
(253, 43, 361, 561, NULL, 0),
(253, 42, 367, 567, NULL, 0),
(253, 17, 372, 572, NULL, 0),
(254, 27, 335, 535, NULL, 0),
(254, 19, 348, 548, NULL, 0),
(254, 25, 355, 555, NULL, 0),
(254, 30, 359, 559, NULL, 0),
(254, 25, 366, 566, NULL, 0),
(254, 21, 383, 583, NULL, 0),
(255, 32, 309, 509, NULL, 0),
(255, 40, 322, 522, NULL, 0),
(255, 45, 329, 529, NULL, 0),
(255, 23, 333, 533, NULL, 0),
(255, 4, 345, 545, NULL, 0),
(255, 17, 346, 546, NULL, 0),
(255, 3, 376, 576, NULL, 0),
(255, 8, 387, 587, NULL, 0),
(256, 38, 304, 504, NULL, 0),
(256, 16, 310, 510, NULL, 0),
(256, 42, 312, 512, NULL, 0),
(256, 32, 316, 516, NULL, 0),
(256, 32, 325, 525, NULL, 0),
(256, 13, 326, 526, NULL, 0),
(256, 35, 335, 535, NULL, 0),
(256, 50, 336, 536, NULL, 0),
(256, 23, 363, 563, NULL, 0),
(256, 25, 377, 577, NULL, 0),
(256, 21, 383, 583, NULL, 0),
(257, 28, 300, 500, NULL, 0),
(257, 33, 348, 548, NULL, 0),
(257, 20, 369, 569, NULL, 0),
(257, 47, 384, 584, NULL, 0),
(257, 15, 395, 595, NULL, 0),
(258, 9, 348, 548, NULL, 0),
(258, 34, 351, 551, NULL, 0),
(258, 41, 356, 556, NULL, 0),
(258, 26, 360, 560, NULL, 0),
(258, 44, 363, 563, NULL, 0),
(258, 10, 376, 576, NULL, 0),
(259, 28, 314, 514, NULL, 0),
(259, 23, 319, 519, NULL, 0),
(259, 6, 321, 521, NULL, 0),
(259, 39, 342, 542, NULL, 0),
(259, 25, 394, 594, NULL, 0),
(259, 9, 399, 599, NULL, 0),
(259, 26, 400, 600, NULL, 0),
(260, 4, 315, 515, NULL, 0),
(260, 47, 316, 516, NULL, 0),
(260, 18, 320, 520, NULL, 0),
(260, 11, 329, 529, NULL, 0),
(260, 46, 330, 530, NULL, 0),
(260, 43, 343, 543, NULL, 0),
(260, 27, 352, 552, NULL, 0),
(260, 23, 363, 563, NULL, 0),
(261, 12, 306, 506, NULL, 0),
(261, 7, 317, 517, NULL, 0),
(261, 36, 333, 533, NULL, 0),
(261, 45, 364, 564, NULL, 0),
(261, 13, 366, 566, NULL, 0),
(261, 10, 383, 583, NULL, 0),
(261, 12, 394, 594, NULL, 0),
(261, 14, 395, 595, NULL, 0),
(262, 11, 329, 529, NULL, 0),
(262, 38, 345, 545, NULL, 0),
(262, 31, 350, 550, NULL, 0),
(262, 34, 354, 554, NULL, 0),
(262, 39, 361, 561, NULL, 0),
(262, 45, 365, 565, NULL, 0),
(262, 15, 374, 574, NULL, 0),
(262, 25, 385, 585, NULL, 0),
(263, 39, 311, 511, NULL, 0),
(263, 41, 314, 514, NULL, 0),
(263, 17, 332, 532, NULL, 0),
(263, 15, 349, 549, NULL, 0),
(263, 33, 354, 554, NULL, 0),
(263, 34, 387, 587, NULL, 0),
(264, 21, 317, 517, NULL, 0),
(264, 44, 325, 525, NULL, 0),
(264, 18, 365, 565, NULL, 0),
(264, 3, 380, 580, NULL, 0),
(265, 10, 320, 520, NULL, 0),
(265, 12, 346, 546, NULL, 0),
(265, 28, 352, 552, NULL, 0),
(265, 32, 386, 586, NULL, 0),
(266, 19, 314, 514, NULL, 0),
(266, 45, 343, 543, NULL, 0),
(267, 19, 303, 503, NULL, 0),
(267, 27, 309, 509, NULL, 0),
(267, 24, 324, 524, NULL, 0),
(267, 39, 366, 566, NULL, 0),
(267, 5, 381, 581, NULL, 0),
(268, 49, 306, 506, NULL, 0),
(268, 38, 334, 534, NULL, 0),
(268, 34, 335, 535, NULL, 0),
(268, 28, 366, 566, NULL, 0),
(268, 25, 387, 587, NULL, 0),
(269, 1, 301, 501, NULL, 0),
(269, 6, 322, 522, NULL, 0),
(269, 33, 350, 550, NULL, 0),
(269, 10, 357, 557, NULL, 0),
(269, 36, 396, 596, NULL, 0),
(270, 28, 303, 503, NULL, 0),
(270, 49, 304, 504, NULL, 0),
(270, 31, 320, 520, NULL, 0),
(270, 15, 333, 533, NULL, 0),
(270, 17, 338, 538, NULL, 0),
(270, 40, 357, 557, NULL, 0),
(270, 14, 368, 568, NULL, 0),
(270, 18, 398, 598, NULL, 0),
(271, 1, 320, 520, NULL, 0),
(271, 10, 343, 543, NULL, 0),
(271, 35, 349, 549, NULL, 0),
(271, 37, 364, 564, NULL, 0),
(271, 26, 370, 570, NULL, 0),
(272, 25, 308, 508, NULL, 0),
(272, 42, 326, 526, NULL, 0),
(272, 40, 328, 528, NULL, 0),
(272, 4, 329, 529, NULL, 0),
(272, 19, 330, 530, NULL, 0),
(272, 39, 347, 547, NULL, 0),
(272, 6, 348, 548, NULL, 0),
(273, 33, 302, 502, NULL, 0),
(273, 47, 304, 504, NULL, 0),
(273, 7, 312, 512, NULL, 0),
(273, 28, 340, 540, NULL, 0),
(273, 4, 372, 572, NULL, 0),
(273, 27, 385, 585, NULL, 0),
(274, 37, 336, 536, NULL, 0),
(274, 50, 345, 545, NULL, 0),
(274, 29, 355, 555, NULL, 0),
(274, 16, 374, 574, NULL, 0),
(275, 22, 336, 536, NULL, 0),
(275, 26, 344, 544, NULL, 0),
(275, 15, 346, 546, NULL, 0),
(275, 36, 350, 550, NULL, 0),
(275, 34, 368, 568, NULL, 0),
(275, 19, 369, 569, NULL, 0),
(276, 49, 312, 512, NULL, 0),
(276, 44, 334, 534, NULL, 0),
(276, 48, 371, 571, NULL, 0),
(276, 47, 377, 577, NULL, 0),
(276, 5, 378, 578, NULL, 0),
(276, 39, 380, 580, NULL, 0),
(276, 18, 397, 597, NULL, 0),
(277, 14, 315, 515, NULL, 0),
(277, 34, 320, 520, NULL, 0),
(277, 41, 322, 522, NULL, 0),
(277, 12, 340, 540, NULL, 0),
(277, 24, 345, 545, NULL, 0),
(277, 42, 364, 564, NULL, 0),
(277, 19, 365, 565, NULL, 0),
(277, 50, 372, 572, NULL, 0),
(278, 45, 324, 524, NULL, 0),
(278, 2, 326, 526, NULL, 0),
(278, 48, 366, 566, NULL, 0),
(279, 39, 307, 507, NULL, 0),
(279, 49, 341, 541, NULL, 0),
(279, 50, 360, 560, NULL, 0),
(279, 19, 366, 566, NULL, 0),
(279, 25, 386, 586, NULL, 0),
(279, 14, 397, 597, NULL, 0),
(280, 5, 303, 503, NULL, 0),
(280, 37, 327, 527, NULL, 0),
(280, 46, 369, 569, NULL, 0),
(281, 24, 308, 508, NULL, 0),
(281, 35, 315, 515, NULL, 0),
(281, 45, 348, 548, NULL, 0),
(281, 35, 384, 584, NULL, 0),
(282, 40, 303, 503, NULL, 0),
(282, 25, 304, 504, NULL, 0),
(282, 28, 314, 514, NULL, 0),
(282, 20, 333, 533, NULL, 0),
(282, 7, 351, 551, NULL, 0),
(282, 23, 367, 567, NULL, 0),
(282, 12, 374, 574, NULL, 0),
(283, 40, 302, 502, NULL, 0),
(283, 38, 316, 516, NULL, 0),
(283, 10, 317, 517, NULL, 0),
(283, 41, 322, 522, NULL, 0),
(283, 1, 343, 543, NULL, 0),
(283, 23, 364, 564, NULL, 0),
(283, 50, 370, 570, NULL, 0),
(283, 14, 373, 573, NULL, 0),
(283, 37, 375, 575, NULL, 0),
(284, 41, 318, 518, NULL, 0),
(284, 13, 389, 589, NULL, 0),
(285, 1, 323, 523, NULL, 0),
(285, 44, 324, 524, NULL, 0),
(285, 23, 366, 566, NULL, 0),
(285, 35, 374, 574, NULL, 0),
(285, 23, 391, 591, NULL, 0),
(285, 19, 393, 593, NULL, 0),
(285, 1, 396, 596, NULL, 0),
(286, 19, 305, 505, NULL, 0),
(286, 5, 313, 513, NULL, 0),
(286, 21, 331, 531, NULL, 0),
(286, 44, 334, 534, NULL, 0),
(286, 24, 345, 545, NULL, 0),
(286, 25, 349, 549, NULL, 0),
(286, 44, 361, 561, NULL, 0),
(286, 8, 376, 576, NULL, 0),
(286, 6, 380, 580, NULL, 0),
(287, 28, 319, 519, NULL, 0),
(287, 8, 323, 523, NULL, 0),
(287, 46, 358, 558, NULL, 0),
(287, 45, 364, 564, NULL, 0),
(287, 5, 384, 584, NULL, 0),
(287, 40, 390, 590, NULL, 0),
(288, 28, 312, 512, NULL, 0),
(288, 28, 329, 529, NULL, 0),
(288, 6, 336, 536, NULL, 0),
(288, 24, 359, 559, NULL, 0),
(288, 23, 392, 592, NULL, 0),
(289, 22, 338, 538, NULL, 0),
(289, 47, 342, 542, NULL, 0),
(289, 47, 355, 555, NULL, 0),
(289, 23, 356, 556, NULL, 0),
(289, 21, 375, 575, NULL, 0),
(289, 40, 383, 583, NULL, 0),
(290, 5, 308, 508, NULL, 0),
(290, 27, 324, 524, NULL, 0),
(290, 4, 338, 538, NULL, 0),
(290, 2, 339, 539, NULL, 0),
(290, 7, 340, 540, NULL, 0),
(290, 28, 346, 546, NULL, 0),
(290, 37, 369, 569, NULL, 0),
(291, 24, 312, 512, NULL, 0),
(291, 10, 342, 542, NULL, 0),
(291, 29, 347, 547, NULL, 0),
(291, 6, 362, 562, NULL, 0),
(291, 42, 366, 566, NULL, 0),
(292, 11, 312, 512, NULL, 0),
(292, 6, 325, 525, NULL, 0),
(292, 1, 326, 526, NULL, 0),
(292, 42, 334, 534, NULL, 0),
(292, 42, 366, 566, NULL, 0),
(292, 32, 391, 591, NULL, 0),
(293, 39, 316, 516, NULL, 0),
(293, 46, 352, 552, NULL, 0),
(293, 17, 365, 565, NULL, 0),
(293, 39, 368, 568, NULL, 0),
(294, 24, 306, 506, NULL, 0),
(294, 16, 315, 515, NULL, 0),
(294, 48, 325, 525, NULL, 0),
(294, 46, 333, 533, NULL, 0),
(294, 22, 342, 542, NULL, 0),
(294, 7, 363, 563, NULL, 0),
(294, 3, 374, 574, NULL, 0),
(295, 3, 307, 507, NULL, 0),
(295, 19, 349, 549, NULL, 0),
(295, 29, 361, 561, NULL, 0),
(295, 10, 394, 594, NULL, 0),
(296, 25, 316, 516, NULL, 0),
(296, 33, 323, 523, NULL, 0),
(296, 14, 331, 531, NULL, 0),
(296, 7, 343, 543, NULL, 0),
(296, 24, 393, 593, NULL, 0),
(296, 23, 397, 597, NULL, 0),
(297, 41, 342, 542, NULL, 0),
(297, 39, 377, 577, NULL, 0),
(298, 17, 302, 502, NULL, 0),
(298, 1, 324, 524, NULL, 0),
(298, 36, 353, 553, NULL, 0),
(298, 23, 371, 571, NULL, 0),
(298, 36, 386, 586, NULL, 0),
(298, 11, 398, 598, NULL, 0),
(299, 5, 324, 524, NULL, 0),
(299, 27, 325, 525, NULL, 0),
(299, 49, 367, 567, NULL, 0),
(299, 35, 387, 587, NULL, 0),
(300, 4, 354, 554, NULL, 0),
(300, 23, 369, 569, NULL, 0),
(300, 27, 381, 581, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Purchases`
--
ALTER TABLE `Purchases`
  ADD PRIMARY KEY (`Item_id`,`Purchase_basket_id`);
COMMIT;

-- Generation time: Thu, 08 Nov 2018 06:10:58 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_22
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `User_id` int(11) NOT NULL AUTO_INCREMENT,
  `User_name` text DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `Semester` enum('I','II','III','IV','V','VI','VIII','VII') DEFAULT NULL,
  `Department` enum('CSE','ECE','EEE','MECH','CIVIL','BT') DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `Social_id` text DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

INSERT INTO `Users` VALUES ('1','ila57','Male','IV','BT','viva.hane@example.com','8'),
('2','fyundt','Female','VI','BT','afunk@example.net','8'),
('3','hackett.cortez','Male','I','EEE','ella47@example.net','1'),
('4','dfranecki','Female','II','BT','lilyan.champlin@example.net','1'),
('5','luz.mcdermott','Male','VI','CSE','xdickens@example.net','6'),
('6','barrows.lolita','Male','III','ECE','ryann.hamill@example.net','8'),
('7','cschroeder','Female','II','CIVIL','ulises.wilkinson@example.org','5'),
('8','linnea.rice','Female','I','EEE','nrogahn@example.org','6'),
('9','nbarton','Male','VII','ECE','devan57@example.org','3'),
('10','ucrooks','Female','VII','EEE','lowe.dasia@example.net','2'),
('11','tharvey','Female','IV','ECE','fisher.mylene@example.net','5'),
('12','gmcdermott','Male','VI','CSE','skunze@example.net',''),
('13','mcdermott.assunta','Male','VII','CIVIL','zbaumbach@example.com',''),
('14','kromaguera','Male','IV','CIVIL','tianna.crona@example.net','9'),
('15','aufderhar.bernard','Male','I','CIVIL','marquardt.damion@example.org',''),
('16','christian.mante','Male','IV','ECE','flarson@example.com','4'),
('17','maia23','Male','IV','BT','trent.baumbach@example.org','7'),
('18','metz.tremaine','Male','II','CSE','darrel.christiansen@example.net','1'),
('19','gabe.heller','Female','I','MECH','lind.jerrod@example.org','3'),
('20','azulauf','Female','V','BT','cartwright.fatima@example.com','9'),
('21','acarroll','Male','VIII','EEE','herbert99@example.net','4'),
('22','teagan.schimmel','Male','VIII','CIVIL','leo.dickens@example.org','1'),
('23','goldner.amelie','Male','I','EEE','uschinner@example.org','1'),
('24','margret76','Female','VIII','CIVIL','bruce19@example.net','4'),
('25','hayes.angeline','Female','VI','EEE','sabina.runolfsson@example.org','6'),
('26','kabshire','Male','V','EEE','emely30@example.net','5'),
('27','rowena.balistreri','Male','VI','MECH','delbert.considine@example.org',''),
('28','albin96','Female','VIII','CSE','gleichner.kellie@example.com','4'),
('29','brice.swift','Female','VI','CSE','aaliyah.dibbert@example.org','1'),
('30','shaniya88','Female','V','MECH','bdickens@example.com','7'),
('31','yost.bryana','Male','VII','CSE','dereck56@example.net','4'),
('32','nwisoky','Female','VI','ECE','kristopher.bartoletti@example.com','8'),
('33','joel54','Female','VIII','BT','alanna87@example.org','4'),
('34','kschmitt','Male','V','EEE','flatley.lucious@example.com','6'),
('35','brendon89','Male','VII','EEE','quitzon.freda@example.org','2'),
('36','darrell.will','Male','IV','MECH','gfeest@example.com','3'),
('37','frederique93','Male','VII','CIVIL','bbernier@example.com','9'),
('38','jblanda','Male','I','EEE','zschulist@example.org','6'),
('39','awehner','Female','II','ECE','lacy80@example.net','4'),
('40','morris68','Male','V','CIVIL','alexzander.zemlak@example.com','9'),
('41','imani.hauck','Male','V','ECE','caleigh.hintz@example.net','1'),
('42','leon.koss','Female','VII','CIVIL','gregorio72@example.com','3'),
('43','eldred.hickle','Male','I','CSE','xlynch@example.org','8'),
('44','willms.elyssa','Female','VI','MECH','ihilll@example.org','6'),
('45','royce19','Male','II','ECE','uspencer@example.net','9'),
('46','brandyn31','Female','V','MECH','pschinner@example.org',''),
('47','gusikowski.frida','Male','VIII','MECH','lonzo02@example.net','3'),
('48','wilbert06','Male','II','CSE','bartell.henri@example.com','3'),
('49','lonnie.roberts','Female','I','CIVIL','loyal.murphy@example.com','2'),
('50','thomas17','Female','V','CIVIL','gavin.simonis@example.org','6'),
('51','alejandra20','Female','V','EEE','darlene39@example.com','9'),
('52','alessandra.feeney','Male','VI','MECH','metz.rachel@example.org','4'),
('53','rowland.wilderman','Male','VIII','MECH','tillman.zella@example.net','9'),
('54','considine.arch','Female','I','BT','amani.halvorson@example.org','7'),
('55','kennedi68','Female','I','CIVIL','marge.heathcote@example.org','8'),
('56','opaucek','Female','I','CSE','kutch.tiffany@example.com','7'),
('57','okey35','Female','III','MECH','beahan.jason@example.com','1'),
('58','fausto75','Female','V','EEE','carole.turner@example.org','3'),
('59','haley.polly','Male','VII','BT','lakin.dayna@example.net',''),
('60','elva27','Female','III','MECH','herdman@example.org','2'),
('61','christa92','Female','VI','CIVIL','cortez.wiegand@example.com','4'),
('62','samanta20','Female','VIII','ECE','klein.annamae@example.net','2'),
('63','lucinda72','Female','VI','ECE','heathcote.josephine@example.org','3'),
('64','khalid.bernier','Female','I','CIVIL','betsy31@example.net','7'),
('65','goyette.shanie','Male','VIII','BT','gust20@example.net','7'),
('66','rebekah.bednar','Female','I','EEE','yosinski@example.com','8'),
('67','tnolan','Female','VII','BT','murazik.louvenia@example.com','7'),
('68','dkutch','Male','V','ECE','kebert@example.net','6'),
('69','dschneider','Male','VIII','CIVIL','torp.kamron@example.org','9'),
('70','dillan27','Female','VI','CSE','asia21@example.net','2'),
('71','harold.towne','Female','VII','BT','gerald45@example.org','4'),
('72','dibbert.pearl','Female','VIII','CSE','maude58@example.org','7'),
('73','carmen.klein','Male','VI','CIVIL','rita45@example.com','8'),
('74','ltoy','Female','II','CIVIL','lisette.crist@example.org','5'),
('75','langosh.phoebe','Female','III','BT','miller.malvina@example.org','9'),
('76','alia.thiel','Male','III','MECH','reichel.hattie@example.org','4'),
('77','judah50','Female','II','CIVIL','leann45@example.org','5'),
('78','halvorson.elisa','Female','II','CIVIL','pkeebler@example.org',''),
('79','okreiger','Female','VIII','CIVIL','jay44@example.com','3'),
('80','gterry','Female','II','CIVIL','anita.lubowitz@example.com','1'),
('81','aurelio.gutmann','Female','IV','ECE','beier.elinor@example.com',''),
('82','egrant','Male','III','CIVIL','dpouros@example.org','7'),
('83','vstokes','Male','V','BT','olaf.breitenberg@example.com','8'),
('84','schumm.leone','Female','IV','CSE','florine08@example.com','5'),
('85','mitchell.whitney','Male','VIII','MECH','vparisian@example.net','5'),
('86','nkihn','Female','VIII','BT','vborer@example.org','9'),
('87','grady.wayne','Male','II','CSE','beier.cathryn@example.com','2'),
('88','ahmad72','Male','II','MECH','willa48@example.com','9'),
('89','jedidiah79','Male','II','ECE','considine.hillary@example.com','5'),
('90','georgette.stokes','Female','VI','MECH','tromp.hailie@example.com','9'),
('91','beier.susie','Female','VIII','CSE','ho\'kon@example.net','6'),
('92','estevan.zboncak','Male','I','ECE','bayer.cali@example.com','1'),
('93','liliana96','Female','VI','ECE','lavada73@example.org','3'),
('94','ernser.leann','Male','VIII','EEE','mayert.marcelo@example.org','1'),
('95','schroeder.emmalee','Male','V','CIVIL','tyra74@example.org','4'),
('96','roslyn52','Male','VII','EEE','mayra29@example.net','3'),
('97','yherman','Male','IV','CIVIL','ukub@example.com','1'),
('98','pkuhn','Male','VII','ECE','hettinger.renee@example.net','3'),
('99','price.dale','Female','VI','EEE','eichmann.amalia@example.net','2'),
('100','kihn.fiona','Male','III','MECH','keagan.feil@example.org','8'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

update Purchases set User_id=Purchase_basket_id-200;

-- Generation time: Sun, 04 Nov 2018 11:26:03 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_25
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `Transactions`;
CREATE TABLE `Transactions` (
  `Transaction_timestamp` datetime DEFAULT NULL,
  `Transaction_amount` decimal(10,0) DEFAULT NULL,
  `Transaction_id` int(11) DEFAULT NULL,
  `Hash` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Transactions` VALUES ('1988-09-14 08:43:15','534','509','ea76a16b80eb3ef646f5f860da3221daaddfe5b3'),
('1971-03-30 14:45:18','488','582','4a0c8db9ad38b678a19fc4ad873770121c03a22d'),
('1979-04-22 00:16:54','536','593','bfd69d57e3d783b86b897362a763ec54ea39d5e0'),
('1972-02-05 20:28:05','384','596','bc9f3fc0abe45b50d2435bd953f8e86612278651'),
('2017-07-10 10:03:54','604','521','1195b640660ec9321d3239fa39208fc7bdbfa43a'),
('1986-06-23 05:58:10','609','541','58a29112265aa48be0ab3ba9cf6edeaad7a15c76'),
('1973-09-05 16:32:32','853','595','7fbb4273a837f2b17599447d6c545d41d1df05f0'),
('2003-03-22 00:04:23','489','573','523199c52b6d9790dccea657601e3cd656cfd6f6'),
('2008-06-25 09:09:26','733','545','3f7824036865fc97347bc6566a69a91c98597144'),
('1987-10-10 22:07:07','165','580','4209136b033462891c4665270fe61ee78481c48d'),
('1975-03-27 07:56:02','262','583','aea2453a287b5efcfe3bd10f8bcbb14ac1a60057'),
('1974-06-14 19:30:32','449','520','112a2a43c3d49cecd4d71e50585d53543c587232'),
('1985-04-03 03:48:47','55','504','1e03c6d1e2dea1f05f135df313e3f88679703255'),
('2005-01-12 03:52:42','453','512','fdaf3756bf472c55502695ff0e1a33352bbb4dfa'),
('1981-02-13 04:55:13','530','570','b6000621969620022771472acd6c1565f8aa8ffa'),
('1986-07-20 19:33:09','625','532','645098c97e61557a2201a74e46f8ca28bc5e3d90'),
('1984-06-18 13:44:29','711','577','c1a98923fa5e222aa5e3566d5a029e0b03e2ea4a'),
('1982-11-06 00:37:41','457','599','c58683cd15ae17d23a2ebd1f2e216b95614aa817'),
('2004-02-26 22:27:53','896','566','aba6a632901803216855a180d6221622481064b4'),
('1991-10-02 12:26:02','890','561','7f9a750f5f27840ba7e9647153a4dcabcff60aa3'),
('1973-11-08 06:56:45','691','518','ae635f2f59d159af9298fe687edf68a309293edb'),
('1980-12-20 18:19:41','262','536','0406e226ffb84b7910eca8e7f9d358a764881e25'),
('1975-12-23 19:49:36','203','537','d89b640b67c185ff3608fea47fa5090e4b3f10c6'),
('2005-10-15 21:19:08','679','513','cbc590f9c5f20dfd5e8cc88aa0fb03c4fb948dfd'),
('1985-07-17 05:06:08','179','572','2f75d598690bed5c61ab52ed1cdf45796f8267ab'),
('2012-01-27 16:48:49','481','558','0ca9f71fc7329cbb8d8cb45c9e3649cd03adc1e0'),
('1984-02-24 19:45:08','163','579','4508763deb6b4ef5f0c559aa89727dc2560792ec'),
('1979-09-30 03:26:06','626','576','57637a2909a31a4e8ebdde984652b2312cbec821'),
('1979-12-04 05:05:25','239','564','41602fe559dfddb117b2a68b0b90cba69896a5d4'),
('1988-07-16 06:06:38','599','511','4afe805e4025697afa05bab4a1b503f7b2a3d880'),
('1998-03-18 08:15:04','39','505','51424fed5e7cbd2f448b8c5f80286a4faa362bf1'),
('1984-02-23 15:21:27','542','567','33d7619f6fb4d0b82995ced272efd0320b8f7d06'),
('1995-01-13 16:41:58','201','581','f1fc52455e791f66dae4034e5daf68e31e02f11e'),
('1996-05-11 02:17:50','124','524','df7bf7275db40223fe0b332844c4dc07c355b5fc'),
('1999-11-19 07:30:31','99','526','aa7c9038d35a83fc8e6f3823784eaa1de2c15d19'),
('1979-10-19 11:27:52','187','543','030bff67a7c709b0fc3a1a69166cbd5b0be026b5'),
('1973-07-28 03:04:50','500','598','a9909209b07884f73e1a6cba5751b42ff44f82a8'),
('1982-02-05 04:02:20','895','517','9c7f85b1d6ce691dfc44116060956833b3717926'),
('2007-06-03 21:34:59','529','585','440382f435ff4d2e998c852ed7d2c2c91704bc8f'),
('2009-02-23 12:27:38','761','533','ac159432b9b6dd33944f05fcdc95e219953d96e7'),
('1971-05-11 11:17:37','900','555','401794cf3f1b3a53703f3f4b5d16a07e0e6cbf3f'),
('1989-10-11 22:20:45','576','519','a1e1ae4f52d6c3076757cd9b1c7004202c6524ab'),
('1994-08-19 22:02:54','548','515','eba8de13413877c329f28ec043e6b85b8b2db234'),
('2013-01-27 14:28:34','827','550','959279473afd5c36b313cca8786b01bbe9c936e9'),
('2018-06-08 12:09:46','189','562','3640e7e1ad5b08e5a914ba2311c1f7ac2c9a4171'),
('1987-10-30 14:56:39','51','557','49610089e56c2b4a315d0478767d25d6c55e4a12'),
('1999-02-18 04:05:35','538','597','807d3a48da7b230ab3bdc9f9a350d713b4369ad2'),
('2002-02-18 06:59:12','357','544','70417a6f9db00169d5ef17974f170824a7d13e1c'),
('1996-11-07 09:58:21','293','534','0c26bae721195f6ad0077b80b833978a02454aa9'),
('2015-06-22 12:45:26','470','500','b71bbfb47555256ced6223c207158f5ce0d53c82'),
('2002-11-27 06:37:59','15','589','90def05a4aebbe31723df3d68629f56c4ed67aec'),
('1983-05-12 03:26:11','95','510','098c4f31bc16164edaca2f8cefdc2d1d200fe861'),
('2015-11-23 06:30:05','452','539','97e673ccd2387e1a782e61e68f4e4c36d64f8319'),
('2014-07-08 04:15:51','647','528','38109040e929bcd8d9197b156c89ac3e15c82567'),
('1994-10-22 14:35:47','258','525','c9d80ee02082c6e6d32eb54b5c901fc66b9279eb'),
('1987-06-26 14:07:40','15','529','f53c0cc0d1c0a900bd58c901a86b9148bbdc7971'),
('1978-05-11 05:28:09','79','590','27eec0ecea88e40c96dbcff34e0ad398c50945b7'),
('1974-04-04 06:14:02','721','554','ea2877c20fca9ef4b538123af4f8bf8609cacf35'),
('1977-01-11 19:47:05','288','552','db6ceeaf755ea0bb342fd9026e16922bd9f24a9c'),
('1992-02-27 16:57:59','970','508','5e867b35836efb5a633647ebc84652bf5cc40d4b'),
('2002-12-31 01:45:24','336','542','6db76813e25d6c28e1f69f2b0ebb0be63bc0b9b1'),
('2015-08-06 10:54:30','659','560','9b36266ef34ecfa9f2a08d609f8b6fc011419455'),
('1993-11-20 04:34:54','968','568','3ad9784832aa238f43e2b70c03d88abe4f621f04'),
('1986-05-08 17:19:29','720','569','3ba03572e66da0a432f10aaaae81af048e5d13d3'),
('1973-02-19 00:17:38','175','516','854a8597ca4a57c141e234044ca42217d441c633'),
('2002-07-20 13:10:16','527','587','bce9f1f7ca60e8f242dc93570d812309383da8c7'),
('2016-02-29 09:59:37','746','501','f0f3d4a09682f00d4e9a57565dd219f0b836c968'),
('1986-04-07 07:35:51','246','592','8c8231786fdbdff569975e506cafbd84488f6302'),
('1971-12-29 22:08:26','740','522','7fdfb83ee880b94879f9f6cf870d09d3acadb76f'),
('1986-09-15 03:20:50','30','553','c721a0828939031c4d9d2abac3a21ffe2321b13f'),
('1980-07-20 15:12:31','750','540','971ca16c66f3cfb8f2125eaf477251a07a2c39cb'),
('1995-01-27 06:13:07','139','514','9e6f05694d51f13a41837006ad9fc205e7e42244'),
('2002-12-04 09:23:53','642','575','01220d966c2c89262334f6028c4b3077b0dc638d'),
('2003-07-25 23:58:13','703','502','a0a5d8793f876050d67ff495fc1ebc6cdd08a408'),
('2013-11-19 09:06:26','937','548','c815095f7bcb3615d34a4b4a975c9eb09fd10b42'),
('2000-07-06 19:17:13','919','506','68e373954f6115373cf6d629df756efcf43c9419'),
('1979-08-30 16:23:31','614','591','2449db548c301b059aa8e7b51311a3c3728b6241'),
('1977-11-20 22:29:41','836','530','7716978b9f15d9dbb4097aa9fdce6e1141ca7818'),
('1981-12-29 18:17:08','751','578','c7d0b5f0380a8b01f852d39eb9806dc3cd9c9c32'),
('2018-08-05 17:48:03','125','549','7c05edd282d713bca1c44efa36bb3e456b5c88f4'),
('1990-06-14 09:17:08','410','563','e80c5821793efc234737ecdb33452adb9b4b6bc7'),
('2008-06-07 04:05:20','577','527','831b61f0378cbfacb8806ff3057a6b8cdda35ab2'),
('2013-06-11 11:40:38','574','574','6d46b1e838489fb3d9f1001bbbe9e25db5657cf8'),
('1995-12-02 12:25:09','536','586','b4ed38eae1dbae4082421134032ec19e0e2b9b10'),
('1971-06-22 21:26:23','204','594','73bff4e32fca7ac8b1ac31f9b69ea26ce7bf287d'),
('2015-08-14 04:25:57','889','565','ea0f3120eeb75d606756c0b0e640d6f82816dc7e'),
('2013-07-12 18:26:39','167','600','d50fd09d3d7d0c5af5bb1befa4ec4a62183d0ce2'),
('1995-01-15 07:05:47','719','546','7a4d42a2b547e8340b5c4762b9d536b923d246a9'),
('1998-11-19 17:20:05','364','538','24eaa3c27f1eaab10109c0a093dbf309f8c7fc78'),
('2001-03-10 01:10:38','951','559','6b40bb13b954ac3b79e5f806b4932d947732196d'),
('2002-06-27 15:11:33','550','547','9d674131885bae2d64b3194bc695f06d4a5470d4'),
('2018-10-31 21:15:09','969','584','c9b49ad1a2d79710ea6ce8af555b306e15fa63c4'),
('2004-07-25 23:34:13','844','503','523168372f3baad3a640b5f3c3d259c4f78e439e'),
('2001-04-17 02:35:57','947','571','62f2c00d82fca7ee5f0ad9017e5641f4b4f18782'),
('1977-12-30 22:17:20','376','588','ea5848b01d2ebe4b634f24af5e2a6b7df41c641c'),
('1984-03-01 17:47:13','436','556','77bdd0dd3270950fe01bf9f61e7bf84534a5378d'),
('2015-09-02 10:05:11','471','551','a571efe4cab05c3849aaa87c5f08896d780cc1d3'),
('1978-12-25 03:53:01','673','535','63a160c67495d08ded7506317a57bf55a5a6fda2'),
('1991-03-20 19:53:30','495','531','fc6e2e9489cd5297e5344e2a649a26d4b15596f8'),
('1979-05-01 11:28:07','199','523','71367f48532a7a773bfd9a12d3ba2eb20bde3c00'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


##############Favorities

DROP TABLE IF EXISTS `Favorites`;
CREATE TABLE `Favorites` (
  `Item_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  PRIMARY KEY (`Item_id`,`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Favorites` VALUES 
('201','334'),
('201','395'),
('201','332'),
('201','347'),
('201','375'),
('202','347'),
('202','301'),
('202','384'),
('202','317'),
('202','383'),
('202','303'),
('203','316'),
('203','368'),
('204','319'),
('204','398'),
('205','386'),
('205','372'),
('206','327'),
('206','394'),
('206','353'),
('207','353'),
('207','362'),
('207','384'),
('207','336'),
('207','346'),
('207','344'),
('207','318'),
('208','393'),
('208','351'),
('208','382'),
('208','364'),
('209','310'),
('209','313'),
('209','395'),
('209','371'),
('209','384'),
('209','343'),
('209','321'),
('210','374'),
('210','360'),
('210','324'),
('210','342'),
('210','323'),
('210','316'),
('211','338'),
('211','328'),
('211','326'),
('212','335'),
('212','315'),
('212','301'),
('212','317'),
('212','366'),
('213','395'),
('213','384'),
('213','380'),
('214','360'),
('214','359'),
('214','333'),
('214','384'),
('215','327'),
('215','347'),
('215','307'),
('215','318'),
('215','367'),
('215','364');