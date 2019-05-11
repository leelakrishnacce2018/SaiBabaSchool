-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.13 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table kptms.kpdepartment: ~0 rows (approximately)
DELETE FROM `kpdepartment`;
/*!40000 ALTER TABLE `kpdepartment` DISABLE KEYS */;
INSERT INTO `kpdepartment` (`id`, `created_time`, `dept_code`, `depthead`, `description`, `kp_org_id`, `name`, `status`, `updated_time`) VALUES
	(1, '2019-05-11 14:22:28', 'dept', '1', 'Sample', '1', 'Admin', '1', '2019-05-11 14:23:08');
/*!40000 ALTER TABLE `kpdepartment` ENABLE KEYS */;

-- Dumping data for table kptms.kpdesignation: ~0 rows (approximately)
DELETE FROM `kpdesignation`;
/*!40000 ALTER TABLE `kpdesignation` DISABLE KEYS */;
INSERT INTO `kpdesignation` (`id`, `created_time`, `name`, `status`, `updated_time`) VALUES
	(1, '2019-05-11 19:09:34', 'Admin', '1', '2019-05-11 19:09:36');
/*!40000 ALTER TABLE `kpdesignation` ENABLE KEYS */;

-- Dumping data for table kptms.kpmultiroles: ~0 rows (approximately)
DELETE FROM `kpmultiroles`;
/*!40000 ALTER TABLE `kpmultiroles` DISABLE KEYS */;
INSERT INTO `kpmultiroles` (`id`, `designationid`, `desigrole`) VALUES
	(1, '1', 'ROLE_ADMIN');
/*!40000 ALTER TABLE `kpmultiroles` ENABLE KEYS */;

-- Dumping data for table kptms.kpusers: ~0 rows (approximately)
DELETE FROM `kpusers`;
/*!40000 ALTER TABLE `kpusers` DISABLE KEYS */;
INSERT INTO `kpusers` (`id`, `created_time`, `department`, `designation`, `email`, `enabled`, `firstname`, `kp_org_id`, `lastname`, `mobilenumber`, `password`, `reportto`, `updated_time`, `username`) VALUES
	(1, '2019-05-11 14:16:44', '1', '1', 'leela@gmail.com', '1', 'leela', '1', 'krishna', '9293139394', '123456', '2', '2019-05-11 14:16:21', 'leela'),
	(2, '2019-05-11 19:11:48', '1', '1', '', '1', 'Pawan', '1', 'Kalyan', '9700088107', '123456', '1', '2019-05-11 19:11:48', 'pawan');
/*!40000 ALTER TABLE `kpusers` ENABLE KEYS */;

-- Dumping data for table kptms.kpuserslogs: ~0 rows (approximately)
DELETE FROM `kpuserslogs`;
/*!40000 ALTER TABLE `kpuserslogs` DISABLE KEYS */;
INSERT INTO `kpuserslogs` (`id`, `logintime`, `sessionname`, `userid`) VALUES
	(1, '2019-05-11 14:18:17', 'login', '1'),
	(2, '2019-05-11 14:30:53', 'logout', '1'),
	(3, '2019-05-11 14:31:03', 'login', '1'),
	(4, '2019-05-11 14:33:37', 'login', '1'),
	(5, '2019-05-11 14:34:58', 'login', '1'),
	(6, '2019-05-11 14:36:56', 'logout', 'null'),
	(7, '2019-05-11 14:37:09', 'login', '1'),
	(8, '2019-05-11 14:38:15', 'logout', 'null'),
	(9, '2019-05-11 14:38:27', 'login', '1'),
	(10, '2019-05-11 14:39:40', 'logout', 'null'),
	(11, '2019-05-11 14:39:50', 'login', '1'),
	(12, '2019-05-11 15:04:37', 'login', '1'),
	(13, '2019-05-11 18:57:13', 'login', '1');
/*!40000 ALTER TABLE `kpuserslogs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
