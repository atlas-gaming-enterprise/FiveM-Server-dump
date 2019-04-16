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


-- Dumping database structure for opencad
CREATE DATABASE IF NOT EXISTS `opencad` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `opencad`;

-- Dumping structure for table opencad.active_users
CREATE TABLE IF NOT EXISTS `active_users` (
  `identifier` varchar(255) NOT NULL,
  `callsign` varchar(255) NOT NULL COMMENT 'Unit Callsign',
  `status` int(11) NOT NULL COMMENT 'Unit status, 0=busy/unavailable, 1=available, 2=dispatcher',
  `status_detail` int(11) NOT NULL COMMENT 'Paired to Statuses table',
  `id` int(11) NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE,
  UNIQUE KEY `callsign` (`callsign`) USING BTREE,
  UNIQUE KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.active_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `active_users` DISABLE KEYS */;
INSERT INTO `active_users` (`identifier`, `callsign`, `status`, `status_detail`, `id`) VALUES
	('1-L-18', '1-L-18', 0, 6, 4);
/*!40000 ALTER TABLE `active_users` ENABLE KEYS */;

-- Dumping structure for table opencad.aop
CREATE TABLE IF NOT EXISTS `aop` (
  `aop` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table opencad.aop: 0 rows
/*!40000 ALTER TABLE `aop` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop` ENABLE KEYS */;

-- Dumping structure for table opencad.bolos_persons
CREATE TABLE IF NOT EXISTS `bolos_persons` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL COMMENT 'First name of BOLO suspect.',
  `last_name` varchar(255) NOT NULL COMMENT 'Last name of BOLO suspect.',
  `gender` varchar(255) NOT NULL COMMENT 'Gender of BOLO suspect.',
  `physical_description` varchar(255) NOT NULL COMMENT 'Physical description of BOLO suspect.',
  `reason_wanted` varchar(255) NOT NULL COMMENT 'Reason BOLO suspect is wanted.',
  `last_seen` varchar(255) NOT NULL COMMENT 'Last observed location of BOLO suspect.',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.bolos_persons: ~0 rows (approximately)
/*!40000 ALTER TABLE `bolos_persons` DISABLE KEYS */;
INSERT INTO `bolos_persons` (`id`, `first_name`, `last_name`, `gender`, `physical_description`, `reason_wanted`, `last_seen`) VALUES
	(0, 'Ryan', 'Smith', 'Male', 'Bald, Black male, 30-40yrs ', 'ATTEMPTED MURDER OF POLICE OFFICER. ARMED AND dangerous. ', 'Sandy Shores');
/*!40000 ALTER TABLE `bolos_persons` ENABLE KEYS */;

-- Dumping structure for table opencad.bolos_vehicles
CREATE TABLE IF NOT EXISTS `bolos_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_make` varchar(255) NOT NULL COMMENT 'Make of BOLO vehicle.',
  `vehicle_model` varchar(255) NOT NULL COMMENT 'Model of BOLO vehicle.',
  `vehicle_plate` varchar(255) NOT NULL COMMENT 'License of BOLO vehicle.',
  `primary_color` varchar(255) NOT NULL COMMENT 'Primary color of BOLO vehicle.',
  `secondary_color` varchar(255) NOT NULL COMMENT 'Secondary color of BOLO vehicle.',
  `reason_wanted` varchar(255) NOT NULL COMMENT 'Reason BOLO suspect is wanted.',
  `last_seen` varchar(255) NOT NULL COMMENT 'Last observed location of BOLO vehicle.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.bolos_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `bolos_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolos_vehicles` ENABLE KEYS */;

-- Dumping structure for table opencad.calls
CREATE TABLE IF NOT EXISTS `calls` (
  `call_id` int(11) NOT NULL,
  `call_type` text NOT NULL,
  `call_primary` text,
  `call_street1` text NOT NULL,
  `call_street2` text,
  `call_street3` text,
  `call_narrative` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.calls: ~0 rows (approximately)
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;

-- Dumping structure for table opencad.calls_users
CREATE TABLE IF NOT EXISTS `calls_users` (
  `call_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `callsign` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.calls_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;

-- Dumping structure for table opencad.call_history
CREATE TABLE IF NOT EXISTS `call_history` (
  `call_id` int(11) NOT NULL,
  `call_type` text NOT NULL,
  `call_primary` text,
  `call_street1` text NOT NULL,
  `call_street2` text,
  `call_street3` text,
  `call_narrative` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.call_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `call_history` DISABLE KEYS */;
INSERT INTO `call_history` (`call_id`, `call_type`, `call_primary`, `call_street1`, `call_street2`, `call_street3`, `call_narrative`) VALUES
	(1, 'Armed Robbery', NULL, 'Adam\'s Apple Boulevard', 'Amarillo Vista', '', '2018-10-20 03:59:35: Call Created<br/>2018-10-20 03:59:55: Dispatched: 1-L-18<br/>2018-10-20 04:00:16: 1-L-18: SHOTS FIRED<br/>2018-10-20 04:00:36: 1-L-18: SUSPECT RUNNING NORTH-BOUND. BLACK HOODIE<br/>');
/*!40000 ALTER TABLE `call_history` ENABLE KEYS */;

-- Dumping structure for table opencad.call_list
CREATE TABLE IF NOT EXISTS `call_list` (
  `call_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.call_list: ~0 rows (approximately)
/*!40000 ALTER TABLE `call_list` DISABLE KEYS */;
INSERT INTO `call_list` (`call_id`) VALUES
	(1);
/*!40000 ALTER TABLE `call_list` ENABLE KEYS */;

-- Dumping structure for table opencad.citations
CREATE TABLE IF NOT EXISTS `citations` (
  `id` int(11) NOT NULL,
  `citation_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.citations: ~0 rows (approximately)
/*!40000 ALTER TABLE `citations` DISABLE KEYS */;
/*!40000 ALTER TABLE `citations` ENABLE KEYS */;

-- Dumping structure for table opencad.civilian_names
CREATE TABLE IF NOT EXISTS `civilian_names` (
  `user_id` int(11) NOT NULL COMMENT 'Links to users table',
  `names_id` int(11) NOT NULL COMMENT 'Links to names table'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.civilian_names: ~0 rows (approximately)
/*!40000 ALTER TABLE `civilian_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `civilian_names` ENABLE KEYS */;

-- Dumping structure for table opencad.colors
CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(11) NOT NULL,
  `color_group` varchar(255) DEFAULT NULL,
  `color_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table opencad.colors: 248 rows
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` (`id`, `color_group`, `color_name`) VALUES
	(1, 'Chrome', 'Chrome'),
	(2, 'Classic', 'Black'),
	(3, 'Classic', 'Carbon Black'),
	(4, 'Classic', 'Graphite'),
	(5, 'Classic', 'Anthracite Black'),
	(6, 'Classic', 'Black Steel'),
	(7, 'Classic', 'Dark Steel'),
	(8, 'Classic', 'Silver'),
	(9, 'Classic', 'Bluish Silver'),
	(10, 'Classic', 'Rolled Steel'),
	(11, 'Classic', 'Shadow Silver'),
	(12, 'Classic', 'Midnigh Silver'),
	(13, 'Classic', 'Cast Iron Silver'),
	(14, 'Classic', 'Red'),
	(15, 'Classic', 'Torino Red'),
	(16, 'Classic', 'Forumula Red'),
	(17, 'Classic', 'Lava Red'),
	(18, 'Classic', 'Blaze Red'),
	(19, 'Classic', 'Grace Red'),
	(20, 'Classic', 'Garnet Red'),
	(21, 'Classic', 'Sunset Red'),
	(22, 'Classic', 'Cabernet Red'),
	(23, 'Classic', 'Wine Red'),
	(24, 'Classic', 'Candy Red'),
	(25, 'Classic', 'Hot Pink'),
	(26, 'Classic', 'Pfister Pink'),
	(27, 'Classic', 'Salmon Pink'),
	(28, 'Classic', 'Sunrise Orange'),
	(29, 'Classic', 'Orange'),
	(30, 'Classic', 'Bright Orange'),
	(31, 'Classic', 'Gold'),
	(32, 'Classic', 'Bronze'),
	(33, 'Classic', 'Yellow'),
	(34, 'Classic', 'Race Yellow'),
	(35, 'Classic', 'Dew Yellow'),
	(36, 'Classic', 'Dark Green'),
	(37, 'Classic', 'Racing Green'),
	(38, 'Classic', 'Sea Green'),
	(39, 'Classic', 'Olive Green'),
	(40, 'Classic', 'Bright Green'),
	(41, 'Classic', 'Gasoline Green'),
	(42, 'Classic', 'Lime Green'),
	(43, 'Classic', 'Midnight Blue'),
	(44, 'Classic', 'Galaxy Blue'),
	(45, 'Classic', 'Dark Blue'),
	(46, 'Classic', 'Saxon Blue'),
	(47, 'Classic', 'Blue'),
	(48, 'Classic', 'Mariner Blue'),
	(49, 'Classic', 'Harbor Blue'),
	(50, 'Classic', 'Diamond Blue'),
	(51, 'Classic', 'Surf Blue'),
	(52, 'Classic', 'Nautical Blue'),
	(53, 'Classic', 'Racaing Blue'),
	(54, 'Classic', 'Ultra Blue'),
	(55, 'Classic', 'Light Blue'),
	(56, 'Classic', 'Chocolate Brown'),
	(57, 'Classic', 'Bison Brown'),
	(58, 'Classic', 'Creek Brown'),
	(59, 'Classic', 'Feltzer Brown'),
	(60, 'Classic', 'Maple Brown'),
	(61, 'Classic', 'Beechwood Brown'),
	(62, 'Classic', 'Sienna Brown'),
	(63, 'Classic', 'Saddle Brown'),
	(64, 'Classic', 'Moss Brown'),
	(65, 'Classic', 'Woodbeech Brown'),
	(66, 'Classic', 'Straw Brown'),
	(67, 'Classic', 'Sandy Brown'),
	(68, 'Classic', 'Bleached Brown'),
	(69, 'Classic', 'Schafter Purple'),
	(70, 'Classic', 'Spinnaker Purple'),
	(71, 'Classic', 'Midnight Purple'),
	(72, 'Classic', 'Bright Purple'),
	(73, 'Classic', 'Cream'),
	(74, 'Classic', 'Ice White'),
	(75, 'Classic', 'Frost White'),
	(76, 'Matte', 'Black'),
	(77, 'Matte', 'Gray'),
	(78, 'Matte', 'Light Gray'),
	(79, 'Matte', 'Ice White'),
	(80, 'Matte', 'Blue'),
	(81, 'Matte', 'Dark Blue'),
	(82, 'Matte', 'Midnight Blue'),
	(83, 'Matte', 'Midnight Purple'),
	(84, 'Matte', 'Shafter Purple'),
	(85, 'Matte', 'Red'),
	(86, 'Matte', 'Dark Red'),
	(87, 'Matte', 'Orange'),
	(88, 'Matte', 'Yellow'),
	(89, 'Matte', 'Lime Green'),
	(90, 'Matte', 'Green'),
	(91, 'Matte', 'Forest Green'),
	(92, 'Matte', 'Foliage Green'),
	(93, 'Matte', 'Olive Drag'),
	(94, 'Matte', 'Dark Earch'),
	(95, 'Matte', 'Desert Tan'),
	(96, 'Metallic', 'Black'),
	(97, 'Metallic', 'Carbon Black'),
	(98, 'Metallic', 'Graphite'),
	(99, 'Metallic', 'Anthracite Black'),
	(100, 'Metallic', 'Black Steel'),
	(101, 'Metallic', 'Dark Steel'),
	(102, 'Metallic', 'Silver'),
	(103, 'Metallic', 'Bluish Silver'),
	(104, 'Metallic', 'Rolled Steel'),
	(105, 'Metallic', 'Shadow Silver'),
	(106, 'Metallic', 'Stone Silver'),
	(107, 'Metallic', 'Midnight Silver'),
	(108, 'Metallic', 'Cast Iron Silver'),
	(109, 'Metallic', 'Red'),
	(110, 'Metallic', 'Torino Red'),
	(111, 'Metallic', 'Formula Red'),
	(112, 'Metallic', 'Lava Red'),
	(113, 'Metallic', 'Blaze Red'),
	(114, 'Metallic', 'Grace Red'),
	(115, 'Metallic', 'Garnet Red'),
	(116, 'Metallic', 'Sunset Red'),
	(117, 'Metallic', 'Cabernet Red'),
	(118, 'Metallic', 'Wine Red'),
	(119, 'Metallic', 'Candy Red'),
	(120, 'Metallic', 'Hot Pink'),
	(121, 'Metallic', 'Pfister Pink'),
	(122, 'Metallic', 'Salmon Pink'),
	(123, 'Metallic', 'Sunrise Orange'),
	(124, 'Metallic', 'Orange'),
	(125, 'Metallic', 'Bright Orange'),
	(126, 'Metallic', 'Gold Bronze'),
	(127, 'Metallic', 'Yellow'),
	(128, 'Metallic', 'Race Yellow'),
	(129, 'Metallic', 'Dew Yellow'),
	(130, 'Metallic', 'Dark Green'),
	(131, 'Metallic', 'Racing Green'),
	(132, 'Metallic', 'Sea Green'),
	(133, 'Metallic', 'Olive Green'),
	(134, 'Metallic', 'Bright Green'),
	(135, 'Metallic', 'Gasoline Green'),
	(136, 'Metallic', 'Lime Green'),
	(137, 'Metallic', 'Midnight Blue'),
	(138, 'Metallic', 'Galazy BLue'),
	(139, 'Metallic', 'Dark Blue'),
	(140, 'Metallic', 'Saxon Blue'),
	(141, 'Metallic', 'Blue'),
	(142, 'Metallic', 'Mariner Bue'),
	(143, 'Metallic', 'Harbor Blue'),
	(144, 'Metallic', 'Diamond BLue'),
	(145, 'Metallic', 'Surf Blue'),
	(146, 'Metallic', 'Nauical Blue'),
	(147, 'Metallic', 'Racing Blue'),
	(148, 'Metallic', 'Ultra Blue'),
	(149, 'Metallic', 'Light Blue'),
	(150, 'Metallic', 'Chocolate Brown'),
	(151, 'Metallic', 'Bison Brown'),
	(152, 'Metallic', 'Creek Brown'),
	(153, 'Metallic', 'Feltzer Brown'),
	(154, 'Metallic', 'Maple Brown'),
	(155, 'Metallic', 'Beechwood Brown'),
	(156, 'Metallic', 'Sienna Brown'),
	(157, 'Metallic', 'Saddle Brown'),
	(158, 'Metallic', 'Moss Brown'),
	(159, 'Metallic', 'Woodbeech Brown'),
	(160, 'Metallic', 'Straw Brown'),
	(161, 'Metallic', 'Sandy BRown'),
	(162, 'Metallic', 'Bleached Brown'),
	(163, 'Metallic', 'Schafter Purple'),
	(164, 'Metallic', 'Spinnaker Purple'),
	(165, 'Metallic', 'Midnight Purple'),
	(166, 'Metallic', 'Bright Purple'),
	(167, 'Metallic', 'Cream'),
	(168, 'Metallic', 'Ice White'),
	(169, 'Metallic', 'Frost White'),
	(170, 'Metals', 'Brushed Steel'),
	(171, 'Metals', 'Brushed Black Steel'),
	(172, 'Metals', 'Brushed Aluminium'),
	(173, 'Metals', 'Pure Gold'),
	(174, 'Metals', 'Brushed Gold'),
	(175, 'Pearlescent', 'Black'),
	(176, 'Pearlescent', 'Carbon Black'),
	(177, 'Pearlescent', 'Graphite'),
	(178, 'Pearlescent', 'Anthracite Black'),
	(179, 'Pearlescent', 'Black Steel'),
	(180, 'Pearlescent', 'Dark Steel'),
	(181, 'Pearlescent', 'Silver'),
	(182, 'Pearlescent', 'Bluish Silver'),
	(183, 'Pearlescent', 'Rolled Steel'),
	(184, 'Pearlescent', 'Shadow Silver'),
	(185, 'Pearlescent', 'Stone Silver'),
	(186, 'Pearlescent', 'Midnight Silver'),
	(187, 'Pearlescent', 'Cast Iron Silver'),
	(188, 'Pearlescent', 'Red'),
	(189, 'Pearlescent', 'Torino Red'),
	(190, 'Pearlescent', 'Formula Red'),
	(191, 'Pearlescent', 'Lava Red'),
	(192, 'Pearlescent', 'Blaze Red'),
	(193, 'Pearlescent', 'Grace Red'),
	(194, 'Pearlescent', 'Garnet Red'),
	(195, 'Pearlescent', 'Sunset Red'),
	(196, 'Pearlescent', 'Cabernet Red'),
	(197, 'Pearlescent', 'Wine Red'),
	(198, 'Pearlescent', 'Candy Red'),
	(199, 'Pearlescent', 'Hot Pink'),
	(200, 'Pearlescent', 'Pfister Pink'),
	(201, 'Pearlescent', 'Salmon Pink'),
	(202, 'Pearlescent', 'Sunrise Orange'),
	(203, 'Pearlescent', 'Orange'),
	(204, 'Pearlescent', 'Bright Orange'),
	(205, 'Pearlescent', 'Gold Bronze'),
	(206, 'Pearlescent', 'Yellow'),
	(207, 'Pearlescent', 'Race Yellow'),
	(208, 'Pearlescent', 'Dew Yellow'),
	(209, 'Pearlescent', 'Dark Green'),
	(210, 'Pearlescent', 'Racing Green'),
	(211, 'Pearlescent', 'Sea Green'),
	(212, 'Pearlescent', 'Olive Green'),
	(213, 'Pearlescent', 'Bright Green'),
	(214, 'Pearlescent', 'Gasoline Green'),
	(215, 'Pearlescent', 'Lime Green'),
	(216, 'Pearlescent', 'Midnight Blue'),
	(217, 'Pearlescent', 'Galazy BLue'),
	(218, 'Pearlescent', 'Dark Blue'),
	(219, 'Pearlescent', 'Saxon Blue'),
	(220, 'Pearlescent', 'Blue'),
	(221, 'Pearlescent', 'Mariner Bue'),
	(222, 'Pearlescent', 'Harbor Blue'),
	(223, 'Pearlescent', 'Diamond BLue'),
	(224, 'Pearlescent', 'Surf Blue'),
	(225, 'Pearlescent', 'Nauical Blue'),
	(226, 'Pearlescent', 'Racing BLue'),
	(227, 'Pearlescent', 'Ultra BLue'),
	(228, 'Pearlescent', 'Light BLue'),
	(229, 'Pearlescent', 'Chocolate Brown'),
	(230, 'Pearlescent', 'Bison Brown'),
	(231, 'Pearlescent', 'Creek Brown'),
	(232, 'Pearlescent', 'Feltzer Brown'),
	(233, 'Pearlescent', 'Maple Brown'),
	(234, 'Pearlescent', 'Beechwood Brown'),
	(235, 'Pearlescent', 'Sienna Brown'),
	(236, 'Pearlescent', 'Saddle Brown'),
	(237, 'Pearlescent', 'Moss Brown'),
	(238, 'Pearlescent', 'Woodbeech Brown'),
	(239, 'Pearlescent', 'Straw Brown'),
	(240, 'Pearlescent', 'Sandy Brown'),
	(241, 'Pearlescent', 'Bleached Brown'),
	(242, 'Pearlescent', 'Schafter Purple'),
	(243, 'Pearlescent', 'Spinnaker Purple'),
	(244, 'Pearlescent', 'Midnight Purple'),
	(245, 'Pearlescent', 'Bright Purple'),
	(246, 'Pearlescent', 'Cream'),
	(247, 'Pearlescent', 'Ice White'),
	(248, 'Pearlescent', 'Frost White');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;

-- Dumping structure for table opencad.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.departments: ~8 rows (approximately)
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`department_id`, `department_name`) VALUES
	(1, 'Communications'),
	(2, 'State'),
	(3, 'Highway'),
	(4, 'Sheriff'),
	(5, 'Police'),
	(6, 'Fire'),
	(7, 'EMS'),
	(8, 'Civilian');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table opencad.dispatchers
CREATE TABLE IF NOT EXISTS `dispatchers` (
  `identifier` varchar(255) NOT NULL,
  `callsign` varchar(255) NOT NULL COMMENT 'Unit Callsign',
  `status` int(11) NOT NULL COMMENT 'Unit status, 0=offline, 1=online'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.dispatchers: ~0 rows (approximately)
/*!40000 ALTER TABLE `dispatchers` DISABLE KEYS */;
INSERT INTO `dispatchers` (`identifier`, `callsign`, `status`) VALUES
	('1A-1', '1A-1', 0),
	('1-L-18', '1-L-18', 0);
/*!40000 ALTER TABLE `dispatchers` ENABLE KEYS */;

-- Dumping structure for table opencad.genders
CREATE TABLE IF NOT EXISTS `genders` (
  `id` int(11) NOT NULL,
  `genders` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.genders: ~2 rows (approximately)
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` (`id`, `genders`) VALUES
	(0, 'Male'),
	(1, 'Female');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;

-- Dumping structure for table opencad.incident_type
CREATE TABLE IF NOT EXISTS `incident_type` (
  `code_id` varchar(255) NOT NULL DEFAULT '',
  `code_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table opencad.incident_type: ~14 rows (approximately)
/*!40000 ALTER TABLE `incident_type` DISABLE KEYS */;
INSERT INTO `incident_type` (`code_id`, `code_name`) VALUES
	('68', 'Armed Robbery'),
	('25', 'Domestic Dispute'),
	('10', 'Fight in Progress'),
	('49', 'Homicide'),
	('55', 'Intoxicated Driver'),
	('56', 'Intoxicated Person'),
	('62', 'Kidnapping'),
	('66', 'Reckless Driver'),
	('13', 'Shots Fired'),
	('16', 'Stolen Vehicle'),
	('17', 'Suspicious Person'),
	('11', 'Traffic Stop'),
	('50', 'Vehicle Accident'),
	('200', 'Tow & Recovery');
/*!40000 ALTER TABLE `incident_type` ENABLE KEYS */;

-- Dumping structure for table opencad.ncic_arrests
CREATE TABLE IF NOT EXISTS `ncic_arrests` (
  `id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL COMMENT 'Paired to ID of ncic_names table',
  `arrest_reason` varchar(255) NOT NULL,
  `arrest_fine` int(11) NOT NULL,
  `issued_date` date DEFAULT NULL,
  `issued_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table opencad.ncic_arrests: ~0 rows (approximately)
/*!40000 ALTER TABLE `ncic_arrests` DISABLE KEYS */;
INSERT INTO `ncic_arrests` (`id`, `name_id`, `arrest_reason`, `arrest_fine`, `issued_date`, `issued_by`) VALUES
	(0, 4, 'Robbery', 0, '2018-10-20', 'Daniel Calbert'),
	(0, 4, 'Grand Thief Auto', 0, '2018-10-20', 'Daniel Calbert');
/*!40000 ALTER TABLE `ncic_arrests` ENABLE KEYS */;

-- Dumping structure for table opencad.ncic_citations
CREATE TABLE IF NOT EXISTS `ncic_citations` (
  `id` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 = Pending, 1 = Approved/Active',
  `name_id` int(11) NOT NULL COMMENT 'Paired to ID of ncic_names table',
  `citation_name` varchar(255) NOT NULL,
  `citation_fine` int(11) NOT NULL,
  `issued_date` date DEFAULT NULL,
  `issued_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table opencad.ncic_citations: ~0 rows (approximately)
/*!40000 ALTER TABLE `ncic_citations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ncic_citations` ENABLE KEYS */;

-- Dumping structure for table opencad.ncic_names
CREATE TABLE IF NOT EXISTS `ncic_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submittedByName` varchar(255) NOT NULL,
  `submittedById` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL COMMENT 'Date of birth',
  `address` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `race` text NOT NULL,
  `dl_status` set('Valid','Suspended','Expired') NOT NULL,
  `hair_color` text NOT NULL,
  `build` text NOT NULL,
  `weapon_permit` varchar(255) NOT NULL,
  `deceased` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.ncic_names: ~0 rows (approximately)
/*!40000 ALTER TABLE `ncic_names` DISABLE KEYS */;
INSERT INTO `ncic_names` (`id`, `submittedByName`, `submittedById`, `name`, `dob`, `address`, `gender`, `race`, `dl_status`, `hair_color`, `build`, `weapon_permit`, `deceased`) VALUES
	(3, 'Radcrazykid2', '1', 'Leo Patterson', '1976-10-19', 'Trevor\'s Beach House Los Santos ', 'Male', 'White', 'Valid', 'Black', 'Average', 'Obtained', 'No'),
	(4, 'Radcrazykid2', '1', 'Ryan Smith', '1968-05-26', 'Grove Street, Franklin\'s House', 'Male', 'Black or African American', 'Valid', 'Bald', 'Muscular', 'Obtained', 'No');
/*!40000 ALTER TABLE `ncic_names` ENABLE KEYS */;

-- Dumping structure for table opencad.ncic_plates
CREATE TABLE IF NOT EXISTS `ncic_plates` (
  `id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL COMMENT 'Links to ncic_names db for driver information',
  `veh_plate` text NOT NULL,
  `veh_make` text NOT NULL,
  `veh_model` text NOT NULL,
  `veh_pcolor` text NOT NULL,
  `veh_scolor` text NOT NULL,
  `veh_insurance` set('VALID','EXPIRED') NOT NULL DEFAULT 'VALID',
  `flags` set('NONE','STOLEN','WANTED','SUSPENDED REGISTRATION','UC FLAG','HPIU FLAG') NOT NULL DEFAULT 'NONE',
  `veh_reg_state` text NOT NULL,
  `notes` text COMMENT 'Any special flags visible to dispatchers',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.ncic_plates: ~0 rows (approximately)
/*!40000 ALTER TABLE `ncic_plates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ncic_plates` ENABLE KEYS */;

-- Dumping structure for table opencad.ncic_warnings
CREATE TABLE IF NOT EXISTS `ncic_warnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 = Pending, 1 = Approved/Active',
  `name_id` int(11) NOT NULL COMMENT 'Paired to ID of ncic_names table',
  `warning_name` varchar(255) NOT NULL,
  `issued_date` date DEFAULT NULL,
  `issued_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table opencad.ncic_warnings: ~0 rows (approximately)
/*!40000 ALTER TABLE `ncic_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ncic_warnings` ENABLE KEYS */;

-- Dumping structure for table opencad.ncic_warrants
CREATE TABLE IF NOT EXISTS `ncic_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expiration_date` date DEFAULT NULL,
  `warrant_name` varchar(255) NOT NULL,
  `issuing_agency` varchar(255) NOT NULL,
  `name_id` int(11) NOT NULL COMMENT 'Key that pairs to the ncic_name id',
  `issued_date` date DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table opencad.ncic_warrants: ~0 rows (approximately)
/*!40000 ALTER TABLE `ncic_warrants` DISABLE KEYS */;
INSERT INTO `ncic_warrants` (`id`, `expiration_date`, `warrant_name`, `issuing_agency`, `name_id`, `issued_date`, `status`) VALUES
	(1, '2018-10-21', 'Hostage Taking', 'State', 4, '2018-10-20', 'Active'),
	(2, '2018-10-21', 'FTA: Hit and Run', 'Highway', 4, '2018-10-20', 'Active');
/*!40000 ALTER TABLE `ncic_warrants` ENABLE KEYS */;

-- Dumping structure for table opencad.ncic_weapons
CREATE TABLE IF NOT EXISTS `ncic_weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_id` int(11) NOT NULL COMMENT 'Links to ncic_names db for driver information',
  `weapon_type` varchar(255) NOT NULL,
  `weapon_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.ncic_weapons: ~0 rows (approximately)
/*!40000 ALTER TABLE `ncic_weapons` DISABLE KEYS */;
INSERT INTO `ncic_weapons` (`id`, `name_id`, `weapon_type`, `weapon_name`, `user_id`) VALUES
	(1, 4, 'Pistols', 'Heavy-Pistol', 1),
	(2, 4, 'Assault-Rifles', 'Carbine-Rifle', 1);
/*!40000 ALTER TABLE `ncic_weapons` ENABLE KEYS */;

-- Dumping structure for table opencad.statuses
CREATE TABLE IF NOT EXISTS `statuses` (
  `status_id` int(11) NOT NULL,
  `status_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.statuses: ~8 rows (approximately)
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` (`status_id`, `status_text`) VALUES
	(1, '10-8 | Available'),
	(2, '10-6 | Busy'),
	(3, '10-7 | Unavailable | On Call'),
	(4, '10-5 | Meal Break'),
	(5, 'Signal 11'),
	(6, '10-7 | Unavailable'),
	(7, '10-23 | Arrived on Scene'),
	(8, '10-65 | Transporting Prisoner');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;

-- Dumping structure for table opencad.streets
CREATE TABLE IF NOT EXISTS `streets` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for each street',
  `name` text NOT NULL COMMENT 'Street name',
  `county` text NOT NULL COMMENT 'County name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.streets: ~234 rows (approximately)
/*!40000 ALTER TABLE `streets` DISABLE KEYS */;
INSERT INTO `streets` (`id`, `name`, `county`) VALUES
	(1, 'Abattoir Avenue', 'Los Santos County'),
	(2, 'Abe Milton Parkway', 'Los Santos County'),
	(3, 'Ace Jones Drive', 'Los Santos County'),
	(4, 'Adam\'s Apple Boulevard', 'Los Santos County'),
	(5, 'Aguja Street', 'Los Santos County'),
	(6, 'Alta Place', 'Los Santos County'),
	(7, 'Alta Street', 'Los Santos County'),
	(8, 'Amarillo Vista', 'Los Santos County'),
	(9, 'Amarillo Way', 'Los Santos County'),
	(10, 'Americano Way', 'Los Santos County'),
	(11, 'Atlee Street', 'Los Santos County'),
	(12, 'Autopia Parkway', 'Los Santos County'),
	(13, 'Banham Canyon Drive', 'Los Santos County'),
	(14, 'Barbareno Road', 'Los Santos County'),
	(15, 'Bay City Avenue', 'Los Santos County'),
	(16, 'Bay City Incline', 'Los Santos County'),
	(17, 'Baytree Canyon Road (City)', 'Los Santos County'),
	(18, 'Boulevard Del Perro', 'Los Santos County'),
	(19, 'Bridge Street', 'Los Santos County'),
	(20, 'Brouge Avenue', 'Los Santos County'),
	(21, 'Buccaneer Way', 'Los Santos County'),
	(22, 'Buen Vino Road', 'Los Santos County'),
	(23, 'Caesars Place', 'Los Santos County'),
	(24, 'Calais Avenue', 'Los Santos County'),
	(25, 'Capital Boulevard', 'Los Santos County'),
	(26, 'Carcer Way', 'Los Santos County'),
	(27, 'Carson Avenue', 'Los Santos County'),
	(28, 'Chum Street', 'Los Santos County'),
	(29, 'Chupacabra Street', 'Los Santos County'),
	(30, 'Clinton Avenue', 'Los Santos County'),
	(31, 'Cockingend Drive', 'Los Santos County'),
	(32, 'Conquistador Street', 'Los Santos County'),
	(33, 'Cortes Street', 'Los Santos County'),
	(34, 'Cougar Avenue', 'Los Santos County'),
	(35, 'Covenant Avenue', 'Los Santos County'),
	(36, 'Cox Way', 'Los Santos County'),
	(37, 'Crusade Road', 'Los Santos County'),
	(38, 'Davis Avenue', 'Los Santos County'),
	(39, 'Decker Street', 'Los Santos County'),
	(40, 'Didion Drive', 'Los Santos County'),
	(41, 'Dorset Drive', 'Los Santos County'),
	(42, 'Dorset Place', 'Los Santos County'),
	(43, 'Dry Dock Street', 'Los Santos County'),
	(44, 'Dunstable Drive', 'Los Santos County'),
	(45, 'Dunstable Lane', 'Los Santos County'),
	(46, 'Dutch London Street', 'Los Santos County'),
	(47, 'Eastbourne Way', 'Los Santos County'),
	(48, 'East Galileo Avenue', 'Los Santos County'),
	(49, 'East Mirror Drive', 'Los Santos County'),
	(50, 'Eclipse Boulevard', 'Los Santos County'),
	(51, 'Edwood Way', 'Los Santos County'),
	(52, 'Elgin Avenue', 'Los Santos County'),
	(53, 'El Burro Boulevard', 'Los Santos County'),
	(54, 'El Rancho Boulevard', 'Los Santos County'),
	(55, 'Equality Way', 'Los Santos County'),
	(56, 'Exceptionalists Way', 'Los Santos County'),
	(57, 'Fantastic Place', 'Los Santos County'),
	(58, 'Fenwell Place', 'Los Santos County'),
	(59, 'Forum Drive', 'Los Santos County'),
	(60, 'Fudge Lane', 'Los Santos County'),
	(61, 'Galileo Road', 'Los Santos County'),
	(62, 'Gentry Lane', 'Los Santos County'),
	(63, 'Ginger Street', 'Los Santos County'),
	(64, 'Glory Way', 'Los Santos County'),
	(65, 'Goma Street', 'Los Santos County'),
	(66, 'Greenwich Parkway', 'Los Santos County'),
	(67, 'Greenwich Place', 'Los Santos County'),
	(68, 'Greenwich Way', 'Los Santos County'),
	(69, 'Grove Street', 'Los Santos County'),
	(70, 'Hanger Way', 'Los Santos County'),
	(71, 'Hangman Avenue', 'Los Santos County'),
	(72, 'Hardy Way', 'Los Santos County'),
	(73, 'Hawick Avenue', 'Los Santos County'),
	(74, 'Heritage Way', 'Los Santos County'),
	(75, 'Hillcrest Avenue', 'Los Santos County'),
	(76, 'Hillcrest Ridge Access Road', 'Los Santos County'),
	(77, 'Imagination Court', 'Los Santos County'),
	(78, 'Industry Passage', 'Los Santos County'),
	(79, 'Ineseno Road', 'Los Santos County'),
	(80, 'Integrity Way', 'Los Santos County'),
	(81, 'Invention Court', 'Los Santos County'),
	(82, 'Innocence Boulevard', 'Los Santos County'),
	(83, 'Jamestown Street', 'Los Santos County'),
	(84, 'Kimble Hill Drive', 'Los Santos County'),
	(85, 'Kortz Drive', 'Los Santos County'),
	(86, 'Labor Place', 'Los Santos County'),
	(87, 'Laguna Place', 'Los Santos County'),
	(88, 'Lake Vinewood Drive', 'Los Santos County'),
	(89, 'Las Lagunas Boulevard', 'Los Santos County'),
	(90, 'Liberty Street', 'Los Santos County'),
	(91, 'Lindsay Circus', 'Los Santos County'),
	(92, 'Little Bighorn Avenue', 'Los Santos County'),
	(93, 'Low Power Street', 'Los Santos County'),
	(94, 'Macdonald Street', 'Los Santos County'),
	(95, 'Mad Wayne Thunder Drive', 'Los Santos County'),
	(96, 'Magellan Avenue', 'Los Santos County'),
	(97, 'Marathon Avenue', 'Los Santos County'),
	(98, 'Marlowe Drive', 'Los Santos County'),
	(99, 'Melanoma Street', 'Los Santos County'),
	(100, 'Meteor Street', 'Los Santos County'),
	(101, 'Milton Road', 'Los Santos County'),
	(102, 'Mirror Park Boulevard', 'Los Santos County'),
	(103, 'Mirror Place', 'Los Santos County'),
	(104, 'Morningwood Boulevard', 'Los Santos County'),
	(105, 'Mount Haan Drive', 'Los Santos County'),
	(106, 'Mount Haan Road', 'Los Santos County'),
	(107, 'Mount Vinewood Drive', 'Los Santos County'),
	(108, 'Movie Star Way', 'Los Santos County'),
	(109, 'Mutiny Road', 'Los Santos County'),
	(110, 'New Empire Way', 'Los Santos County'),
	(111, 'Nikola Avenue', 'Los Santos County'),
	(112, 'Nikola Place', 'Los Santos County'),
	(113, 'Normandy Drive', 'Los Santos County'),
	(114, 'North Archer Avenue', 'Los Santos County'),
	(115, 'North Conker Avenue', 'Los Santos County'),
	(116, 'North Sheldon Avenue', 'Los Santos County'),
	(117, 'North Rockford Drive', 'Los Santos County'),
	(118, 'Occupation Avenue', 'Los Santos County'),
	(119, 'Orchardville Avenue', 'Los Santos County'),
	(120, 'Palomino Avenue', 'Los Santos County'),
	(121, 'Peaceful Street', 'Los Santos County'),
	(122, 'Perth Street', 'Los Santos County'),
	(123, 'Picture Perfect Drive', 'Los Santos County'),
	(124, 'Plaice Place', 'Los Santos County'),
	(125, 'Playa Vista', 'Los Santos County'),
	(126, 'Popular Street', 'Los Santos County'),
	(127, 'Portola Drive', 'Los Santos County'),
	(128, 'Power Street', 'Los Santos County'),
	(129, 'Prosperity Street', 'Los Santos County'),
	(130, 'Prosperity Street Promenade', 'Los Santos County'),
	(131, 'Red Desert Avenue', 'Los Santos County'),
	(132, 'Richman Street', 'Los Santos County'),
	(133, 'Rockford Drive', 'Los Santos County'),
	(134, 'Roy Lowenstein Boulevard', 'Los Santos County'),
	(135, 'Rub Street', 'Los Santos County'),
	(136, 'Sam Austin Drive', 'Los Santos County'),
	(137, 'San Andreas Avenue', 'Los Santos County'),
	(138, 'Sandcastle Way', 'Los Santos County'),
	(139, 'San Vitus Boulevard', 'Los Santos County'),
	(140, 'Senora Road', 'Los Santos County'),
	(141, 'Shank Street', 'Los Santos County'),
	(142, 'Signal Street', 'Los Santos County'),
	(143, 'Sinner Street', 'Los Santos County'),
	(144, 'Sinners Passage', 'Los Santos County'),
	(145, 'South Arsenal Street', 'Los Santos County'),
	(146, 'South Boulevard Del Perro', 'Los Santos County'),
	(147, 'South Mo Milton Drive', 'Los Santos County'),
	(148, 'South Rockford Drive', 'Los Santos County'),
	(149, 'South Shambles Street', 'Los Santos County'),
	(150, 'Spanish Avenue', 'Los Santos County'),
	(151, 'Steele Way', 'Los Santos County'),
	(152, 'Strangeways Drive', 'Los Santos County'),
	(153, 'Strawberry Avenue', 'Los Santos County'),
	(154, 'Supply Street', 'Los Santos County'),
	(155, 'Sustancia Road', 'Los Santos County'),
	(156, 'Swiss Street', 'Los Santos County'),
	(157, 'Tackle Street', 'Los Santos County'),
	(158, 'Tangerine Street', 'Los Santos County'),
	(159, 'Tongva Drive', 'Los Santos County'),
	(160, 'Tower Way', 'Los Santos County'),
	(161, 'Tug Street', 'Los Santos County'),
	(162, 'Utopia Gardens', 'Los Santos County'),
	(163, 'Vespucci Boulevard', 'Los Santos County'),
	(164, 'Vinewood Boulevard', 'Los Santos County'),
	(165, 'Vinewood Park Drive', 'Los Santos County'),
	(166, 'Vitus Street', 'Los Santos County'),
	(167, 'Voodoo Place', 'Los Santos County'),
	(168, 'West Eclipse Boulevard', 'Los Santos County'),
	(169, 'West Galileo Avenue', 'Los Santos County'),
	(170, 'West Mirror Drive', 'Los Santos County'),
	(171, 'Whispymound Drive', 'Los Santos County'),
	(172, 'Wild Oats Drive', 'Los Santos County'),
	(173, 'York Street', 'Los Santos County'),
	(174, 'Zancudo Barranca', 'LOS Santos'),
	(175, 'Algonquin Boulevard', 'Blaine County'),
	(176, 'Alhambra Drive', 'Blaine County'),
	(177, 'Armadillo Avenue', 'Blaine County'),
	(178, 'Baytree Canyon Road (County)', 'Blaine County'),
	(179, 'Calafia Road', 'Blaine County'),
	(180, 'Cascabel Avenue', 'Blaine County'),
	(181, 'Cassidy Trail', 'Blaine County'),
	(182, 'Cat-Claw Avenue', 'Blaine County'),
	(183, 'Chianski Passage', 'Blaine County'),
	(184, 'Cholla Road', 'Blaine County'),
	(185, 'Cholla Springs Avenue', 'Blaine County'),
	(186, 'Duluoz Avenue', 'Blaine County'),
	(187, 'East Joshua Road', 'Blaine County'),
	(188, 'Fort Zancudo Approach Road', 'Blaine County'),
	(189, 'Galileo Road', 'Blaine County'),
	(190, 'Grapeseed Avenue', 'Blaine County'),
	(191, 'Grapeseed Main Street', 'Blaine County'),
	(192, 'Joad Lane', 'Blaine County'),
	(193, 'Joshua Road', 'Blaine County'),
	(194, 'Lesbos Lane', 'Blaine County'),
	(195, 'Lolita Avenue', 'Blaine County'),
	(196, 'Marina Drive', 'Blaine County'),
	(197, 'Meringue Lane', 'Blaine County'),
	(198, 'Mount Haan Road', 'Blaine County'),
	(199, 'Mountain View Drive', 'Blaine County'),
	(200, 'Niland Avenue', 'Blaine County'),
	(201, 'North Calafia Way', 'Blaine County'),
	(202, 'Nowhere Road', 'Blaine County'),
	(203, 'O\'Neil Way', 'Blaine County'),
	(204, 'Paleto Boulevard', 'Blaine County'),
	(205, 'Panorama Drive', 'Blaine County'),
	(206, 'Procopio Drive', 'Blaine County'),
	(207, 'Procopio Promenade', 'Blaine County'),
	(208, 'Pyrite Avenue', 'Blaine County'),
	(209, 'Raton Pass', 'Blaine County'),
	(210, 'Route 68 Approach', 'Blaine County'),
	(211, 'Seaview Road', 'Blaine County'),
	(212, 'Senora Way', 'Blaine County'),
	(213, 'Smoke Tree Road', 'Blaine County'),
	(214, 'Union Road', 'Blaine County'),
	(215, 'Zancudo Avenue', 'Blaine County'),
	(216, 'Zancudo Road', 'Blaine County'),
	(217, 'Zancudo Trail', 'Blaine County'),
	(218, 'Interstate 1', 'State'),
	(219, 'Interstate 2', 'State'),
	(220, 'Interstate 4', 'State'),
	(221, 'Interstate 5', 'State'),
	(222, 'Route 1', 'State'),
	(223, 'Route 11', 'State'),
	(224, 'Route 13', 'State'),
	(225, 'Route 14', 'State'),
	(226, 'Route 15', 'State'),
	(227, 'Route 16', 'State'),
	(228, 'Route 17', 'State'),
	(229, 'Route 18', 'State'),
	(230, 'Route 19', 'State'),
	(231, 'Route 20', 'State'),
	(232, 'Route 22', 'State'),
	(233, 'Route 23', 'State'),
	(234, 'Route 68', 'State;');
/*!40000 ALTER TABLE `streets` ENABLE KEYS */;

-- Dumping structure for table opencad.tones
CREATE TABLE IF NOT EXISTS `tones` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` set('0','1') NOT NULL DEFAULT '0' COMMENT '0 = inactive, 1 = active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Tones table. DO NOT ADD ROWS TO THIS TABLE';

-- Dumping data for table opencad.tones: ~3 rows (approximately)
/*!40000 ALTER TABLE `tones` DISABLE KEYS */;
INSERT INTO `tones` (`id`, `name`, `active`) VALUES
	(0, 'priority', '0'),
	(1, 'recurring', '0'),
	(2, 'panic', '1');
/*!40000 ALTER TABLE `tones` ENABLE KEYS */;

-- Dumping structure for table opencad.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text,
  `identifier` varchar(255) DEFAULT NULL,
  `admin_privilege` int(1) NOT NULL DEFAULT '0' COMMENT 'If 0 then user does not possess any administrative permissions, else if 1 then user possess Moderator privileges, else if 2 then user possess Administrator privileges.',
  `supervisor_privilege` int(1) NOT NULL DEFAULT '0' COMMENT 'If 0 then user does not possess any supervisor privileges, else 1 then user possess supervisor privileges.',
  `password_reset` int(1) NOT NULL DEFAULT '0' COMMENT '1 means password reset required. 0 means it''s not.',
  `approved` int(1) NOT NULL DEFAULT '0' COMMENT 'Three main statuses: 0 means pending approval. 1 means has access. 2 means suspended',
  `suspend_reason` tinytext COMMENT 'Stores the reason why a user is Suspended',
  `suspend_duration` date DEFAULT NULL COMMENT 'Stores the duration a user is Suspended for',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='User table';

-- Dumping data for table opencad.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `identifier`, `admin_privilege`, `supervisor_privilege`, `password_reset`, `approved`, `suspend_reason`, `suspend_duration`) VALUES
	(1, 'Radcrazykid2', 'radcrazykid2@hotmail.ca', '$2y$10$q93k82fGbuTsmtTJ..dz0u1D2iCgXynuWQ1X67wXA3vmxcSNVjyIS', '1-L-18', 2, 3, 0, 1, NULL, NULL),
	(3, 'Dan Joe', 'grezel.daniel@gmail.com', '$2y$10$RlGAFBj77oYOsP12TSJ8ke1TwXB9wm/v9oCD/5rj8VnKqlPBBJvlm', '5-L-10', 0, 0, 0, 1, NULL, NULL),
	(4, 'Daniel Calbert', 'radcrazykid2@atlasgamingenterprise.com', '$2y$10$GYRTzeGQTVCUsbolxEVhKOO8wV4Aea/NuWBl7svicYYP0sjZADqz.', '1-L-18', 2, 0, 0, 1, NULL, NULL),
	(5, 'Paige Foreman', 'insanecaribou@yahoo.com', '$2y$10$w2L16aLLff528XZdesuoeuDASeVbQx654iS2liqAYdxjPEA3gsm2W', 'Caribear', 0, 0, 0, 1, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table opencad.user_departments
CREATE TABLE IF NOT EXISTS `user_departments` (
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table opencad.user_departments: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_departments` DISABLE KEYS */;
INSERT INTO `user_departments` (`user_id`, `department_id`) VALUES
	(4, 0),
	(4, 1),
	(4, 7),
	(4, 6),
	(3, 5),
	(4, 2),
	(4, 8),
	(5, 1),
	(5, 8);
/*!40000 ALTER TABLE `user_departments` ENABLE KEYS */;

-- Dumping structure for table opencad.user_departments_temp
CREATE TABLE IF NOT EXISTS `user_departments_temp` (
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Temporary table - stores user departments for non-approved users';

-- Dumping data for table opencad.user_departments_temp: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_departments_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_departments_temp` ENABLE KEYS */;

-- Dumping structure for table opencad.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Make` varchar(100) NOT NULL,
  `Model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=latin1;

-- Dumping data for table opencad.vehicles: ~502 rows (approximately)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`id`, `Make`, `Model`) VALUES
	(1, 'Albany', 'Alpha'),
	(2, 'Albany', 'Buccaneer'),
	(3, 'Albany', 'Buccaneer Custom'),
	(4, 'Albany', 'Cavalcade'),
	(5, 'Albany', 'Cavalcade FXT'),
	(6, 'Albany', 'Emperor'),
	(7, 'Albany', 'Esperanto'),
	(8, 'Albany', 'Fanken Stange'),
	(9, 'Albany', 'Hermes'),
	(10, 'Albany', 'Lurcher'),
	(11, 'Albany', 'Manana'),
	(12, 'Albany', 'Police Road Crusiser'),
	(13, 'Albany', 'Police Stinger'),
	(14, 'Albany', 'Presidente'),
	(15, 'Albany', 'Primo'),
	(16, 'Albany', 'Primo Custom'),
	(17, 'Albany', 'Roman`s Taxi'),
	(18, 'Albany', 'Romero'),
	(19, 'Albany', 'Roosevelt'),
	(20, 'Albany', 'Roosevelt Valor'),
	(21, 'Albany', 'Stretch'),
	(22, 'Albany', 'Virgo'),
	(23, 'Albany', 'Washington'),
	(24, 'Annis', 'Elergy Retro Custom'),
	(25, 'Annis', 'Elergy RH8'),
	(26, 'Annis', 'Pinacle'),
	(27, 'Annis', 'RE-7B'),
	(28, 'Annis', 'Savestra'),
	(29, 'Benefactor', 'Dubsta'),
	(30, 'Benefactor', 'Dubsta 6x6'),
	(31, 'Benefactor', 'Feltzer'),
	(32, 'Benefactor', 'Glendale'),
	(33, 'Benefactor', 'Panto'),
	(34, 'Benefactor', 'Schafter'),
	(35, 'Benefactor', 'Schafter LWB'),
	(36, 'Benefactor', 'Schafter LWB Armored'),
	(37, 'Benefactor', 'Schafter v12 Armored'),
	(38, 'Benefactor', 'Schater v12'),
	(39, 'Benefactor', 'Schwartzer'),
	(40, 'Benefactor', 'Serrano'),
	(41, 'Benefactor', 'Stirling GT'),
	(42, 'Benefactor', 'Streiter'),
	(43, 'Benefactor', 'Stretch E'),
	(44, 'Benefactor', 'Surano'),
	(45, 'Benefactor', 'Turreted Limo'),
	(46, 'Benefactor', 'XLS'),
	(47, 'Benefactor', 'XLS Armored'),
	(48, 'BF', 'Bifta'),
	(49, 'BF', 'Dune Buggy'),
	(50, 'BF', 'Dune FAV'),
	(51, 'BF', 'Injection'),
	(52, 'BF', 'Ramp Buggy'),
	(53, 'BF', 'Raptor'),
	(54, 'BF', 'Space Docker'),
	(55, 'BF', 'Surfer'),
	(56, 'Bollokan', 'Paririe'),
	(57, 'Bravado', 'Banshee'),
	(58, 'Bravado', 'Banshee 900R'),
	(59, 'Bravado', 'Bison'),
	(60, 'Bravado', 'Buffalo'),
	(61, 'Bravado', 'Buffalo S'),
	(62, 'Bravado', 'Duneloader'),
	(63, 'Bravado', 'Feroci'),
	(64, 'Bravado', 'FIB'),
	(65, 'Bravado', 'Gantlet'),
	(66, 'Bravado', 'Gresley'),
	(67, 'Bravado', 'Half-track'),
	(68, 'Bravado', 'Paradise'),
	(69, 'Bravado', 'Police Cruiser'),
	(70, 'Bravado', 'Rat Truck'),
	(71, 'Bravado', 'Rat-Loader'),
	(72, 'Bravado', 'Redwood Gauntlet'),
	(73, 'Bravado', 'Rumpo'),
	(74, 'Bravado', 'Rumpo Custom'),
	(75, 'Bravado', 'Sprunk Buffalo'),
	(76, 'Bravado', 'Verlierer'),
	(77, 'Bravado', 'Youga'),
	(78, 'Bravado', 'Youga Classic'),
	(79, 'Brute', 'Airport Bus'),
	(80, 'Brute', 'Alphamail'),
	(81, 'Brute', 'Ambulance'),
	(82, 'Brute', 'Armored Boxbville'),
	(83, 'Brute', 'Boxville'),
	(84, 'Brute', 'Bus'),
	(85, 'Brute', 'Camper'),
	(86, 'Brute', 'Dashound'),
	(87, 'Brute', 'Enforcer'),
	(88, 'Brute', 'Mr. Tasty'),
	(89, 'Brute', 'Police Riot'),
	(90, 'Brute', 'Police Stockade'),
	(91, 'Brute', 'Pony'),
	(92, 'Brute', 'Rental Shuttle Bus'),
	(93, 'Brute', 'Stockade'),
	(94, 'Brute', 'Taco Van'),
	(95, 'Brute', 'Tour Bus'),
	(96, 'Brute', 'Utility Truck'),
	(97, 'Buckingham', 'Akula'),
	(98, 'Buckingham', 'Alpha-Z1'),
	(99, 'Buckingham', 'Howard NX-25'),
	(100, 'Buckingham', 'Luxor'),
	(101, 'Buckingham', 'Luxor Deluxe'),
	(102, 'Buckingham', 'Maverick'),
	(103, 'Buckingham', 'Miljet'),
	(104, 'Buckingham', 'Nimbus'),
	(105, 'Buckingham', 'Police Maverick'),
	(106, 'Buckingham', 'Pyro'),
	(107, 'Buckingham', 'Shamal'),
	(108, 'Buckingham', 'Super Volito'),
	(109, 'Buckingham', 'Super Volito Carbon'),
	(110, 'Buckingham', 'Swift'),
	(111, 'Buckingham', 'Swift Delux'),
	(112, 'Buckingham', 'Tug'),
	(113, 'Buckingham', 'Valkyrie'),
	(114, 'Buckingham', 'Valkyrie MOD.0'),
	(115, 'Buckingham', 'Vestra'),
	(116, 'Buckingham', 'Volatus'),
	(117, 'Canis', 'Bodhi'),
	(118, 'Canis', 'Crusader'),
	(119, 'Canis', 'Kalahari'),
	(120, 'Canis', 'Kamacho'),
	(121, 'Canis', 'Mesa'),
	(122, 'Canis', 'Seminole'),
	(123, 'Chariot', 'Romero Hearse'),
	(124, 'Cheval', 'Fugitive'),
	(125, 'Cheval', 'Marshall'),
	(126, 'Cheval', 'Picador'),
	(127, 'Cheval', 'Surge'),
	(128, 'Classique', 'Salton'),
	(129, 'Coil', 'Brawler'),
	(130, 'Coil', 'Raiden'),
	(131, 'Coil', 'Rocker Voltic'),
	(132, 'Coil', 'Voltic'),
	(133, 'Desclasse', 'Asea'),
	(134, 'Desclasse', 'Burger Shot Stallion'),
	(135, 'Desclasse', 'Burrito'),
	(136, 'Desclasse', 'Drift Tampa'),
	(137, 'Desclasse', 'Gang Burrito'),
	(138, 'Desclasse', 'Granger'),
	(139, 'Desclasse', 'Laundromat'),
	(140, 'Desclasse', 'Lifeguard'),
	(141, 'Desclasse', 'Mamba'),
	(142, 'Desclasse', 'Merit'),
	(143, 'Desclasse', 'Moonbeam'),
	(144, 'Desclasse', 'Moonbeam Custom'),
	(145, 'Desclasse', 'Park Ranger'),
	(146, 'Desclasse', 'Police Patrol'),
	(147, 'Desclasse', 'Police Rancher'),
	(148, 'Desclasse', 'Police Transporter'),
	(149, 'Desclasse', 'Premier'),
	(150, 'Desclasse', 'Racher XL'),
	(151, 'Desclasse', 'Racnher'),
	(152, 'Desclasse', 'Rhapsody'),
	(153, 'Desclasse', 'Sabre'),
	(154, 'Desclasse', 'Sabre Turbo'),
	(155, 'Desclasse', 'Sabre Turbo Custom'),
	(156, 'Desclasse', 'Sheriff SUV'),
	(157, 'Desclasse', 'Stallion'),
	(158, 'Desclasse', 'Tampa'),
	(159, 'Desclasse', 'Taxi'),
	(160, 'Desclasse', 'Tornado'),
	(161, 'Desclasse', 'Tornado Custom'),
	(162, 'Desclasse', 'Tornado Rat Rod'),
	(163, 'Desclasse', 'Vigero'),
	(164, 'Desclasse', 'Voodoo'),
	(165, 'Desclasse', 'Voodoo Custom'),
	(166, 'Dewbauchee', 'Emeplar'),
	(167, 'Dewbauchee', 'JB 700'),
	(168, 'Dewbauchee', 'Massacro'),
	(169, 'Dewbauchee', 'Massacro Racecar'),
	(170, 'Dewbauchee', 'Rapid GT'),
	(171, 'Dewbauchee', 'Rapid GT Classic'),
	(172, 'Dewbauchee', 'Seven-70'),
	(173, 'Dewbauchee', 'Specter'),
	(174, 'Dewbauchee', 'Specter Custom'),
	(175, 'Dewbauchee', 'Super GT'),
	(176, 'Dewbauchee', 'Vagner'),
	(177, 'Dinka', 'Akuma'),
	(178, 'Dinka', 'Blista'),
	(179, 'Dinka', 'Blista Compact'),
	(180, 'Dinka', 'Chavos'),
	(181, 'Dinka', 'Double-T'),
	(182, 'Dinka', 'Double-T Custom'),
	(183, 'Dinka', 'Enduro'),
	(184, 'Dinka', 'Go Go Monkey Blista'),
	(185, 'Dinka', 'Hakumai'),
	(186, 'Dinka', 'Jester'),
	(187, 'Dinka', 'Jester Racecar'),
	(188, 'Dinka', 'Marquis'),
	(189, 'Dinka', 'Perennial'),
	(190, 'Dinka', 'Thrust'),
	(191, 'Dinka', 'Vindicator'),
	(192, 'DUDE', 'Cement Truck'),
	(193, 'DUDE', 'Crane'),
	(194, 'DUDE', 'Dozer'),
	(195, 'DUDE', 'Dumper'),
	(196, 'Dundreary', 'Amiral'),
	(197, 'Dundreary', 'Landstalker'),
	(198, 'Dundreary', 'Regina'),
	(199, 'Dundreary', 'Stretch'),
	(200, 'Dundreary', 'Virgo Classic'),
	(201, 'Dundreary', 'Virgo Classic Custom'),
	(202, 'Emperor', 'ETR1'),
	(203, 'Emperor', 'Habanero'),
	(204, 'Emperor', 'Lokus'),
	(205, 'Enus', 'Cagnoscenti Cabrio'),
	(206, 'Enus', 'Cognoscenti'),
	(207, 'Enus', 'Cognoscenti 55'),
	(208, 'Enus', 'Cognoscenti 55 Armored'),
	(209, 'Enus', 'Cognoscenti Armored'),
	(210, 'Enus', 'Huntley S'),
	(211, 'Enus', 'Super Diamond'),
	(212, 'Enus', 'Super Drop Diamond'),
	(213, 'Enus', 'Windsor'),
	(214, 'Enus', 'Windsor Drop'),
	(215, 'Fathom', 'FQ 2'),
	(216, 'Gallivanter', 'Ballar LE LWB'),
	(217, 'Gallivanter', 'Baller 1st Gen'),
	(218, 'Gallivanter', 'Baller 2nd Gen'),
	(219, 'Gallivanter', 'Baller LE'),
	(220, 'Gallivanter', 'Baller LE Armored'),
	(221, 'Gallivanter', 'Baller LE LWB Armored'),
	(222, 'Grotti', 'Blade'),
	(223, 'Grotti', 'Brioso'),
	(224, 'Grotti', 'Briso R/A'),
	(225, 'Grotti', 'Carbonuzzare'),
	(226, 'Grotti', 'Cheeta Classic'),
	(227, 'Grotti', 'Cheetah'),
	(228, 'Grotti', 'GT500'),
	(229, 'Grotti', 'Tirosmo'),
	(230, 'Grotti', 'X80 Pronto'),
	(231, 'Hijack', 'Khamelion'),
	(232, 'Hijack', 'Ruston'),
	(233, 'HVY', ' Barracks'),
	(234, 'HVY', ' Biff'),
	(235, 'HVY', ' Biff-chassis Mixer'),
	(236, 'HVY', ' Insurgent'),
	(237, 'HVY', ' Insurgent Pick-Up'),
	(238, 'HVY', 'Airtug'),
	(239, 'HVY', 'APC'),
	(240, 'HVY', 'Barracks Semi'),
	(241, 'HVY', 'Barrage'),
	(242, 'HVY', 'Biff-chassis Mixwe'),
	(243, 'HVY', 'Chernobog'),
	(244, 'HVY', 'Crane'),
	(245, 'HVY', 'Cutter'),
	(246, 'HVY', 'Dock Handler'),
	(247, 'HVY', 'Docktug'),
	(248, 'HVY', 'Dozer'),
	(249, 'HVY', 'Dump'),
	(250, 'HVY', 'Forklift'),
	(251, 'HVY', 'Insurgent Pick-Up Custom'),
	(252, 'HVY', 'RCV'),
	(253, 'HVY', 'Ripley'),
	(254, 'HVY', 'Skylift'),
	(255, 'HVY', 'Tipper-chassis Mixer'),
	(256, 'Imponte', 'Deluxo'),
	(257, 'Imponte', 'DF8-90'),
	(258, 'Imponte', 'Duke'),
	(259, 'Imponte', 'Duke O\'Death'),
	(260, 'Imponte', 'Phoenix'),
	(261, 'Imponte', 'Ruiner'),
	(262, 'Imponte', 'Ruiner 2000'),
	(263, 'Invetero', 'Coquette'),
	(264, 'Invetero', 'Coquette BlackFin'),
	(265, 'Invetero', 'Coquette Classic'),
	(266, 'Invetero', 'Coquette upgraded'),
	(267, 'Jacksheepe', 'Lawn Mower'),
	(268, 'JoBuilt', 'Hauler'),
	(269, 'JoBuilt', 'Hauler Custom'),
	(270, 'JoBuilt', 'Mammatus'),
	(271, 'JoBuilt', 'P-996 Lazer'),
	(272, 'JoBuilt', 'Phantom'),
	(273, 'JoBuilt', 'Phantom Custom'),
	(274, 'JoBuilt', 'Phantom Wedge'),
	(275, 'JoBuilt', 'Rubble'),
	(276, 'JoBuilt', 'Trashmaster'),
	(277, 'JoBuilt', 'Velum'),
	(278, 'JoBuilt', 'Velum 5-Seater'),
	(279, 'Karin', 'Asterope'),
	(280, 'Karin', 'BeeJay XL'),
	(281, 'Karin', 'Dilettante'),
	(282, 'Karin', 'Futo'),
	(283, 'Karin', 'Intruder'),
	(284, 'Karin', 'Kuruma'),
	(285, 'Karin', 'Rebel'),
	(286, 'Karin', 'Sultan'),
	(287, 'Karin', 'Sultan RS'),
	(288, 'Karin', 'Technical'),
	(289, 'Karin', 'Technical Aqua'),
	(290, 'Karin', 'Technical Custom'),
	(291, 'Kraken', 'Kraken sub'),
	(292, 'Lampadati', 'Casco'),
	(293, 'Lampadati', 'Felon'),
	(294, 'Lampadati', 'Felon GT'),
	(295, 'Lampadati', 'Freeway'),
	(296, 'Lampadati', 'Furore GT'),
	(297, 'Lampadati', 'Hexer'),
	(298, 'Lampadati', 'Innovation'),
	(299, 'Lampadati', 'Pigalle'),
	(300, 'Lampadati', 'Sanctus'),
	(301, 'Lampadati', 'Toro'),
	(302, 'Lampadati', 'Troops Rallye'),
	(303, 'Lampadati', 'Viseris'),
	(304, 'Lampadati', 'Zombis'),
	(305, 'Liberty Chop Shop', 'Zombie'),
	(306, 'Liberty City Cycles', 'Avarus'),
	(307, 'Libery Chop Shop', 'Lycan'),
	(308, 'Libery Chop Shop', 'Nightblade'),
	(309, 'Maibatsu Corporation', 'Frogger'),
	(310, 'Maibatsu Corporation', 'Manchez'),
	(311, 'Maibatsu Corporation', 'Mute'),
	(312, 'Maibatsu Corporation', 'Penumbra'),
	(313, 'Maibatsu Corporation', 'Sanchez'),
	(314, 'Maibatsu Corporation', 'Vincent'),
	(315, 'Mammoth', 'Dodo'),
	(316, 'Mammoth', 'Mogul'),
	(317, 'Mammoth', 'NOOSE Patriot'),
	(318, 'Mammoth', 'Patriot'),
	(319, 'Mammoth', 'Tula'),
	(320, 'MTL', 'Brickade'),
	(321, 'MTL', 'Dune'),
	(322, 'MTL', 'Fire Truck'),
	(323, 'MTL', 'Flatbed'),
	(324, 'MTL', 'Packer'),
	(325, 'MTL', 'Pounder'),
	(326, 'MTL', 'Wastelander'),
	(327, 'Nagasaki', 'Auqa Blazer'),
	(328, 'Nagasaki', 'BF400'),
	(329, 'Nagasaki', 'Blazer'),
	(330, 'Nagasaki', 'Blazer Lifeguard'),
	(331, 'Nagasaki', 'Buzzard'),
	(332, 'Nagasaki', 'Buzzard Attack Chopper'),
	(333, 'Nagasaki', 'Caddy'),
	(334, 'Nagasaki', 'Carbon RS'),
	(335, 'Nagasaki', 'Chimera'),
	(336, 'Nagasaki', 'Dinghy'),
	(337, 'Nagasaki', 'Havok'),
	(338, 'Nagasaki', 'Hot Rod Blazer'),
	(339, 'Nagasaki', 'Shotaro'),
	(340, 'Nagasaki', 'Street Blazer'),
	(341, 'Nagasaki', 'Ultralight'),
	(342, 'Obey', '9F'),
	(343, 'Obey', '9F Cabrio'),
	(344, 'Obey', 'Omnis'),
	(345, 'Obey', 'Rocoto'),
	(346, 'Obey', 'Tailgater'),
	(347, 'Ocelot', 'Ardent'),
	(348, 'Ocelot', 'F620'),
	(349, 'Ocelot', 'Jackal'),
	(350, 'Ocelot', 'Lynx'),
	(351, 'Ocelot', 'Pariah'),
	(352, 'Ocelot', 'Penatrator'),
	(353, 'Ocelot', 'Stromberg'),
	(354, 'Ocelot', 'XA-21'),
	(355, 'Overflod', 'Autarch'),
	(356, 'Overflod', 'Entity XF'),
	(357, 'Pegassi', 'Bati 801'),
	(358, 'Pegassi', 'Bati 801RR'),
	(359, 'Pegassi', 'Esskey'),
	(360, 'Pegassi', 'Faggio'),
	(361, 'Pegassi', 'Faggio Mod'),
	(362, 'Pegassi', 'Faggio Sport'),
	(363, 'Pegassi', 'FCR 1000'),
	(364, 'Pegassi', 'FCR 1000 Custom'),
	(365, 'Pegassi', 'Infernus'),
	(366, 'Pegassi', 'Infernus Classic'),
	(367, 'Pegassi', 'Monroe'),
	(368, 'Pegassi', 'Oppressor'),
	(369, 'Pegassi', 'Osiris'),
	(370, 'Pegassi', 'Reaper'),
	(371, 'Pegassi', 'Ruffian'),
	(372, 'Pegassi', 'Speeder'),
	(373, 'Pegassi', 'Tempesta'),
	(374, 'Pegassi', 'Torero'),
	(375, 'Pegassi', 'Vacca'),
	(376, 'Pegassi', 'Vortex'),
	(377, 'Pfister', '811'),
	(378, 'Pfister', 'Comet'),
	(379, 'Pfister', 'Comet Retro Custom'),
	(380, 'Pfister', 'Comet Safari'),
	(381, 'Pfister', 'Neon'),
	(382, 'Principle', 'Diabolus Custom'),
	(383, 'Principle', 'Diaboulus'),
	(384, 'Principle', 'Lectro'),
	(385, 'Principle', 'Nemesis'),
	(386, 'Progen', 'GP1'),
	(387, 'Progen', 'Itali GTB'),
	(388, 'Progen', 'Itali GTB Custom'),
	(389, 'Progen', 'T20'),
	(390, 'Progen', 'Tyrus'),
	(391, 'Schyster', 'Cabby'),
	(392, 'Schyster', 'Fusilade'),
	(393, 'Schyster', 'PMP 600'),
	(394, 'Shitzu', 'Defiler'),
	(395, 'Shitzu', 'Hakuchou'),
	(396, 'Shitzu', 'Hakuchou Drag'),
	(397, 'Shitzu', 'Jetmax'),
	(398, 'Shitzu', 'NRG 900'),
	(399, 'Shitzu', 'Squato'),
	(400, 'Shitzu', 'Suntrap'),
	(401, 'Shitzu', 'Tropic'),
	(402, 'Shitzu', 'Vader'),
	(403, 'Speedophile', 'Seashark'),
	(404, 'Stanley', 'Fieldmaster'),
	(405, 'Stanley', 'Tractor'),
	(406, 'Steel Horse', 'Hexer'),
	(407, 'Steel Horse', 'Zombie'),
	(408, 'TM-02', 'Khanjali'),
	(409, 'Tuffade', 'Adder'),
	(410, 'Tuffade', 'Nero'),
	(411, 'Tuffade', 'Nero Custom'),
	(412, 'Tuffade', 'Z-Type'),
	(413, 'Ubermacht', 'Oracle'),
	(414, 'Ubermacht', 'Oracle XS'),
	(415, 'Ubermacht', 'Rebla'),
	(416, 'Ubermacht', 'Revolter'),
	(417, 'Ubermacht', 'SC1'),
	(418, 'Ubermacht', 'Sentinel Classic'),
	(419, 'Ubermacht', 'Sentinel XS'),
	(420, 'Ubermacht', 'Sentinial'),
	(421, 'Ubermacht', 'Zion'),
	(422, 'Ubermacht', 'Zion Cabrio'),
	(423, 'Vapid', 'Benson'),
	(424, 'Vapid', 'Blade'),
	(425, 'Vapid', 'Bobcat'),
	(426, 'Vapid', 'Bobcat XL'),
	(427, 'Vapid', 'Bullet'),
	(428, 'Vapid', 'Chino'),
	(429, 'Vapid', 'Contender'),
	(430, 'Vapid', 'Desert Raid'),
	(431, 'Vapid', 'Dominator'),
	(432, 'Vapid', 'FMJ'),
	(433, 'Vapid', 'Fortune'),
	(434, 'Vapid', 'Guardian'),
	(435, 'Vapid', 'Hotknife'),
	(436, 'Vapid', 'Huntley Sport'),
	(437, 'Vapid', 'Lost Slamvan'),
	(438, 'Vapid', 'Minivan'),
	(439, 'Vapid', 'Minivan Custom'),
	(440, 'Vapid', 'NOOSE Cruiser'),
	(441, 'Vapid', 'Peyote'),
	(442, 'Vapid', 'Pibwasser Dominator'),
	(443, 'Vapid', 'Police Cruiser'),
	(444, 'Vapid', 'Police Cruiser Interceptor'),
	(445, 'Vapid', 'Prison Bus'),
	(446, 'Vapid', 'Radius'),
	(447, 'Vapid', 'Retinue'),
	(448, 'Vapid', 'Riata'),
	(449, 'Vapid', 'Sadler'),
	(450, 'Vapid', 'Sandking SWB'),
	(451, 'Vapid', 'Sandking XL'),
	(452, 'Vapid', 'Sanier'),
	(453, 'Vapid', 'Scrap Truck'),
	(454, 'Vapid', 'Sheriff Cruiser'),
	(455, 'Vapid', 'Slamvan'),
	(456, 'Vapid', 'Slamvan Custom'),
	(457, 'Vapid', 'Speedo'),
	(458, 'Vapid', 'Steed'),
	(459, 'Vapid', 'Taxi'),
	(460, 'Vapid', 'The Liberator'),
	(461, 'Vapid', 'Towtruck'),
	(462, 'Vapid', 'Trophy Tuck'),
	(463, 'Vapid', 'Unmarked Cruiser'),
	(464, 'Vapid', 'Uranus'),
	(465, 'Vapid', 'Yankee'),
	(466, 'Vulcar', 'Ingo'),
	(467, 'Vulcar', 'Warrener'),
	(468, 'Weeny', 'Issi'),
	(469, 'Western Company', 'Annihailator'),
	(470, 'Western Company', 'Besra'),
	(471, 'Western Company', 'Cargobo'),
	(472, 'Western Company', 'Cuban 800'),
	(473, 'Western Company', 'Duster'),
	(474, 'Western Company', 'Hellitours Maverick'),
	(475, 'Western Company', 'Mallard'),
	(476, 'Western Company', 'Maverick'),
	(477, 'Western Company', 'Police Maverick'),
	(478, 'Western Company', 'Rogue'),
	(479, 'Western Company', 'Seabreeze'),
	(480, 'Western Motorcycle Company', 'Angel'),
	(481, 'Western Motorcycle Company', 'Bagger'),
	(482, 'Western Motorcycle Company', 'Cliffhanger'),
	(483, 'Western Motorcycle Company', 'Daemon'),
	(484, 'Western Motorcycle Company', 'Diaboulus'),
	(485, 'Western Motorcycle Company', 'Gargoyle'),
	(486, 'Western Motorcycle Company', 'Hellfury'),
	(487, 'Western Motorcycle Company', 'Nightblade'),
	(488, 'Western Motorcycle Company', 'Police Bike'),
	(489, 'Western Motorcycle Company', 'Rat Bike'),
	(490, 'Western Motorcycle Company', 'Revenant'),
	(491, 'Western Motorcycle Company', 'Sovereign'),
	(492, 'Western Motorcycle Company', 'Wayfarer'),
	(493, 'Western Motorcycle Company', 'Wolfsbane'),
	(494, 'Western Motorcycle Company', 'Zombie Bobber'),
	(495, 'Western Motorcycle Company', 'Zombie Chopper'),
	(496, 'Willard', 'Faction'),
	(497, 'Willard', 'Faction Custom'),
	(498, 'Willard', 'Marbelle'),
	(499, 'Willard', 'Solair'),
	(500, 'Willard', 'Willard'),
	(501, 'Zirconium', 'Journey'),
	(502, 'Zirconium', 'Stratum');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table opencad.weapons
CREATE TABLE IF NOT EXISTS `weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weapon_type` varchar(255) NOT NULL,
  `weapon_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dumping data for table opencad.weapons: ~32 rows (approximately)
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` (`id`, `weapon_type`, `weapon_name`) VALUES
	(1, 'Pistols', 'Pistol'),
	(2, 'Pistols', 'Combat-Pistol'),
	(3, 'Pistols', 'AP-Pistol'),
	(4, 'Pistols', 'Pistol-.50'),
	(5, 'Pistols', 'SNS-Pistol'),
	(6, 'Pistols', 'Heavy-Pistol'),
	(7, 'Pistols', 'Vintage-Pistol'),
	(8, 'Sub-Machine-Guns', 'Micro-SMG'),
	(9, 'Sub-Machine-Guns', 'SMG'),
	(10, 'Sub-Machine-Guns', 'Assault-SMG'),
	(11, 'Sub-Machine-Guns', 'Gusenberg-Sweeper'),
	(12, 'Shotguns', 'Pump-Shotgun'),
	(13, 'Shotguns', 'Sawed-off-Shotgun'),
	(14, 'Shotguns', 'Assault-Shotgun'),
	(15, 'Shotguns', 'Bullpup-Shotgun'),
	(16, 'Shotguns', 'Heavy-Shotgun'),
	(17, 'Shotguns', 'Musket'),
	(18, 'Light-Machine-Guns', 'MG'),
	(19, 'Light-Machine-Guns', 'Combat-MG'),
	(20, 'Assault-Rifles', 'Assault-Rifle'),
	(21, 'Assault-Rifles', 'Carbine-Rifle'),
	(22, 'Assault-Rifles', 'Advanced-Rifle'),
	(23, 'Assault-Rifles', 'Special-Carbine'),
	(24, 'Assault-Rifles', 'Bullpup-Rifle'),
	(25, 'Sniper-Rifles', 'Sniper-Rifle'),
	(26, 'Sniper-Rifles', 'Heave-Sniper'),
	(27, 'Sniper-Rifles', 'Marksman-Rifle'),
	(28, 'Heavy', 'RPG'),
	(29, 'Heavy', 'Minigun'),
	(30, 'Heavy', 'Homing-Launcher'),
	(31, 'Heavy', 'Grenade-Launcher'),
	(32, 'Heavy', 'Firework-Launcher');
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
