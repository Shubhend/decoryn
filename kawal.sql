-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2020 at 01:55 AM
-- Server version: 5.6.47-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kawal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1926, 'Jaspreet', 'Jaspreet@123', '2017-01-24 16:21:18', '17-12-2019 06:59:16 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  `img` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`, `img`) VALUES
(14, 'Napkin Holder Series', 'dsfdsfdsf sdfsdf									', '2020-02-24 12:36:15', '08-05-2020 12:54:18 PM', '1480cdfhdrh.jpg'),
(15, 'Salt Pepper Shaker Series', '', '2020-03-11 06:41:43', '08-05-2020 12:49:05 PM', '15138cvcv.jpg'),
(16, 'Tea Coasters', 'Tea Coasters', '2020-04-30 12:14:25', '08-05-2020 12:45:31 PM', '1631zxzz.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `file` varchar(222) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `msg`, `file`, `date`) VALUES
(1, 'sdfsdf', '34423423423', '666666666667sfdsf@gsm.com', '', '', '2019-12-29'),
(2, 'sddfs', '4325423523', 'sfdsf@gsm.com', '', '', '2019-12-29'),
(3, 'sddfs', '4325423523', 'sfdsf@gsm.com', '', '', '2019-12-29'),
(4, 'dsfs', '4325423523', '666666666667sfdsf@gsm.com', '', '', '2019-12-29'),
(5, 'sdzgffds', '345345', 'sfdaddasf@gsm.com', 'sdgsdgsg', '', '2019-12-29'),
(6, 'dfgsdfg', '4325423523', 'sfdsf@gsm.com', 'sdgdsgdsfg', '', '2019-12-29'),
(7, 'sdfsdf', '4325423523', '666666666667sfdsf@gsm.com', 'dfgdsgsd', '', '2020-01-05'),
(8, 'sdfsdf', '4325423523', '666666666667sfdsf@gsm.com', 'dfgdsgsd', '', '2020-01-05'),
(9, 'zsdf', '9868969659', '666666666667sfdsf@gsm.com', 'dxsgsdgsdg', 'CBSE Class 11 Accountancy Study Material.pdf', '2020-01-05'),
(10, 'zsdf', '9868969659', '666666666667sfdsf@gsm.com', 'dxsgsdgsdg', 'CBSE Class 11 Accountancy Study Material.pdf', '2020-01-05'),
(11, 'sfasf', '34423423423', 'sfdsf@gsm.com', 'ewfasfasf', '', '2020-01-05'),
(12, 'jay shree prasad', '4325423523', '666666666667sfdsf@gsm.com', 'sdfcsadf', '', '2020-01-25'),
(13, 'jay shree prasad', '4325423523', '666666666667sfdsf@gsm.com', 'sdfcsadf', '', '2020-01-25'),
(14, 'Nikko Kulas', '380-658-2543 x813', 'shanaepage@yahoo.com', 'Gorgeous Granite Sausages', '', '2020-02-15'),
(15, 'Dorthy Swaniawski', '1-461-521-3548 x47183', 'henrikengstrom@hotmail.no', 'cyan', '', '2020-02-15'),
(16, 'Brant Brown', '499.177.4857 x3672', 'crabnet55@verizon.net', 'parse', '', '2020-02-15'),
(17, 'Johnnie Herzog', '1-977-209-3327 x641', 'torihambleton@gmail.com', 'Dynamic', '', '2020-02-16'),
(18, 'Twila Pfeffer', '005.486.7960 x07853', 'lovelacewp@aol.com', 'Frozen', '', '2020-02-16'),
(19, 'Mr. Nicholaus Kub', '391-374-3504', 'bincontro1@optimum.net', 'Metal', '', '2020-02-24'),
(20, 'Pedro Gleason', '049-761-1309', 'curtisdavies401@gmail.com', 'Parkways', '', '2020-02-25'),
(21, 'Art Gaylord', '446-329-6180', 'raymondfrancis2001@yahoo.com', 'architectures', '', '2020-02-26'),
(22, 'Mitchel Goldner', '(038) 169-0262', 'dmussi@charter.net', 'optimize', '', '2020-02-27'),
(23, 'Kelton Will', '493-205-3875 x042', 'scotner@mooreshomehealth.com', 'partnerships', '', '2020-03-06'),
(24, 'Daisha Williamson', '(833) 773-5520 x765', 'ctiemens@zonnet.nl', 'program', '', '2020-03-11'),
(25, 'Marielle Howell', '479-872-0828 x4217', 'joanne.allen@techuk.org', 'Pennsylvania', '', '2020-03-20'),
(26, 'Omari Willms', '(521) 401-8220 x03005', 'dottiejeffries@gmail.com', 'out-of-the-box', '', '2020-03-22'),
(27, 'Shayna Pagac', '(361) 325-3145 x1568', 'bwb@bronfman.us', 'withdrawal', '', '2020-03-22'),
(28, 'Alanis Marquardt IV', '154-097-6344', 'bonanza@hpms.com', 'dynamic', '', '2020-03-24'),
(29, 'Gracie Bednar', '111.455.1465 x87256', 'tejasbemba@yahoo.com', 'Checking Account', '', '2020-03-31'),
(30, 'Fanny Krajcik Jr.', '(888) 403-8425', 'meta.enklaar@gmail.com', 'Practical', '', '2020-04-08'),
(31, 'Michele Botsford', '1-191-035-7624 x571', 'cguerraz@comcast.net', 'South Dakota', '', '2020-04-10'),
(32, 'Celestine Dickens DDS', '211.050.0112', 'hjybarra@aep.com', 'Small', '', '2020-04-10'),
(33, 'Jerrybum', '82922644655', 'no-replynuspsype@gmail.com', 'GÐ¾Ð¾d dÐ°y!  decoryn.com \r\n \r\nDid yÐ¾u knÐ¾w thÐ°t it is pÐ¾ssiblÐµ tÐ¾ sÐµnd rÐµquÐµst whÐ¾lly lÐ°wful? \r\nWÐµ Ð¾ffÐµr Ð° nÐµw uniquÐµ wÐ°y Ð¾f sÐµnding lÐµttÐµr thrÐ¾ugh fÐµÐµdbÐ°Ñk fÐ¾rms. SuÑh f', '', '2020-04-11'),
(34, 'Rashad Hauck I', '380-393-9690 x538', 'rick@cyclefitness.com', 'Liaison', '', '2020-04-14'),
(35, 'Danial Goyette', '13447360995', 'pourlaf111@gmail.com', 'bandwidth', '', '2020-05-01'),
(36, 'Raymond 	Brown', '89975916655', 'info@thecctvhub.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\n3M 1860, 9502, 9501, 3ply, KN95, KN99, N95 masks \r\nProtective masks \r\nEye mask \r\nProtective cap \r\nDisinfectant \r\nH', '', '2020-05-06'),
(37, 'Eliseo Corwin', '16123116613', 'samantha@hbwinc.com', 'Generic Plastic Mouse', '', '2020-05-07'),
(38, 'Humberto Johnston IV', '17284817589', 'bhamid93@live.co.uk', 'Trafficway', '', '2020-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `productName` text,
  `productDescription` text,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(222) NOT NULL,
  `modelno` varchar(200) DEFAULT NULL,
  `seotitle` text,
  `metades` text,
  `altimage` text,
  `keyword` text,
  `headline` text,
  `homeproduct` int(22) NOT NULL,
  `postingDate` date DEFAULT NULL,
  `updationDate` datetime DEFAULT NULL,
  `status` int(22) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `productName`, `productDescription`, `productImage1`, `productImage2`, `modelno`, `seotitle`, `metades`, `altimage`, `keyword`, `headline`, `homeproduct`, `postingDate`, `updationDate`, `status`) VALUES
(119, 14, 'Napkin Holder - DNH-10', 'ICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KPHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5Nb2RlbCBOdW1iZXI8L3RkPjx0ZD5ETkgtMTA8L3RkPjwvdHI+PHRyPjx0ZD5NYXRlcmlhbCBHcmFkZTwvdGQ+PHRkPlNTIDIwMiBDb2lsZWQmbmJzcDs8L3RkPjwvdHI+PHRyPjx0ZD5Db2xvdXI8L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD5GSW5pc2g8L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '130Napkin Holder- DNH- 10.jpg', '25550858simple napkin holder web.jpg', '', 'stainless steel napkin holder', 'this napkin holder for restaurant table is in stainless steel is a simple design semicircle shaped paper napkin holder ', 'napkin holder in stainless steel', 'napkin holder design, napkin holder for table, napkin holder for restaurant, paper napkin holder, SS napkin holder', 'SS Napkin Holder Set', 1, '2020-02-24', '2020-04-20 07:32:19', 1),
(120, 14, 'Napkin Holder - DNH-11', 'ICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KPHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5Nb2RlbCBOdW1iZXI8L3RkPjx0ZD5ETkgtMTE8L3RkPjwvdHI+PHRyPjx0ZD5NYXRlcmlhbCBncmFkZTwvdGQ+PHRkPlNTIDIwMiBDb2lsZWQ8L3RkPjwvdHI+PHRyPjx0ZD5Db2xvdXI8L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD5GaW5pc2g8L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '46Napkin Holder- DNH- 11.jpg', '843420070v 3 line holes web.jpg', '', 'stainless steel napkin holder', 'this is a circular design napkin holder to hold tissue paper in stainless steel 202 coiled material', 'steel napkin holder', 'napkin holder stand, napkin holder modern, napkin holder for restaurants, napkin holder designs, steel napkin holder, kitchen napkin holder', 'ss napkin holder for bars', 1, '2020-02-29', '2020-02-29 12:25:38', 1),
(121, 14, 'Napkin Holder - DNH - 12', 'ICAgIA0KICAgIA0KICAgIA0KPHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5Nb2RlbCBOdW1iZXI8L3RkPjx0ZD5ETkgtIDEyPC90ZD48L3RyPjx0cj48dGQ+TWF0ZXJpYWwgR3JhZGU8L3RkPjx0ZD5TUyAyMDIgQ29pbDwvdGQ+PC90cj48dHI+PHRkPkNvbG91cjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPkZJbmlzaMKgPC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '166Napkin Holder- DNH- 12.jpg', '864524570heart napkin holder web.jpg', '', 'Tissue paper holder in steel ', 'this is a heart shaped napkin holder in stainless steel made from premium quality ss 202 coil material.', 'napkin holder in steel', 'napkin holder steel, napkin holder modern, napkin holder for table, napkin holder for restaurants, fancy holder fancy, kitchen napkin holder', 'stainless steel paper napkin holder', 1, '2020-02-29', '2020-03-01 04:28:52', 1),
(122, 14, 'Napkin Holder - DNH - 13', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5Nb2RlbCBOby48L3RkPjx0ZD5ETkggLSAxMzwvdGQ+PC90cj48dHI+PHRkPk1hdGVyaWFsIEdyYWRlPC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPkNvbG91cjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPkZpbmlzaDwvdGQ+PHRkPk1hdHRlPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '34Napkin Holder- DNH- 13.jpg', '1224817933slight holes web.jpg', '', 'Tissue napkin holder in stainless steel', 'this steel napkin holder for tableware of restaurants, dinner rooms, hotels, bars, clubs is used to hold tissue paper and is made from high grade ss 202 coiled material', 'Stainless steel napkin holder', 'napkin holder steel, modern napkin holder, table napkin holder, fancy napkin holder, triangular napkin holder', 'SS Napkin Holder Set', 1, '2020-03-01', '0000-00-00 00:00:00', 1),
(123, 14, 'napkin Holder - DNH - 14', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5Nb2RlbCBOdW1iZXI8L3RkPjx0ZD5ETkggLSAxNDwvdGQ+PC90cj48dHI+PHRkPk1hdGVyaWFsIEdyYWRlPC90ZD48dGQ+U1MgMjAyIENvaWxlZCZuYnNwOzwvdGQ+PC90cj48dHI+PHRkPkNvbG91cjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPkZpbmlzaCZuYnNwOzwvdGQ+PHRkPk1hdHRlPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '50Napkin Holder- DNH- 14.jpg', '2100006713slight big holes web.jpg', '', 'triangular steel napkin holder', 'this fancy napkin holder in stainless steel with amazing polish will give a really modern look to your restaurant, hotel, kitchen, ome, dinnerware', 'SS Tissue paper Holder', 'napkin holder stainless steel, napkin holder restaurant, napkin holder kitchen, napkin holder stand, napkin holder stand, napkin holder for kitchen', 'napkin holder design fancy', 1, '2020-03-01', '0000-00-00 00:00:00', 1),
(124, 14, 'Napkin Holder - DNH - 15', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5Nb2RlbCBOby48L3RkPjx0ZD5ETkggLSAxNTwvdGQ+PC90cj48dHI+PHRkPk1hdGVyaWFsIEdyYWRlPC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPkNvbG91cjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPkZpbmlzaDwvdGQ+PHRkPk1hdHRlPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '114Napkin Holder- DNH- 15.jpg', 'strait lines holder web.jpg', '', 'Napkin Holder SS', 'this napkin holder in ss is best for your restaurants, bars, clubs, etc it will give a modern look to your serving collection.', 'Modern Napkin Holder', 'napkin holder restaurant, napkin holder stainless steel, napkin holder stand, napkin holder design, napkin  holder', 'steel paper tissue holder', 1, '2020-03-01', '0000-00-00 00:00:00', 1),
(126, 14, 'Napkin Holder - DNH - 16', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5Nb2RlbCBOby48L3RkPjx0ZD5ETkggLSAxNjwvdGQ+PC90cj48dHI+PHRkPk1hdGVyaWFsIEdyYWRlPC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPkNvbG91ciZuYnNwOzwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPkZpbmlzaCZuYnNwOzwvdGQ+PHRkPk1hdHRlPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '56Napkin Holder- DNH- 16.jpg', '', '', 'Modern napkin holder', 'these napkin holder for restaurants are sed as tableware and dinnerware for your bars, catering, hotelware, etc', 'napkin holder silver', 'napkin holder stainless steel, napkin holder restaurant, napkin holder kitchen, napkin holder stand, napkin holder stand, napkin holder for kitchen', 'napkin holder ss stand', 1, '2020-03-01', '0000-00-00 00:00:00', 1),
(127, 15, 'Salt Pepper Set DSP- 10', 'ICAgIA0KICAgIA0KICAgIA0KPHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5Nb2RlbCBObzwvdGQ+PHRkPkRTUC0xMDwvdGQ+PC90cj48dHI+PHRkPk1hdGVyaWFsIEdyYWRlPC90ZD48dGQ+U1MgMjAyPC90ZD48L3RyPjx0cj48dGQ+Q29sb3VyPC90ZD48dGQ+U2lsdmVyPC90ZD48L3RyPjx0cj48dGQ+RmluaXNoPC90ZD48dGQ+Q2hyb21lPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '176Salt Pepper Set- DSP-10.jpg', '54', '', 'stainless steel salt pepper set', 'this modern design salt and pepper shaker set is ball type design with quality polish to decoryn\'s standard and it will give a really awesome look to your restaurants, bars, hotels, kitchen, homes, etc.', 'stainless steel salt and pepper', 'ss salt shakers, ss salt pepper set, ss salt and pepper shakers, ss salt pepper shakers', 'stainless steel salt n pepper shaker set', 1, '2020-03-11', '2020-04-19 10:29:05', 1),
(128, 15, 'Salt pepper Set DSP- 11', 'ICAgIA0KICAgIA0KICAgIA0KPHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5NYXRlcmlhbCBHcmFkZTwvdGQ+PHRkPlNTIDIwMjwvdGQ+PC90cj48dHI+PHRkPkZpbmlzaDwvdGQ+PHRkPk1hdHRlPC90ZD48L3RyPjx0cj48dGQ+Q29sb3VyPC90ZD48dGQ+U2lsdmVyPC90ZD48L3RyPjx0cj48dGQ+TW9kZWwgTnVtYmVyPC90ZD48dGQ+RFNQLSAxMTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '198Salt Pepper Set- DSP- 11.jpg', '', '', 'stainless steel salt pepper shakers', 'salt and pepper shaker set in unique cone shaped design this namakdani is made from premium quality ss 202 coiled material and is rust proof.', 'ss salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'ss salt pepper shaker set', 1, '2020-03-11', '2020-03-11 07:12:37', 1),
(129, 15, 'Salt pepper Set DSP- 12', 'PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6IDEuNjsiPjxicj48L2Rpdj48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5Nb2RlbCBOdW1iZXI8YnI+PC90ZD48dGQ+RFNQLSAxMTxicj48L3RkPjwvdHI+PHRyPjx0ZD5GaW5pc2g8YnI+PC90ZD48dGQ+TWF0dGU8YnI+PC90ZD48L3RyPjx0cj48dGQ+Q29sb3VyPGJyPjwvdGQ+PHRkPlNpbHZlcjxicj48L3RkPjwvdHI+PHRyPjx0ZD5NYXRlcmlhbCBHcmFkZTxicj48L3RkPjx0ZD5TUyAyMDI8YnI+PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '109Salt Pepper Set- DSP- 12.jpg', '149', '', 'stainless steel salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'salt pepper shaker set', 1, '2020-04-19', '2020-04-20 09:18:14', 1),
(130, 15, 'Salt pepper Set DSP- 13', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIiBzdHlsZT0id2lkdGg6IDYxOHB4OyI+PHRib2R5Pjx0cj48dGQ+TWF0ZXJpYWwgR3JhZGU8L3RkPjx0ZD5TUyAyMDI8L3RkPjwvdHI+PHRyPjx0ZD5GaW5pc2g8L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPkNvbG91cjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPk1vZGVsIE51bWJlcjwvdGQ+PHRkPkRTUC0gMTM8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPg==', '58Sal Pepper Set- DSP- 13.jpg', '34', '', 'stainless steel salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'salt pepper shaker set', 1, '2020-04-19', '0000-00-00 00:00:00', 1),
(131, 15, 'Salt pepper Set DSP- 14', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIiBzdHlsZT0id2lkdGg6IDYxOHB4OyI+PHRib2R5Pjx0cj48dGQ+TWF0ZXJpYWwgR3JhZGU8L3RkPjx0ZD5TUyAyMDI8L3RkPjwvdHI+PHRyPjx0ZD5GaW5pc2g8L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPkNvbG91cjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPk1vZGVsIE51bWJlcjwvdGQ+PHRkPkRTUC0gMTQ8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '64Salt Pepper Set- DSP- 14.jpg', '159', '', 'stainless steel salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'salt pepper shaker set', 1, '2020-04-19', '0000-00-00 00:00:00', 1),
(132, 15, 'Salt pepper Set DSP- 15', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIiBzdHlsZT0id2lkdGg6IDYxOHB4OyI+PHRib2R5Pjx0cj48dGQ+TWF0ZXJpYWwgR3JhZGU8L3RkPjx0ZD5TUyAyMDI8L3RkPjwvdHI+PHRyPjx0ZD5GaW5pc2g8L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPkNvbG91cjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPk1vZGVsIE51bWJlcjwvdGQ+PHRkPkRTUC0gMTU8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '22Salt Pepper Set- DSP- 15.jpg', '116', '', 'stainless steel salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'salt pepper shaker set', 1, '2020-04-19', '0000-00-00 00:00:00', 1),
(133, 15, 'Salt pepper Set DSP- 16', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIiBzdHlsZT0id2lkdGg6IDYxOHB4OyI+PHRib2R5Pjx0cj48dGQ+TWF0ZXJpYWwgR3JhZGU8L3RkPjx0ZD5TUyAyMDI8L3RkPjwvdHI+PHRyPjx0ZD5GaW5pc2g8L3RkPjx0ZD5DaHJvbWUoSGFtbWVyKTwvdGQ+PC90cj48dHI+PHRkPkNvbG91cjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPk1vZGVsIE51bWJlcjwvdGQ+PHRkPkRTUC0gMTY8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '195Salt Pepper Set- DSP- 16.jpg', '178', '', 'stainless steel salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'salt pepper shaker set', 1, '2020-04-19', '0000-00-00 00:00:00', 1),
(134, 15, 'Salt pepper Set DSP- 17', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIiBzdHlsZT0id2lkdGg6IDYxOHB4OyI+PHRib2R5Pjx0cj48dGQ+TWF0ZXJpYWwgR3JhZGU8L3RkPjx0ZD5TUyAyMDI8L3RkPjwvdHI+PHRyPjx0ZD5GaW5pc2g8L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPkNvbG91cjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPk1vZGVsIE51bWJlcjwvdGQ+PHRkPkRTUC0gMTc8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '126Salt Pepper Set- DSP- 17.jpg', '99', '', 'stainless steel salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'salt pepper shaker set', 1, '2020-04-19', '0000-00-00 00:00:00', 1),
(135, 16, 'Tea Coaster DTC-11', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5DT0RFPC90ZD48dGQ+RFRDLTExPC90ZD48L3RyPjx0cj48dGQ+R1JBREU8L3RkPjx0ZD5TUzIwMjwvdGQ+PC90cj48dHI+PHRkPkNPTE9VUjwvdGQ+PHRkPlNJTFZFUjwvdGQ+PC90cj48dHI+PHRkPkZJTklTSDwvdGQ+PHRkPk1BVFRMRTwvdGQ+PC90cj48dHI+PHRkPkNPQVNURVJTPC90ZD48dGQ+NjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '55DTC- 11.jpg', '124', '', 'Ss tea coasters set', 'This tea cup and coaster set design is pyramid shaped you can buy this tea coffe coaster from Decoryn company manufacture and wholeseller of tea coasters ', 'Tea coasters manufacturers delhi', 'tea', 'Tea Coaster for office ', 1, '2020-04-30', '0000-00-00 00:00:00', 1),
(136, 16, 'Tea Coaster DTC-12', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIiBzdHlsZT0id2lkdGg6IDYxOXB4OyI+PHRib2R5Pjx0cj48dGQ+Q09ERTwvdGQ+PHRkPkRUQy0xMjwvdGQ+PC90cj48dHI+PHRkPkdSQURFPC90ZD48dGQ+U1MyMDI8L3RkPjwvdHI+PHRyPjx0ZD5DT0xPVVI8L3RkPjx0ZD5TSUxWRVI8L3RkPjwvdHI+PHRyPjx0ZD5GSU5JU0g8L3RkPjx0ZD5NQVRUTEU8L3RkPjwvdHI+PHRyPjx0ZD5DT0FTVEVSUzwvdGQ+PHRkPjY8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '21DTC- 12.jpg', '183', '', 'Ss tea coasters set', 'This tea cup and coaster set design is pyramid shaped you can buy this tea coffe coaster from Decoryn company manufacture and wholeseller of tea coasters ', 'Tea coasters manufacturers delhi', 'tea', 'Tea Coaster for office', 1, '2020-04-30', '0000-00-00 00:00:00', 1),
(137, 16, 'Tea Coaster DTC-13', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIiBzdHlsZT0id2lkdGg6IDYxOXB4OyI+PHRib2R5Pjx0cj48dGQ+Q09ERTwvdGQ+PHRkPkRUQy0xMzwvdGQ+PC90cj48dHI+PHRkPkdSQURFPC90ZD48dGQ+U1MyMDI8L3RkPjwvdHI+PHRyPjx0ZD5DT0xPVVI8L3RkPjx0ZD5TSUxWRVI8L3RkPjwvdHI+PHRyPjx0ZD5GSU5JU0g8L3RkPjx0ZD5NQVRUTEU8L3RkPjwvdHI+PHRyPjx0ZD5DT0FTVEVSUzwvdGQ+PHRkPjY8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '89DTC- 13.jpg', '150', '', 'Ss tea coasters set', 'This tea cup and coaster set design is pyramid shaped you can buy this tea coffe coaster from Decoryn company manufacture and wholeseller of tea coasters ', 'Tea coasters manufacturers delhi', 'tea', 'Tea Coaster for office', 1, '2020-04-30', '0000-00-00 00:00:00', 1),
(138, 16, 'Tea Coaster DTC-14', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIiBzdHlsZT0id2lkdGg6IDYxOXB4OyI+PHRib2R5Pjx0cj48dGQ+Q09ERTwvdGQ+PHRkPkRUQy0xNDwvdGQ+PC90cj48dHI+PHRkPkdSQURFPC90ZD48dGQ+U1MyMDI8L3RkPjwvdHI+PHRyPjx0ZD5DT0xPVVI8L3RkPjx0ZD5TSUxWRVI8L3RkPjwvdHI+PHRyPjx0ZD5GSU5JU0g8L3RkPjx0ZD5NQVRUTEU8L3RkPjwvdHI+PHRyPjx0ZD5DT0FTVEVSUzwvdGQ+PHRkPjY8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '97DTC- 14.jpg', '164', '', 'Ss tea coasters set', 'This tea cup and coaster set design is pyramid shaped you can buy this tea coffe coaster from Decoryn company manufacture and wholeseller of tea coasters ', 'Tea coasters manufacturers delhi', 'tea', 'Tea Coaster for office', 1, '2020-04-30', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `productid` varchar(222) NOT NULL,
  `msg` varchar(222) NOT NULL,
  `date` varchar(222) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `email`, `productid`, `msg`, `date`) VALUES
(1, 'sdasf', '666666666667sfdsf@gsm.com', '82', 'cxvfzdx', '2020-01-25'),
(2, 'zdsfcsdf', 'sfafadsf@gsm.com', '82', 'zdsfsdfsf', '2020-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `data` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `data`) VALUES
(1, 'header_img', '47banner2 (3).png'),
(2, 'header_text', 'Unique Designs For You');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'ewrwe', '1@ggmail.com', 4444444444, '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-21 13:31:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1927;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
