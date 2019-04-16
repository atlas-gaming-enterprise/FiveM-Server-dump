-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.35-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for vrpfx
CREATE DATABASE IF NOT EXISTS `vrpfx` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vrpfx`;

-- Dumping structure for table vrpfx.vrp_srv_data
CREATE TABLE IF NOT EXISTS `vrp_srv_data` (
  `dkey` varchar(100) NOT NULL,
  `dvalue` text,
  PRIMARY KEY (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrpfx.vrp_srv_data: ~3 rows (approximately)
/*!40000 ALTER TABLE `vrp_srv_data` DISABLE KEYS */;
INSERT INTO `vrp_srv_data` (`dkey`, `dvalue`) VALUES
	('chest:u1veh_fbi4', '{"cocaine":{"amount":60}}'),
	('chest:u5home', '[]'),
	('vRP:hidden_trs', '{"lsd bar":{"position":[1992.5993652344,3044.1806640625,47.215068817139],"timestamp":1538793544},"police1":{"position":[439.57083129883,-995.072265625,30.689596176147],"timestamp":1538793544},"weed field":{"position":[2208.0104980469,5577.6987304688,53.739212036133],"timestamp":1538793544},"police3":{"position":[-449.43395996094,6010.796875,31.716377258301],"timestamp":1538793544},"cocaine dealer":{"position":[-631.00543212891,-229.42568969727,38.057052612305],"timestamp":1538793544},"police2":{"position":[1851.6605224609,3690.6713867188,34.267044067383],"timestamp":1538793544},"ems":{"position":[465.04064941406,3569.1174316406,33.238555908203],"timestamp":1538793544}}');
/*!40000 ALTER TABLE `vrp_srv_data` ENABLE KEYS */;

-- Dumping structure for table vrpfx.vrp_users
CREATE TABLE IF NOT EXISTS `vrp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_login` varchar(100) DEFAULT NULL,
  `whitelisted` tinyint(1) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table vrpfx.vrp_users: ~14 rows (approximately)
/*!40000 ALTER TABLE `vrp_users` DISABLE KEYS */;
INSERT INTO `vrp_users` (`id`, `last_login`, `whitelisted`, `banned`) VALUES
	(1, '192.168.0.1 13:42:05 08/10/2018', 1, 0),
	(2, '99.244.193.27 17:39:16 06/10/2018', 1, 0),
	(3, '192.168.0.1 13:14:13 08/10/2018', 1, 0),
	(5, '47.39.68.217 13:47:31 07/10/2018', 0, 0),
	(6, '80.181.31.214 05:59:13 26/09/2018', 0, 0),
	(7, '174.230.132.193 11:48:02 26/09/2018', 0, 0),
	(8, '83.248.11.239 16:28:53 26/09/2018', 0, 0),
	(9, '50.25.250.108 03:33:32 28/09/2018', 0, 0),
	(10, '93.109.217.1 06:09:44 30/09/2018', 0, 0),
	(11, '50.81.128.81 23:52:19 01/10/2018', 0, 0),
	(12, '66.68.175.85 13:20:14 07/10/2018', 1, 0),
	(13, '24.208.91.206 05:18:10 07/10/2018', 0, 0),
	(14, '118.237.178.193 13:05:41 07/10/2018', 0, 0),
	(15, '173.16.106.88 15:38:07 07/10/2018', 0, 0);
/*!40000 ALTER TABLE `vrp_users` ENABLE KEYS */;

-- Dumping structure for table vrpfx.vrp_user_business
CREATE TABLE IF NOT EXISTS `vrp_user_business` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` text,
  `capital` int(11) DEFAULT NULL,
  `laundered` int(11) DEFAULT NULL,
  `reset_timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_business_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrpfx.vrp_user_business: ~0 rows (approximately)
/*!40000 ALTER TABLE `vrp_user_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrp_user_business` ENABLE KEYS */;

-- Dumping structure for table vrpfx.vrp_user_data
CREATE TABLE IF NOT EXISTS `vrp_user_data` (
  `user_id` int(11) NOT NULL,
  `dkey` varchar(100) NOT NULL,
  `dvalue` text,
  PRIMARY KEY (`user_id`,`dkey`),
  CONSTRAINT `fk_user_data_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrpfx.vrp_user_data: ~20 rows (approximately)
/*!40000 ALTER TABLE `vrp_user_data` DISABLE KEYS */;
INSERT INTO `vrp_user_data` (`user_id`, `dkey`, `dvalue`) VALUES
	(1, 'vRP:datatable', '{"health":120,"thirst":73.429231335943,"customization":{"13":[0,0],"model":"mp_m_freemode_01","12":[0,0],"11":[0,0],"10":[0,0],"4":[0,0],"5":[0,0],"2":[0,0],"3":[0,0],"8":[0,0],"9":[0,0],"6":[0,0],"7":[0,0],"19":[0,0],"18":[0,0],"17":[0,0],"16":[0,0],"0":[0,0],"1":[0,0],"14":[0,0],"15":[0,0]},"inventory":{"water":{"amount":2},"Medical Kit.":{"amount":5},"Water":{"amount":5},"Medical Kit":{"amount":8},"police_report":{"amount":2},"Police Report":{"amount":13},"medkit":{"amount":1},"police report":{"amount":8},"med kit":{"amount":5}},"position":{"x":341.06417846679,"y":-1388.0573120117,"z":32.468955993652},"groups":{"Federal Agent":true,"recruiter":true,"user":true,"cop":true,"ems":true,"admin":true,"superadmin":true},"phone_directory":[],"gaptitudes":{"physical":{"strength":30},"laboratory":{"lsd":0,"weed":0,"cocaine":0},"hacker":{"lua":0,"c++":0,"hacking":0,"logic":0},"science":{"mathematics":0,"chemicals":0}},"hunger":84.435673621939}'),
	(1, 'vRP:police_records', ''),
	(2, 'vRP:datatable', '{"gaptitudes":{"physical":{"strength":30},"science":{"mathematics":0,"chemicals":0},"hacker":{"lua":0,"hacking":0,"logic":0,"c++":0},"laboratory":{"lsd":0,"weed":0,"cocaine":0}},"hunger":0,"groups":{"cop":true,"user":true,"UBER":true},"inventory":[],"customization":{"13":[0,0],"14":[0,0],"11":[0,0],"12":[0,0],"18":[0,0],"17":[0,0],"16":[0,0],"15":[0,0],"19":[0,0],"9":[0,0],"7":[0,0],"model":"mp_m_freemode_01","5":[0,0],"6":[0,0],"3":[0,0],"4":[0,0],"1":[0,0],"2":[0,0],"0":[0,0],"10":[0,0],"8":[0,0]},"thirst":0,"position":{"x":341.05844116211,"y":-1388.5704345703,"z":32.638450622558},"health":120}'),
	(2, 'vRP:jail:time', '-1'),
	(3, 'vRP:datatable', '{"health":120,"gaptitudes":{"laboratory":{"cocaine":0,"weed":0,"lsd":0},"science":{"chemicals":0,"mathematics":0},"hacker":{"logic":0,"lua":0,"hacking":0,"c++":0},"physical":{"strength":30}},"groups":{"superadmin":true,"Federal Agent":true,"cop":true,"user":true},"position":{"y":-1388.3486938477,"z":33.475547790527,"x":340.85745239258},"thirst":71.378032890506,"inventory":{"tacos":{"amount":32},"medkit":{"amount":16},"water":{"amount":7}},"hunger":53.189016445254,"customization":{"1":[0,0],"2":[0,0],"0":[0,0],"9":[0,0],"7":[0,0],"8":[0,0],"5":[0,0],"6":[0,0],"3":[0,0],"4":[0,0],"10":[0,0],"11":[0,0],"12":[0,0],"model":"mp_m_freemode_01","14":[0,0],"13":[0,0],"16":[0,0],"15":[0,0],"19":[0,0],"18":[0,0],"17":[0,0]}}'),
	(3, 'vRP:jail:time', '-1'),
	(3, 'vRP:police_records', '[Fine] 250 $ for Speeding<br />[Fine] 100 $ for Insult<br />[Fine] 100 $ for No<br />[Fine] 100 $ for NOS FIX it ticket<br />[Fine] 250 $ for Speeding<br />'),
	(5, 'vRP:datatable', '{"hunger":5.1198430589564,"thirst":5.7396861179129,"customization":{"model":"mp_m_freemode_01","1":[0,0],"2":[0,0],"0":[0,0],"15":[0,0],"9":[0,0],"13":[0,0],"7":[0,0],"8":[0,0],"5":[0,0],"6":[0,0],"3":[0,0],"4":[0,0],"16":[0,0],"12":[0,0],"14":[0,0],"10":[0,0],"17":[0,0],"18":[0,0],"19":[0,0],"11":[0,0]},"inventory":{"dirty_money":{"amount":263738}},"groups":{"ems":true,"user":true,"Bounty Hunter":true},"phone_directory":[],"gaptitudes":{"physical":{"strength":30},"hacker":{"lua":0,"c++":0,"hacking":0,"logic":0},"science":{"mathematics":0,"chemicals":0},"laboratory":{"cocaine":0,"weed":0,"lsd":0}},"health":120,"position":{"y":-1388.4586181641,"z":32.602439880371,"x":340.76754760742}}'),
	(5, 'vRP:jail:time', '-1'),
	(5, 'vRP:police_records', '[Fine] 100 $ for Damage to property <br />[Fine] 1500 $ for disorderly conduct <br />'),
	(6, 'vRP:datatable', '{"thirst":19.537688423411,"hunger":13.268844211705,"customization":{"1":[0,0],"2":[0,0],"3":[0,0],"4":[0,0],"5":[0,0],"6":[0,0],"7":[0,0],"8":[0,0],"9":[0,0],"10":[0,0],"11":[0,0],"12":[0,0],"13":[0,0],"14":[0,0],"15":[0,0],"16":[0,0],"17":[0,0],"18":[0,0],"19":[0,0],"0":[0,0],"model":"mp_m_freemode_01"},"position":{"z":31.286422729492,"y":-961.3486328125,"x":-267.05715942382},"groups":{"user":true},"inventory":[]}'),
	(7, 'vRP:datatable', '{"groups":[],"thirst":2.0,"inventory":[],"hunger":2.0}'),
	(8, 'vRP:datatable', '{"groups":[],"thirst":1.0,"inventory":[],"hunger":1.0}'),
	(9, 'vRP:datatable', '{"inventory":[],"hunger":100,"thirst":100,"groups":[]}'),
	(10, 'vRP:datatable', '{"groups":{"user":true},"gaptitudes":{"physical":{"strength":30},"science":{"chemicals":0,"mathematics":0},"hacker":{"logic":0,"lua":0,"c++":0,"hacking":0},"laboratory":{"weed":0,"lsd":0,"cocaine":0}},"position":{"x":-265.93264770507,"y":-960.90087890625,"z":31.437423706055},"customization":{"1":[0,0],"2":[0,0],"3":[0,0],"4":[0,0],"5":[0,0],"6":[0,0],"7":[0,0],"8":[0,0],"9":[0,0],"10":[0,0],"11":[0,0],"12":[0,0],"13":[0,0],"14":[0,0],"15":[0,0],"16":[0,0],"17":[0,0],"18":[0,0],"19":[0,0],"model":"mp_m_freemode_01","0":[0,0]},"thirst":2.1004944157433,"inventory":[],"hunger":1.5502472078717}'),
	(11, 'vRP:datatable', '{"hunger":11.716677528503,"customization":{"1":[0,0],"2":[0,0],"3":[0,0],"4":[0,0],"5":[0,0],"6":[0,0],"7":[0,0],"8":[0,0],"9":[0,0],"10":[0,0],"11":[0,0],"12":[0,0],"13":[0,0],"14":[0,0],"15":[0,0],"16":[0,0],"17":[0,0],"18":[0,0],"19":[0,0],"0":[0,0],"model":"mp_m_freemode_01"},"position":{"x":-265.87149047851,"y":-960.8900756836,"z":30.555587768555},"thirst":13.433355057006,"groups":{"user":true},"inventory":[]}'),
	(12, 'vRP:datatable', '{"position":{"y":-1388.0994262696,"z":33.138633728027,"x":341.00393676758},"groups":{"Mechanic":true,"ems":true,"user":true,"cop":true},"hunger":50.186260296675,"inventory":{"driver":{"amount":1}},"thirst":75.87252059335,"gaptitudes":{"laboratory":{"cocaine":0,"weed":0,"lsd":0},"hacker":{"lua":0,"c++":0,"hacking":0,"logic":0},"science":{"mathematics":0,"chemicals":0},"physical":{"strength":30}},"health":120,"customization":{"model":"mp_m_freemode_01","1":[0,0],"2":[0,0],"0":[0,0],"15":[0,0],"9":[0,0],"13":[0,0],"7":[0,0],"8":[0,0],"5":[0,0],"6":[0,0],"3":[0,0],"4":[0,0],"11":[0,0],"12":[0,0],"14":[0,0],"10":[0,0],"17":[0,0],"18":[0,0],"19":[0,0],"16":[0,0]}}'),
	(13, 'vRP:datatable', '{"inventory":[],"groups":{"user":true,"Mechanic":true},"hunger":1.7739967872158,"thirst":2.0479935744317,"position":{"y":-961.12060546875,"z":30.350204467774,"x":-265.76040649414},"customization":{"1":[0,0],"2":[0,0],"3":[0,0],"4":[0,0],"5":[0,0],"6":[0,0],"7":[0,0],"8":[0,0],"9":[0,0],"10":[0,0],"11":[0,0],"12":[0,0],"13":[0,0],"14":[0,0],"15":[0,0],"16":[0,0],"17":[0,0],"18":[0,0],"19":[0,0],"model":"mp_m_freemode_01","0":[0,0]}}'),
	(14, 'vRP:datatable', '{"inventory":{"driver":{"amount":1}},"groups":{"user":true},"hunger":0,"position":{"y":-1388.2612915039,"z":32.863426208496,"x":339.53787231445},"thirst":0,"gaptitudes":{"laboratory":{"cocaine":0,"weed":0,"lsd":0},"hacker":{"lua":0,"c++":0,"hacking":0,"logic":0},"science":{"mathematics":0,"chemicals":0},"physical":{"strength":30}},"health":120,"customization":{"1":[0,0],"2":[0,0],"3":[0,0],"4":[0,0],"5":[0,0],"6":[0,0],"7":[0,0],"8":[0,0],"9":[0,0],"10":[0,0],"11":[0,0],"12":[0,0],"13":[0,0],"14":[0,0],"15":[0,0],"16":[0,0],"17":[0,0],"18":[0,0],"19":[0,0],"model":"mp_m_freemode_01","0":[0,0]}}'),
	(15, 'vRP:datatable', '{"inventory":[],"groups":{"user":true},"hunger":11.596736618886,"thirst":15.693473237771,"position":{"y":-961.97094726563,"z":30.854110717774,"x":-265.81533813476},"customization":{"1":[0,0],"2":[0,0],"3":[0,0],"4":[0,0],"5":[0,0],"6":[0,0],"7":[0,0],"8":[0,0],"9":[0,0],"10":[0,0],"11":[0,0],"12":[0,0],"13":[0,0],"14":[0,0],"15":[0,0],"16":[0,0],"17":[0,0],"18":[0,0],"19":[0,0],"model":"mp_m_freemode_01","0":[0,0]}}');
/*!40000 ALTER TABLE `vrp_user_data` ENABLE KEYS */;

-- Dumping structure for table vrpfx.vrp_user_homes
CREATE TABLE IF NOT EXISTS `vrp_user_homes` (
  `user_id` int(11) NOT NULL,
  `home` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `home` (`home`,`number`),
  CONSTRAINT `fk_user_homes_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrpfx.vrp_user_homes: ~2 rows (approximately)
/*!40000 ALTER TABLE `vrp_user_homes` DISABLE KEYS */;
INSERT INTO `vrp_user_homes` (`user_id`, `home`, `number`) VALUES
	(1, 'Beach Home', 1),
	(5, 'Modern Apt 2', 1);
/*!40000 ALTER TABLE `vrp_user_homes` ENABLE KEYS */;

-- Dumping structure for table vrpfx.vrp_user_identities
CREATE TABLE IF NOT EXISTS `vrp_user_identities` (
  `user_id` int(11) NOT NULL,
  `registration` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `registration` (`registration`),
  KEY `phone` (`phone`),
  CONSTRAINT `fk_user_identities_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrpfx.vrp_user_identities: ~14 rows (approximately)
/*!40000 ALTER TABLE `vrp_user_identities` DISABLE KEYS */;
INSERT INTO `vrp_user_identities` (`user_id`, `registration`, `phone`, `firstname`, `name`, `age`) VALUES
	(1, '187NHA', '031-1941', 'Leo', 'Patterson', 28),
	(2, '616LJB', '678-5387', 'Daniel', 'Kuroki', 26),
	(3, '851EVM', '157-4256', 'Nelson', 'Kuroki', 22),
	(5, '124UNZ', '731-6406', 'Mario', 'Kart', 35),
	(6, '871WSN', '300-3119', 'Change', 'Me', 25),
	(7, '306UUN', '387-9951', 'Matt', 'G', 30),
	(8, '963GHV', '030-6009', 'Change', 'Me', 34),
	(9, '854JXV', '718-7530', 'Change', 'Me', 27),
	(10, '875HAC', '311-9410', 'Change', 'Me', 33),
	(11, '753ACJ', '119-4100', 'Change', 'Me', 34),
	(12, '879YOD', '428-2789', 'Cari', 'Bear', 25),
	(13, '153TPO', '312-4859', 'Change', 'Me', 27),
	(14, '230GHV', '975-3432', 'Change', 'Me', 37),
	(15, '182VYL', '457-5464', 'Change', 'Me', 37);
/*!40000 ALTER TABLE `vrp_user_identities` ENABLE KEYS */;

-- Dumping structure for table vrpfx.vrp_user_ids
CREATE TABLE IF NOT EXISTS `vrp_user_ids` (
  `identifier` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`identifier`),
  KEY `fk_user_ids_users` (`user_id`),
  CONSTRAINT `fk_user_ids_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrpfx.vrp_user_ids: ~50 rows (approximately)
/*!40000 ALTER TABLE `vrp_user_ids` DISABLE KEYS */;
INSERT INTO `vrp_user_ids` (`identifier`, `user_id`) VALUES
	('license:3bb4f86aceeb799595eabaf4000180d62b6876fd', 1),
	('live:1899946278495948', 1),
	('steam:11000010ef5f73c', 1),
	('xbl:2533274891096958', 1),
	('license:fde373792bfa165cf21329ce558d48caf9e162bf', 2),
	('live:914800611384557', 2),
	('steam:11000010b67b644', 2),
	('xbl:2533274895093566', 2),
	('license:f39d94262da9ac9efd24a99d0abac1d7422ddbc0', 3),
	('live:1688853707514281', 3),
	('steam:11000010b3e8ee4', 3),
	('xbl:2533275019644170', 3),
	('license:63514dc638ec945e3890bc0aa23955ffd4232764', 5),
	('live:1759221307203733', 5),
	('steam:1100001052ac841', 5),
	('xbl:2533274833020171', 5),
	('license:1f2dc5bcabd1771403ffe8c307fbbf52e3985a81', 6),
	('steam:1100001097ed30e', 6),
	('license:342c132abec943a6537ea91b036c6331d9d904eb', 7),
	('live:985156620368923', 7),
	('steam:11000011a0a3ebc', 7),
	('xbl:2533274898850919', 7),
	('license:85b4cae6a420183fd9887e5b0fd75e3754e658d5', 8),
	('live:1899946957765478', 8),
	('steam:11000010a26ad76', 8),
	('xbl:2535452808965889', 8),
	('license:eb5f2b89a27d636ce7ec65071f3fb1cef150bd15', 9),
	('steam:1100001042de5a5', 9),
	('license:ccf91a64b43eaa2800279d7ffe00eee29a3fc509', 10),
	('live:985157491077188', 10),
	('steam:11000011313713f', 10),
	('xbl:2535419133411865', 10),
	('license:ba1efdd36188172533d94070e1446aca792097b1', 11),
	('live:985157463052634', 11),
	('steam:110000118e5107f', 11),
	('xbl:2535472441865153', 11),
	('license:6b430f7ddb7768c44390b3cf0441dd27bf19a99f', 12),
	('steam:11000010377d97a', 12),
	('license:e24dc6a22d248861faf4ba8644df7d58de64ce69', 13),
	('live:985157050182075', 13),
	('steam:110000114ef850a', 13),
	('xbl:2533275011348071', 13),
	('license:d7bb2a74845c20b675d0157fb705812bc3188b1a', 14),
	('live:985153984807679', 14),
	('steam:1100001196acf30', 14),
	('xbl:2535439127381921', 14),
	('license:1f559a872390e029758f6b6ddb0ef8266579e38a', 15),
	('live:1759221067786570', 15),
	('steam:110000134f8b926', 15),
	('xbl:2533274798108387', 15);
/*!40000 ALTER TABLE `vrp_user_ids` ENABLE KEYS */;

-- Dumping structure for table vrpfx.vrp_user_moneys
CREATE TABLE IF NOT EXISTS `vrp_user_moneys` (
  `user_id` int(11) NOT NULL,
  `wallet` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_moneys_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrpfx.vrp_user_moneys: ~14 rows (approximately)
/*!40000 ALTER TABLE `vrp_user_moneys` DISABLE KEYS */;
INSERT INTO `vrp_user_moneys` (`user_id`, `wallet`, `bank`) VALUES
	(1, 2100, 2133250),
	(2, 0, 242000),
	(3, 0, 3102500),
	(5, 0, 51700),
	(6, 1000, 20000),
	(7, 1000, 20000),
	(8, 1000, 20000),
	(9, 1000, 20000),
	(10, 1000, 20000),
	(11, 1000, 20100),
	(12, 0, 55700),
	(13, 1000, 20000),
	(14, 0, 20300),
	(15, 1000, 20000);
/*!40000 ALTER TABLE `vrp_user_moneys` ENABLE KEYS */;

-- Dumping structure for table vrpfx.vrp_user_vehicles
CREATE TABLE IF NOT EXISTS `vrp_user_vehicles` (
  `user_id` int(11) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`,`vehicle`),
  CONSTRAINT `fk_user_vehicles_users` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table vrpfx.vrp_user_vehicles: ~110 rows (approximately)
/*!40000 ALTER TABLE `vrp_user_vehicles` DISABLE KEYS */;
INSERT INTO `vrp_user_vehicles` (`user_id`, `vehicle`) VALUES
	(1, '06tahoe1'),
	(1, '06tahoelib'),
	(1, 'CVPI1'),
	(1, 'CVPI2'),
	(1, 'cvpi2blue'),
	(1, 'CVPI3'),
	(1, 'CVPI4'),
	(1, 'cvpiblue'),
	(1, 'cvpifreedomblue'),
	(1, 'cvpilasd1'),
	(1, 'cvpilasd2'),
	(1, 'fbi'),
	(1, 'fbi2'),
	(1, 'fbi3'),
	(1, 'fbi4'),
	(1, 'fbiinsurgent'),
	(1, 'fbiriot'),
	(1, 'fpis13'),
	(1, 'fpiu13'),
	(1, 'fpiu16'),
	(1, 'granger'),
	(1, 'gtrublu'),
	(1, 'huracan'),
	(1, 'hwaycar2'),
	(1, 'hwaycar4'),
	(1, 'it458'),
	(1, 'lykan'),
	(1, 'pbuffalo2'),
	(1, 'police'),
	(1, 'police5'),
	(1, 'police5blue'),
	(1, 'police6'),
	(1, 'police7'),
	(1, 'policeb'),
	(1, 'policeinsurgent'),
	(1, 'polmav'),
	(1, 'prgresley'),
	(1, 'psubby16'),
	(1, 'pucvan1'),
	(1, 'rancherxl'),
	(1, 'riot'),
	(1, 'sheriff'),
	(1, 'sheriff4'),
	(1, 'z01bimpalalib'),
	(1, 'z01blueimpala'),
	(3, '06tahoe1'),
	(3, '06tahoelib'),
	(3, '2015polstang'),
	(3, 'bestiagts'),
	(3, 'CVPI1'),
	(3, 'CVPI2'),
	(3, 'cvpi2blue'),
	(3, 'CVPI3'),
	(3, 'CVPI4'),
	(3, 'cvpiblue'),
	(3, 'cvpifreedomblue'),
	(3, 'cvpilasd1'),
	(3, 'cvpilasd2'),
	(3, 'elegy'),
	(3, 'fbi'),
	(3, 'fbi2'),
	(3, 'fbi3'),
	(3, 'fbi4'),
	(3, 'fbiinsurgent'),
	(3, 'fbiriot'),
	(3, 'fpis13'),
	(3, 'fpiu13'),
	(3, 'fpiu16'),
	(3, 'gtrublu'),
	(3, 'huracan'),
	(3, 'hwaycar18'),
	(3, 'hwaycar19'),
	(3, 'hwaycar2'),
	(3, 'hwaycar4'),
	(3, 'hwaycar7'),
	(3, 'it458'),
	(3, 'kuruma'),
	(3, 'lp700'),
	(3, 'mcublu'),
	(3, 'pbuffalo2'),
	(3, 'police'),
	(3, 'police5'),
	(3, 'police5blue'),
	(3, 'police6'),
	(3, 'police7'),
	(3, 'policeb'),
	(3, 'policeinsurgent'),
	(3, 'policet'),
	(3, 'prgresley'),
	(3, 'psubby16'),
	(3, 'pucvan1'),
	(3, 'pyosemite'),
	(3, 'r8v10'),
	(3, 'riot'),
	(3, 'sentinel'),
	(3, 'sentinel2'),
	(3, 'sheriff'),
	(3, 'sheriff4'),
	(3, 'sheriffinsurgent2'),
	(3, 'verlierer2'),
	(3, 'xls'),
	(3, 'ySbrImpS11'),
	(3, 'z01bimpalalib'),
	(3, 'z01blueimpala'),
	(5, '16charger'),
	(5, 'f131'),
	(5, 'gmt900escalade'),
	(5, 'r8ppi'),
	(5, 'rancherxl'),
	(5, 'sheava');
/*!40000 ALTER TABLE `vrp_user_vehicles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
