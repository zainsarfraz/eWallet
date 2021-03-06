		-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 04:47 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ewallet`
--



-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMINID` int(3) AUTO_INCREMENT,
  `email` varchar(24) NOT NULL unique,
  `FIRST_NAME` varchar(14) NOT NULL,
  `LAST_NAME` varchar(14) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `AGE` int(2) DEFAULT NULL,

  PRIMARY KEY (ADMINID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `admin` (`ADMINID`, `email`, `FIRST_NAME`, `LAST_NAME`, `PASSWORD`, `AGE`) VALUES
(900, 'admin@gmail.com','Zain', 'Sarfraz', 'admin', 20),
(903, 'abc@gmail.com','MAAZ', 'JAVED', '123456', 20);




-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USERID` int(3) AUTO_INCREMENT,
  `FIRST_NAME` varchar(14) NOT NULL,
  `LAST_NAME` varchar(14) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `AGE` int(2) DEFAULT NULL,
  `DATE_JOINED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `BALANCE` int(10) DEFAULT NULL,
  `IS_RETAILER` varchar(5) DEFAULT NULL,

	PRIMARY KEY (USERID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `user` (`USERID`, `FIRST_NAME`, `LAST_NAME`, `PASSWORD`, `AGE`, `DATE_JOINED`, `BALANCE`, `IS_RETAILER`) VALUES
(100, 'Haseeb', 'Afzal', '12345', 29, now(), 1200, 'NO'),
(101, 'Umair', 'Afzal', '12345', 21, now() , 3200, 'NO'),
(102, 'Usama', 'Riasat', '12345', 21, now(), 700, 'NO'),
(103, 'Usman', 'Anwar', '12345', 25, now(), 4500,  'NO'),
(104, 'Ahmad', 'Sohail', '12345', 19, now(), 40000,  'NO'),
(105, 'Nehal', 'Nasir', '12345', 20, now(), 1000,  'YES'),
(106, 'Basit', 'Ali', '12345', 20, now(), 1000,  'NO'),
(107, 'Waqas', 'Majeed', '12345', 24, now(), 5000,  'NO'),
(109, 'Zain', 'Sarfraz', 'zain', 20, now(), 5000,  'NO')
;


-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `CONTACT_INFO_ID` int(3) AUTO_INCREMENT,
  `USER_ID` int(3),
  `ADDRESS` varchar(50) NOT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `PHONE_NO` int(11) DEFAULT NULL,

	PRIMARY KEY (CONTACT_INFO_ID),
	FOREIGN KEY (USER_ID) REFERENCES USER(USERID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `contact_info` (`CONTACT_INFO_ID`, `USER_ID`,`ADDRESS`, `EMAIL`, `PHONE_NO`) VALUES
(205, 100,'STREET # 66,HOUSE # 9 LAHORE', 'haseeb@gmail.com', 31192049),
(206, 101,'STREET # 11,HOUSE # 2 LAHORE', 'umair@gmail.com', 31192049),
(207, 102,'STREET # 8,HOUSE # 66 LAHORE', 'usama@gmail.com', 31192049),
(208, 103,'STREET # 2,HOUSE # 23 LAHORE', 'usman@gmail.com', 31192049),
(209, 104,'STREET # 8,HOUSE # 77 LAHORE', 'ahmad@gmail.com', 31192049),
(210, 105,'STREET # 6,HOUSE # 72 LAHORE', 'nehal@gmail.com', 31192049),
(211, 106,'STREET # 23,HOUSE # 24 LAHORE', 'basit@gmail.com', 31192049),
(212, 107,'STREET # 12,HOUSE # 23 LAHORE', 'waqas@gmail.com', 31192049),
(213, 109,'STREET # 4,HOUSE # 4 Daroghawala LAHORE', 'zain.noob99@gmail.com', 03349792529);


-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ITEM_ID` int(3) AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `PRICE` int(5) DEFAULT NULL,
  `PICTURE_LOCATION` varchar(200) DEFAULT NULL,

	PRIMARY KEY (ITEM_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `item` (`ITEM_ID`, `NAME`, `DESCRIPTION`, `PRICE`, `PICTURE_LOCATION`) VALUES
(800, 'Demo Item 1', 'THIS IS A DUMMY DESCRIPTON', 1000, 'IMAGES/ITEMS/ITEM1'),
(801, 'Demo Item 2', 'THIS IS A DUMMY DESCRIPTON', 500, 'IMAGES/ITEMS/ITEM2'),
(802, 'Demo Item 3', 'THIS IS A DUMMY DESCRIPTON', 3000, 'IMAGES/ITEMS/ITEM3'),
(803, 'Demo Item 4', 'THIS IS A DUMMY DESCRIPTON', 2500, 'IMAGES/ITEMS/ITEM4'),
(804, 'Demo Item 5', 'THIS IS A DUMMY DESCRIPTON', 1600, 'IMAGES/ITEMS/ITEM5'),
(805, 'Demo Item 6', 'THIS IS A DUMMY DESCRIPTON', 1600, 'IMAGES/ITEMS/ITEM6'),

(806, 'Demo Item 7', 'THIS IS A DUMMY DESCRIPTON', 1600, 'IMAGES/ITEMS/ITEM7'),

(807, 'Demo Item 8', 'THIS IS A DUMMY DESCRIPTON', 1600, 'IMAGES/ITEMS/ITEM8'),
(808, 'Demo Item 9', 'THIS IS A DUMMY DESCRIPTON', 1600, 'IMAGES/ITEMS/ITEM9');



-- --------------------------------------------------------

--
-- Table structure for table `bill_type`
--

CREATE TABLE `bill_type` (
  `BILL_TYPE_ID` int(3) AUTO_INCREMENT,
  `BILL_NAME` varchar(20) DEFAULT NULL,
  `COMPANY_NAME` varchar(20) DEFAULT NULL,

	PRIMARY KEY (BILL_TYPE_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `bill_type` (`BILL_TYPE_ID`, `BILL_NAME`, `COMPANY_NAME`) VALUES
(400, 'INTERNET BILL', 'PTCL'),
(401, 'ELECTRICITY BILL', 'WAPDA'),
(402, 'WATER SUPPLY BILL', 'WASA'),
(403, 'GAS BILL', 'SUI GAS'),
(404, 'TELEPHONE BILL', 'PTCL'),
(405, 'INTERNET BILL', 'STORMFIBER'),
(406, 'INTERNET BILL', 'WATEEN'),
(407, 'ELECTRICITY BILL', 'LESCO');



-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TRANSACTION_ID` int(3) AUTO_INCREMENT,
  `USERID` int(3) DEFAULT NULL,
  `TRANSACTION_TYPE` varchar(10) DEFAULT NULL,


	PRIMARY KEY (TRANSACTION_ID),
	FOREIGN KEY (USERID) REFERENCES USER(USERID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `transactions` (`TRANSACTION_ID`, `USERID`, `TRANSACTION_TYPE`) VALUES
(500, 100, 'BILL'),
(501, 100, 'BILL'),
(502, 100, 'MONEYT'),
(503, 100, 'DEPOSIT'),
(504, 103, 'BILL'),
(505, 103, 'PURCHASE'),
(506, 104, 'PURCHASE'),
(507, 106, 'BILL'),
(508, 107, 'BILL'),
(509, 107, 'MONEYT'),

(510, 109, 'MONEYT'),
(511, 109, 'BILL'),
(512, 109, 'DEPOSIT');

-- --------------------------------------------------------

--
-- Table structure for table `bill_payment`
--

CREATE TABLE `bill_payment` (
  `BILL_PAYMENT_ID` int(3) AUTO_INCREMENT,
  `TRANSACTION_ID` int(3) DEFAULT NULL,
  `BILLTYPEID` int(3) DEFAULT NULL,
  `AMOUNT` int(5) DEFAULT NULL,
  `PAYMENT_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `USER_ID` int(3) DEFAULT NULL,
  `DUE_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),

	PRIMARY KEY (BILL_PAYMENT_ID),
	FOREIGN KEY (TRANSACTION_ID) REFERENCES TRANSACTIONS(TRANSACTION_ID),
	FOREIGN KEY (BILLTYPEID) REFERENCES BILL_TYPE(BILL_TYPE_ID),
	FOREIGN KEY (USER_ID) REFERENCES USER(USERID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `bill_payment` (`BILL_PAYMENT_ID`, `TRANSACTION_ID`, `BILLTYPEID`, `AMOUNT`, `PAYMENT_DATE`, `USER_ID`, `DUE_DATE`) VALUES
(600, 500, 404, 1500, '2019-12-06 04:56:22', 100, '2019-12-06 04:56:22'),
(601, 501, 402, 1900, '2019-12-06 04:57:14', 100, '2019-12-06 04:57:14'),
(602, 504, 401, 900, '2019-12-06 04:57:44', 103, '2019-12-06 04:57:44'),
(603, 507, 406, 2900, '2019-12-06 04:58:20', 106, '2019-12-06 04:58:20'),
(604, 508, 406, 5500, '2019-12-06 04:59:14', 107, '2019-12-06 04:59:14'),
(605, 511, 401, 2300, '2019-12-06 04:59:14', 109, '2019-12-06 04:59:14');


-- --------------------------------------------------------

--
-- Table structure for table `money_transfer`
--

CREATE TABLE `money_transfer` (
  `MT_ID` int(3) AUTO_INCREMENT,
  `TRANSACTION_ID` int(3) DEFAULT NULL,
  `SENDERID` int(3) DEFAULT NULL,
  `RECIEVERID` int(3) DEFAULT NULL,
  `TRANSFER_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `AMOUNT` int(5) DEFAULT NULL,


	PRIMARY KEY (MT_ID),
	FOREIGN KEY (TRANSACTION_ID) REFERENCES TRANSACTIONS(TRANSACTION_ID),
	FOREIGN KEY (SENDERID) REFERENCES USER(USERID),
	FOREIGN KEY (RECIEVERID) REFERENCES USER(USERID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `money_transfer` (`MT_ID`, `TRANSACTION_ID`, `SENDERID`, `RECIEVERID`, `TRANSFER_DATE`, `AMOUNT`) VALUES
(300, 502, 100, 102, '2019-12-06 05:35:19', 3000),
(301, 509, 107, 106, '2019-12-06 05:35:45', 6000),

(302, 510, 109, 106, '2019-12-06 05:35:45', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `PURCHASEID` int(3) AUTO_INCREMENT,
  `TRANSACTIONID` int(3) DEFAULT NULL,
  `USERID` int(3) DEFAULT NULL,
  `ITEMID` int(3) DEFAULT NULL,
  `DATE_PURCHASED` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `PRICE` int(5) DEFAULT NULL,

	PRIMARY KEY (PURCHASEID),
	FOREIGN KEY (USERID) REFERENCES USER(USERID),
	FOREIGN KEY (ITEMID) REFERENCES ITEM(ITEM_ID),
	FOREIGN KEY (TRANSACTIONID) REFERENCES TRANSACTIONS(TRANSACTION_ID)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `purchases` (`PURCHASEID`, `TRANSACTIONID`, `USERID`, `ITEMID`, `DATE_PURCHASED`, `PRICE`) VALUES
(700, 505, 103, 800, '2019-12-06 05:06:09', 1000),
(701,506,104,803,DEFAULT,2500);

-- --------------------------------------------------------



--
-- Table structure for table `withdraw_deposit`
--

CREATE TABLE `withdraw_deposit` (
  `WD_ID` int(3) AUTO_INCREMENT		,
  `AMOUNT` int(5) DEFAULT NULL,
  `PAYMENT_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IS_WITHDRAW` varchar(5) DEFAULT NULL,
  `IS_DEPOSIT` varchar(5) DEFAULT NULL,
  `TRANSACTION_ID` int(3) DEFAULT NULL,
  `USERID` int(3) DEFAULT NULL,
  `RETAILER_ID` int(3) DEFAULT NULL,

	PRIMARY KEY (WD_ID),
	FOREIGN KEY (TRANSACTION_ID) REFERENCES TRANSACTIONS(TRANSACTION_ID),
	FOREIGN KEY (USERID) REFERENCES USER(USERID)
	
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT into withdraw_deposit VALUES(000,3000,DEFAULT,'no','yes',503,100,105);

INSERT into withdraw_deposit VALUES(001,3500,DEFAULT,'no','yes',512,109,105);


COMMIT;

