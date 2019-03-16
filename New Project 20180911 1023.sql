-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema railway
--

CREATE DATABASE IF NOT EXISTS railway;
USE railway;

--
-- Definition of table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cid` int(10) unsigned NOT NULL auto_increment,
  `c_name` varchar(45) NOT NULL,
  `c_address` varchar(45) NOT NULL,
  `c_mail` varchar(45) NOT NULL,
  `complain` varchar(200) NOT NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`cid`,`c_name`,`c_address`,`c_mail`,`complain`) VALUES 
 (1,'asdf','asdf','asdf','asdf'),
 (2,'asdf','asdf','asdf','asdf'),
 (3,'asdf','asdf','asdf','asdf'),
 (4,'asdf','asdf','asdf','asdf'),
 (5,'asdf','asdff','asdf','asdfasdf'),
 (6,'jakir hosain','dhaka','jakir@gmail.com','train alway being late ?');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Definition of table `reserve`
--

DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve` (
  `r_id` int(10) unsigned NOT NULL auto_increment,
  `t_name` varchar(45) NOT NULL,
  `start_place` varchar(45) NOT NULL,
  `departure` varchar(45) NOT NULL,
  `train_no` varchar(45) NOT NULL,
  `date_journey` varchar(45) NOT NULL,
  `ticket_price` varchar(45) NOT NULL,
  `no_ticket` varchar(45) NOT NULL,
  `total_price` varchar(45) NOT NULL,
  `cus_name` varchar(45) NOT NULL,
  `cus_address` varchar(45) NOT NULL,
  `p_no` varchar(45) NOT NULL,
  `m_id` varchar(45) NOT NULL,
  PRIMARY KEY  (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserve`
--

/*!40000 ALTER TABLE `reserve` DISABLE KEYS */;
INSERT INTO `reserve` (`r_id`,`t_name`,`start_place`,`departure`,`train_no`,`date_journey`,`ticket_price`,`no_ticket`,`total_price`,`cus_name`,`cus_address`,`p_no`,`m_id`) VALUES 
 (1,'vdfgvdfg','Dhaka','Shylete','234','2018','300','3','70200.0','asdf','asdfa','5414567','sfasdf'),
 (2,'vsf','Chittagong','Dhaka','123','2018','200','3','600.0','asdf','asdf','asdf','asdf'),
 (3,'supertain','Chittagong','dhaka','111','09-06-2018','500','3','1500.0','kabir ','majdee','01840029501','dsfasdf@dsaf.com'),
 (4,'vdfgvdfg','Dhaka','Shylete','234','02-02-2018','300','1','300.0','','','',''),
 (5,'vdfgvdfg','Dhaka','Shylete','234','02-02-2018','300','1','300.0','kk','dhak','098','sldkfj@lsdkjf.sdkfj');
/*!40000 ALTER TABLE `reserve` ENABLE KEYS */;


--
-- Definition of table `time`
--

DROP TABLE IF EXISTS `time`;
CREATE TABLE `time` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` (`id`,`uname`,`pass`) VALUES 
 (1,'sarkar','1234');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;


--
-- Definition of table `trains`
--

DROP TABLE IF EXISTS `trains`;
CREATE TABLE `trains` (
  `t_id` int(10) unsigned NOT NULL auto_increment,
  `t_number` varchar(45) NOT NULL,
  `t_name` varchar(45) NOT NULL,
  `s_place` varchar(45) NOT NULL,
  `d_place` varchar(45) NOT NULL,
  `seat_no` varchar(45) NOT NULL,
  `seat_price` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `available` varchar(45) NOT NULL,
  PRIMARY KEY  (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trains`
--

/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` (`t_id`,`t_number`,`t_name`,`s_place`,`d_place`,`seat_no`,`seat_price`,`status`,`available`) VALUES 
 (3,'123','vsf','Chittagong','Dhaka','151','200','Available','147.0'),
 (4,'234','vdfgvdfg','Dhaka','Shylete','502','300','Available','499.0'),
 (5,'111','supertain','Chittagong','Chittagong','23','500','Available','17.0'),
 (6,'112','dipti','Noakhali','Dhaka','25','380','Available','25');
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
