-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 26, 2020 at 02:48 AM
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
  `img` varchar(222) DEFAULT NULL,
  `position` varchar(200) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`, `img`, `position`) VALUES
(14, 'Napkin Holder Series', 'dsfdsfdsf sdfsdf									', '2020-02-24 12:36:15', '26-05-2020 03:03:40 PM', '1480cdfhdrh.jpg', '0'),
(15, 'Salt Pepper Shaker Series', '', '2020-03-11 06:41:43', '08-05-2020 12:49:05 PM', '15138cvcv.jpg', '0'),
(16, 'Tea Coasters', 'Tea Coasters', '2020-04-30 12:14:25', '08-05-2020 12:45:31 PM', '1631zxzz.jpg', '0'),
(17, 'Hygiene Products', '', '2020-05-12 07:30:07', '26-05-2020 03:03:08 PM', '116Liquid soap dispenser.jpg', '1');

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
(38, 'Humberto Johnston IV', '17284817589', 'bhamid93@live.co.uk', 'Trafficway', '', '2020-05-07'),
(39, 'James Giovanni', '86957864618', 'jgiovanni90@comcast.net', 'Good day, \r\n \r\n* Do you have a viable project that requires funding ? \r\n \r\n* Long term loan with reasonable interest rate ? \r\n \r\n* B.G/S.B.L.C \r\n \r\nRegards, \r\n \r\nJames Giovanni \r\nFinancial Broker \r\nTe', '', '2020-05-11'),
(40, 'Cassandra Auer', '11168785958', 'daveyhazel@aol.co.uk', 'Innovative', '', '2020-05-12'),
(41, 'Everette Beier', '16819532610', 'ausport.corey@gmail.com', 'Hong Kong', '', '2020-05-12'),
(42, 'Yozawa Ken', '84948433721', 'sandidelagarzaag@rediffmail.com', 'We offer services that can be sold to over 10 million businesses in 45 countries. \r\nInstead of advertising by email, SMS, SNS, we will send a message that directly reaches the business owner \r\nPlease ', '', '2020-05-13'),
(43, 'Ashok Choudhary ', '9741087226', 'Ashokdudyjat123@gmil.com', 'Yes ', '', '2020-05-13'),
(44, 'Jerod Harris', '12221638415', 'a.utz@camp37.com', 'Solutions', '', '2020-05-13'),
(45, 'Ariel Conn', '11828331685', 'kennethcobin0@gmail.com', 'Rustic Steel Bike', '', '2020-05-14'),
(46, 'Arvilla Reichel DVM', '14837786328', 'daddybyrd@ameritech.net', 'Future-proofed', '', '2020-05-15'),
(47, 'Francisco Salvadore', '86255469829', 'cidanold@yahoo.com', 'Dear CEO decoryn.com \r\nI have an urgent need for a partner to venture in a fully funded investment with you. I would want to negotiate the possibility of a working business agreement with you. Your bu', '', '2020-05-16'),
(48, 'MikeWob', '82148437714', 'no-reply@hilkom-digital.de', 'hi there \r\nI have just checked decoryn.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only', '', '2020-05-16'),
(49, 'Matteo Rutherford', '11076178156', 'daddybyrd@ameritech.net', 'Oval', '', '2020-05-18'),
(50, 'Annie Bergnaum', '19797660641', 'nnmbady@hotmail.com', 'Indiana', '', '2020-05-20'),
(51, 'Brittany Green', '10453185538', 'mike.randolph00@gmail.com', 'Customer', '', '2020-05-20'),
(52, 'Angel Kozey', '13506175496', 'c.domenie5@upcmail.nl', 'Green', '', '2020-05-20'),
(53, 'Jonathan Roseland', '84886827456', 'noreply@asset.fin', 'Hello Partners, \r\n \r\nThe International Investment arm of our company is seeking interested partners in need of alternative funding for long term capital projects or for business development. Our manag', '', '2020-05-22');

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
  `status` int(22) NOT NULL DEFAULT '1',
  `position` varchar(200) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `productName`, `productDescription`, `productImage1`, `productImage2`, `modelno`, `seotitle`, `metades`, `altimage`, `keyword`, `headline`, `homeproduct`, `postingDate`, `updationDate`, `status`, `position`) VALUES
(119, 14, '  Half Moon Napkin Holder  ', 'ICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KPHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RE5ILTEwPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZMKgPC90ZD48L3RyPjx0cj48dGQ+PGI+Q29sb3VyPC9iPjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPjxiPkZpbmlzaDwvYj48L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD5Cb3g8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5IYWxmIE1vb248L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+PGgzPjxicj48L2gzPg==', '130Napkin Holder- DNH- 10.jpg', '142', '', ' Half Moon ss napkin holder', 'this napkin holder for restaurant table is in stainless steel is a simple design semicircle shaped paper napkin holder ', 'napkin holder in stainless steel', 'napkin holder design, napkin holder for table, napkin holder for restaurant, paper napkin holder, SS napkin holder', ' Half Moon ss napkin holder', 1, '2020-02-24', '2020-05-26 09:19:27', 1, '5'),
(120, 14, ' Striped Napkin Holder  ', 'ICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KICAgIA0KPHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RE5IIDExPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyPC90ZD48L3RyPjx0cj48dGQ+PGI+Q29sb3VyPC9iPjwvdGQ+PHRkPlNJTFZFUjwvdGQ+PC90cj48dHI+PHRkPjxiPkZpbmlzaDwvYj48L3RkPjx0ZD5NQVRURTwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD5CT1g8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5GQU5DWSBIQUxGIE1PT048L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+PGgzIHN0eWxlPSJmb250LWZhbWlseTogIiBvcGVuPSIiIHNhbnMiLD0iIiBhcmlhbCw9IiIgc2Fucy1zZXJpZjsiPSIiPjxicj48L2gzPg==', '46Napkin Holder- DNH- 11.jpg', '173', '', 'Half Moon Stripped ss napkin holder', 'this is a circular design napkin holder to hold tissue paper in stainless steel 202 coiled material', 'steel napkin holder', 'napkin holder stand, napkin holder modern, napkin holder for restaurants, napkin holder designs, steel napkin holder, kitchen napkin holder', 'Half Moon Stripped ss napkin holder', 1, '2020-02-29', '2020-05-18 01:43:46', 1, '0'),
(121, 14, ' Heart Napkin Holder ', 'ICAgIA0KICAgIA0KICAgIA0KPHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RE5IIDEyPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2hhcGU8L2I+PC90ZD48dGQ+SGVhcnQ8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+PGgzIHN0eWxlPSJmb250LWZhbWlseTogIiBvcGVuPSIiIHNhbnMiLD0iIiBhcmlhbCw9IiIgc2Fucy1zZXJpZjsiPSIiPjxicj48L2gzPg==', '166Napkin Holder- DNH- 12.jpg', '159', '', 'Heart Shaped ss Napkin Holder', 'this is a heart shaped napkin holder in stainless steel made from premium quality ss 202 coil material.', 'napkin holder in steel', 'napkin holder steel, napkin holder modern, napkin holder for table, napkin holder for restaurants, fancy holder fancy, kitchen napkin holder', 'Heart Shaped ss Napkin Holder', 1, '2020-02-29', '2020-05-18 01:48:48', 1, '0'),
(122, 14, ' Quad Star Napkin Holder ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBObzwvYj48L3RkPjx0ZD48Zm9udCBjb2xvcj0iIzU1NTU1NSI+RE5IIDEzPC9mb250PjwvdGQ+PC90cj48dHI+PHRkPjxiPk1hdGVyaWFsIEdyYWRlPC9iPjwvdGQ+PHRkPjxmb250IGNvbG9yPSIjNTU1NTU1Ij5TUyAyMDIgQ29pbGVkPC9mb250PjwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD48Zm9udCBjb2xvcj0iIzU1NTU1NSI+U2lsdmVyPC9mb250PjwvdGQ+PC90cj48dHI+PHRkPjxiPkZpbmlzaDwvYj48L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD5Cb3g8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5BbmdsZWQgRmxvd2VyPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPjxoMyBzdHlsZT0iZm9udC1mYW1pbHk6ICIgb3Blbj0iIiBzYW5zIiw9IiIgYXJpYWwsPSIiIHNhbnMtc2VyaWY7Ij0iIj48YnI+PC9oMz4=', '34Napkin Holder- DNH- 13.jpg', '140', '', 'Quadrilateral SS Napkin Holder ', 'this steel napkin holder for tableware of restaurants, dinner rooms, hotels, bars, clubs is used to hold tissue paper and is made from high grade ss 202 coiled material', 'Stainless steel napkin holder', 'napkin holder steel, modern napkin holder, table napkin holder, fancy napkin holder, triangular napkin holder', 'Quadrilateral SS Napkin Holder ', 1, '2020-03-01', '2020-05-18 01:49:41', 1, '0'),
(123, 14, 'Bubble napkin Holder ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+PGZvbnQgY29sb3I9IiM1NTU1NTUiPkROSCAxNDwvZm9udD48L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbCBHcmFkZcKgPC9iPjwvdGQ+PHRkPlNTIDIwMiBDb2lsZWQ8L3RkPjwvdHI+PHRyPjx0ZD48Yj5Db2xvdXLCoDwvYj48L3RkPjx0ZD48Zm9udCBjb2xvcj0iIzU1NTU1NSI+U2lsdmVyPC9mb250PjwvdGQ+PC90cj48dHI+PHRkPjxiPkZpbmlzaDwvYj48L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD48Zm9udCBjb2xvcj0iIzU1NTU1NSI+Qm94PC9mb250PjwvdGQ+PC90cj48dHI+PHRkPjxiPlNoYXBlPC9iPjwvdGQ+PHRkPkFuZ2xlZCBCdWJibGVkPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPjxoMyBzdHlsZT0iZm9udC1mYW1pbHk6ICIgb3Blbj0iIiBzYW5zIiw9IiIgYXJpYWwsPSIiIHNhbnMtc2VyaWY7Ij0iIj48YnI+PC9oMz4=', '50Napkin Holder- DNH- 14.jpg', '96', '', 'Bubble SS napkin holder', 'this fancy napkin holder in stainless steel with amazing polish will give a really modern look to your restaurant, hotel, kitchen, ome, dinnerware', 'SS Tissue paper Holder', 'napkin holder stainless steel, napkin holder restaurant, napkin holder kitchen, napkin holder stand, napkin holder stand, napkin holder for kitchen', 'Bubble  SS napkin holder', 1, '2020-03-01', '2020-05-18 01:46:43', 1, '0'),
(124, 14, 'Striped Napkin Holder', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdWJlcjwvYj48L3RkPjx0ZD5ETkggMTU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbCBHcmFkZTwvYj48L3RkPjx0ZD5TUyAyMDIgQ29pbGVkPC90ZD48L3RyPjx0cj48dGQ+PGI+Q29sb3VyPC9iPjwvdGQ+PHRkPjxmb250IGNvbG9yPSIjNTU1NTU1Ij5TaWx2ZXI8L2ZvbnQ+PC90ZD48L3RyPjx0cj48dGQ+PGI+RmluaXNoPC9iPjwvdGQ+PHRkPk1hdHRlPC90ZD48L3RyPjx0cj48dGQ+PGI+UGFja2luZyBUeXBlPC9iPjwvdGQ+PHRkPkJveDwvdGQ+PC90cj48dHI+PHRkPjxiPlNoYXBlPC9iPjwvdGQ+PHRkPjxmb250IGNvbG9yPSIjNTU1NTU1Ij5QeXJhbWlkIExpbmVzPC9mb250PjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD48aDMgc3R5bGU9ImZvbnQtZmFtaWx5OiAiIG9wZW49IiIgc2FucyIsPSIiIGFyaWFsLD0iIiBzYW5zLXNlcmlmOyI9IiI+PGJyPjwvaDM+', '114Napkin Holder- DNH- 15.jpg', '141', '', 'Pyramid Striped SS Napkin Holder', 'this napkin holder in ss is best for your restaurants, bars, clubs, etc it will give a modern look to your serving collection.', 'Modern Napkin Holder', 'napkin holder restaurant, napkin holder stainless steel, napkin holder stand, napkin holder design, napkin  holder', 'Pyramid Striped SS Napkin Holder', 1, '2020-03-01', '2020-05-18 01:50:22', 1, '0'),
(126, 14, 'Pyramid Napkin Holder ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+PGZvbnQgY29sb3I9IiM1NTU1NTUiPkROSCAxNjwvZm9udD48L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbCBHcmFkZTwvYj48L3RkPjx0ZD5TUyAyMDIgQ29pbGVkPC90ZD48L3RyPjx0cj48dGQ+PGI+Q29sb3VyPC9iPjwvdGQ+PHRkPjxmb250IGNvbG9yPSIjNTU1NTU1Ij5TaWx2ZXI8L2ZvbnQ+PC90ZD48L3RyPjx0cj48dGQ+PGI+RmluaXNoPC9iPjwvdGQ+PHRkPk1hdHRlPC90ZD48L3RyPjx0cj48dGQ+PGI+UGFja2luZyBUeXBlPC9iPjwvdGQ+PHRkPkJveDwvdGQ+PC90cj48dHI+PHRkPjxiPlNoYXBlPC9iPjwvdGQ+PHRkPlB5cmFtaWQgSG9sZXM8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+PGgzIHN0eWxlPSJmb250LWZhbWlseTogIiBvcGVuPSIiIHNhbnMiLD0iIiBhcmlhbCw9IiIgc2Fucy1zZXJpZjsiPSIiPjxicj48L2gzPg==', '56Napkin Holder- DNH- 16.jpg', '', '', 'Modern Pyramid Bubble SS napkin holder', 'these napkin holder for restaurants are sed as tableware and dinnerware for your bars, catering, hotelware, etc', 'napkin holder silver', 'napkin holder stainless steel, napkin holder restaurant, napkin holder kitchen, napkin holder stand, napkin holder stand, napkin holder for kitchen', 'Modern Pyramid Bubble SS napkin holder', 1, '2020-03-01', '2020-05-18 01:50:51', 1, '0'),
(127, 15, 'Sphere Salt Pepper Set ', 'ICAgIA0KICAgIA0KICAgIA0KPHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+PGZvbnQgY29sb3I9IiM1NTU1NTUiPkRTUCAxMDwvZm9udD48L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbCBHcmFkZTwvYj48L3RkPjx0ZD5TUyAyMDIgQ29pbGVkPC90ZD48L3RyPjx0cj48dGQ+PGI+Q29sb3VyPC9iPjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPjxiPkZpbmlzaDwvYj48L3RkPjx0ZD48Zm9udCBjb2xvcj0iIzU1NTU1NSI+Q2hyb21lPC9mb250PjwvdGQ+PC90cj48dHI+PHRkPjxiPlNldDwvYj48L3RkPjx0ZD4yIHBpZWNlczwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD5Cb3g8L3RkPjwvdHI+PHRyPjx0ZD48Yj5Oby5vZiBIb2xlczwvYj48L3RkPjx0ZD4zIGFuZCA1PC90ZD48L3RyPjx0cj48dGQ+PGI+U2hhcGU8L2I+PC90ZD48dGQ+U3BoZXJlPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '176Salt Pepper Set- DSP-10.jpg', '54', '', 'stainless steel sphere salt pepper set', 'this modern design salt and pepper shaker set is ball type design with quality polish to decoryn\'s standard and it will give a really awesome look to your restaurants, bars, hotels, kitchen, homes, etc.', 'stainless steel salt and pepper', 'ss salt shakers, ss salt pepper set, ss salt and pepper shakers, ss salt pepper shakers', 'stainless steel sphere salt pepper set', 1, '2020-03-11', '2020-05-18 01:52:16', 1, '0'),
(128, 15, ' Conical Salt pepper Set ', 'ICAgIA0KICAgIA0KICAgIA0KPHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFNQIDExPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD48Zm9udCBjb2xvcj0iIzU1NTU1NSI+U2lsdmVyPC9mb250PjwvdGQ+PC90cj48dHI+PHRkPjxiPkZpbmlzaDwvYj48L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPjxiPlNldDwvYj48L3RkPjx0ZD4yIHBpZWNlczwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD5Cb3g8L3RkPjwvdHI+PHRyPjx0ZD48Yj5Oby5vZiBIb2xlczwvYj48L3RkPjx0ZD4yIGFuZCAzPC90ZD48L3RyPjx0cj48dGQ+PGI+U2hhcGU8L2I+PC90ZD48dGQ+Q29uZTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD48aDMgc3R5bGU9ImZvbnQtZmFtaWx5OiAiIG9wZW49IiIgc2FucyIsPSIiIGFyaWFsLD0iIiBzYW5zLXNlcmlmOyI9IiI+PGJyPjwvaDM+', '198Salt Pepper Set- DSP- 11.jpg', '', '', 'stainless steel Cone salt pepper shakers', 'salt and pepper shaker set in unique cone shaped design this namakdani is made from premium quality ss 202 coiled material and is rust proof.', 'ss salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'stainless steel Cone salt pepper shakers', 1, '2020-03-11', '2020-05-18 01:52:41', 1, '0'),
(129, 15, 'Edge Salt pepper Set ', 'PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6IDEuNjsiPjxicj48L2Rpdj48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFNQIDEyPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+PGZvbnQgY29sb3I9IiM1NTU1NTUiPlNTIDIwMiBDb2lsZWQ8L2ZvbnQ+PC90ZD48L3RyPjx0cj48dGQ+PGI+Q29sb3VyPC9iPjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPjxiPkZpbmlzaDwvYj48L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPjxiPlNldDwvYj48L3RkPjx0ZD4yIHBpZWNlczwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD5Cb3g8L3RkPjwvdHI+PHRyPjx0ZD48Yj5Oby5vZiBIb2xlczwvYj48L3RkPjx0ZD4yIGFuZCAzPC90ZD48L3RyPjx0cj48dGQ+PGI+U2hhcGU8L2I+PC90ZD48dGQ+Um91bmQgVGFwZXJlZDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6IDEuNjsiPjxwPjxicj48L3A+PGgzIHN0eWxlPSJmb250LWZhbWlseTogIiBvcGVuPSIiIHNhbnMiLD0iIiBhcmlhbCw9IiIgc2Fucy1zZXJpZjsiPSIiPjxicj48L2gzPjwvZGl2Pg==', '109Salt Pepper Set- DSP- 12.jpg', '149', '', 'Get 20% off on ss salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'Get 20% off on ss salt pepper shakers', 1, '2020-04-19', '2020-05-18 01:55:10', 1, '0'),
(130, 15, 'Stand Salt pepper Set ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+PGZvbnQgY29sb3I9IiM1NTU1NTUiPkRQUyAxNDwvZm9udD48L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbCBHcmFkZTwvYj48L3RkPjx0ZD48Zm9udCBjb2xvcj0iIzU1NTU1NSI+U1MgMjAyIENvaWxlZDwvZm9udD48L3RkPjwvdHI+PHRyPjx0ZD48Yj5Db2xvdXI8L2I+PC90ZD48dGQ+U2lsdmVyPC90ZD48L3RyPjx0cj48dGQ+PGI+RmluaXNoPC9iPjwvdGQ+PHRkPk1hdHRlPC90ZD48L3RyPjx0cj48dGQ+PGI+U2V0PC9iPjwvdGQ+PHRkPjIgcGllY2VzPC90ZD48L3RyPjx0cj48dGQ+PGI+UGFja2luZyBUeXBlPC9iPjwvdGQ+PHRkPkJveDwvdGQ+PC90cj48dHI+PHRkPjxiPk5vLk9mIEhvbGVzPC9iPjwvdGQ+PHRkPjIgYW5kIDM8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5PdmFsIFN0cmFpZ2h0PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT4=', '58Sal Pepper Set- DSP- 13.jpg', '34', '', 'stainless steel salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'salt pepper shaker set', 1, '2020-04-19', '2020-05-19 07:53:35', 1, '0'),
(131, 15, 'Dual Salt pepper Set ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFBTIDE1PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+MiBUb25lPC90ZD48L3RyPjx0cj48dGQ+PGI+U2V0PC9iPjwvdGQ+PHRkPjIgcGllY2VzPC90ZD48L3RyPjx0cj48dGQ+PGI+UGFja2luZyBUeXBlPC9iPjwvdGQ+PHRkPkJveDwvdGQ+PC90cj48dHI+PHRkPjxiPk5vLk9mIEhvbGVzPC9iPjwvdGQ+PHRkPjMgQW5kIDI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZXM8L2I+PC90ZD48dGQ+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMTAyLCAxMDIsIDEwMik7IGZvbnQtZmFtaWx5OiBQb3BwaW5zLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IGxldHRlci1zcGFjaW5nOiAwLjVweDsiPk92YWwgU3RyYWlnaHQ8L3NwYW4+PGJyPjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '64Salt Pepper Set- DSP- 14.jpg', '159', '', 'Get matt finish ss salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'Get matt finish ss salt pepper shakers', 1, '2020-04-19', '2020-05-19 08:46:13', 1, '0'),
(132, 15, 'Standers Salt pepper Set ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Zm9udCBjb2xvcj0iIzU1NTU1NSI+PGI+TW9kZWwgTnVtYmVyPC9iPjwvZm9udD48L3RkPjx0ZD5EUFMgMTY8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbCBHcmFkZTwvYj48L3RkPjx0ZD5TUyAyMDIgQ29pbGVkPC90ZD48L3RyPjx0cj48dGQ+PHA+PGZvbnQgY29sb3I9IiM1NTU1NTUiPjxiPkNvbG91cjwvYj48L2ZvbnQ+PC9wPjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPjxiPkZpbmlzaDwvYj48L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPjxiPlNldDwvYj48L3RkPjx0ZD4yIHBpZWNlczwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD5Cb3g8L3RkPjwvdHI+PHRyPjx0ZD48Yj5OTyAuT2YgSG9sZXM8L2I+PC90ZD48dGQ+MyBBbmQgMTwvdGQ+PC90cj48dHI+PHRkPjxiPlNoYXBlPC9iPjwvdGQ+PHRkPlNxdWFyZSBTdHJhaWdodDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '22Salt Pepper Set- DSP- 15.jpg', '116', '', 'stainless steel salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'salt pepper shaker set', 1, '2020-04-19', '2020-05-19 08:50:26', 1, '0'),
(133, 15, 'Flattered Salt pepper Set ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48cD4NCjxiPk1vZGVsIE51bWJlcjwvYj48L3A+PC90ZD48dGQ+RFBTIDE2PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+SGFtbWVyZWQ8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TZXQ8L2I+PC90ZD48dGQ+MiBQaWVjZXM8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+Tk8uT2YgSG9sZXM8L2I+PC90ZD48dGQ+MyBBbmQgMjwvdGQ+PC90cj48dHI+PHRkPjxiPlNoYXBlPC9iPjwvdGQ+PHRkPkZsYXR0ZXJlZCBTdHJhaWdodDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+', '195Salt Pepper Set- DSP- 16.jpg', '178', '', 'Flattered Cone SS salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'Flattered Cone SS salt pepper shakers', 1, '2020-04-19', '2020-05-19 08:55:20', 1, '0'),
(134, 15, 'Waved Salt pepper Set ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFBTIDE3PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TZXQ8L2I+PC90ZD48dGQ+MiBQaWVjZXM8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+Tk8uT0YgSG9sZXM8L2I+PC90ZD48dGQ+MyBBbmQgMjwvdGQ+PC90cj48dHI+PHRkPlNoYXBlPC90ZD48dGQ+V2F2ZWQgQ3VydmU8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '126Salt Pepper Set- DSP- 17.jpg', '99', '', 'Wave Matte SS salt pepper shakers', 'salt and pepper shaker set is oval tapered cut design with mattle furnish is made from premium quality ss 202 coiled material and is rust proof.', 'salt pepper shaker', 'namakdani, ss salt and pepper set, ss salt pepper shakers, ss salt shakers, stainless steel salt pepper shaker set', 'Wave Matte SS salt pepper shakers', 1, '2020-04-19', '2020-05-19 08:58:16', 1, '0'),
(135, 16, ' Square Tea Coaster', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFRDIDEwPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPmNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5Sb3VuZGVkIFNxdWFyZTwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD5Cb3g8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TZXQ8L2I+PC90ZD48dGQ+T25lPC90ZD48L3RyPjx0cj48dGQ+PGI+Q2FwYWNpdHk8L2I+PC90ZD48dGQ+U2l4IENvYXN0ZXJzPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPjxwPjxicj48L3A+PGgzIHN0eWxlPSJmb250LWZhbWlseTogIiBvcGVuPSIiIHNhbnMiLD0iIiBhcmlhbCw9IiIgc2Fucy1zZXJpZjsiPSIiPjxicj48L2gzPg==', '55DTC- 11.jpg', '124', '', 'Rounded Square tea coasters set', 'This tea cup and coaster set design is pyramid shaped you can buy this tea coffe coaster from Decoryn company manufacture and wholeseller of tea coasters ', 'Tea coasters manufacturers delhi', 'tea ', 'Rounded Square tea coasters set', 1, '2020-04-30', '2020-05-22 08:06:35', 1, '0'),
(136, 16, ' Sphere Tea Coaster ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFRDIDExPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2gmbmJzcDs8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5TcGhlcmU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2V0PC9iPjwvdGQ+PHRkPk9uZTwvdGQ+PC90cj48dHI+PHRkPjxiPkNhcGFjaXR5PC9iPjwvdGQ+PHRkPlNpeCBDb2FzdGVyPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPjxwPjxicj48L3A+PGgzIHN0eWxlPSJmb250LWZhbWlseTogIiBvcGVuPSIiIHNhbnMiLD0iIiBhcmlhbCw9IiIgc2Fucy1zZXJpZjsiPSIiPjxicj48L2gzPg==', '21DTC- 12.jpg', '183', '', 'Rounded Sphere tea coasters set', 'This tea cup and coaster set design is pyramid shaped you can buy this tea coffe coaster from Decoryn company manufacture and wholeseller of tea coasters ', 'Tea coasters manufacturers delhi', 'tea', 'Rounded Sphere tea coasters set', 1, '2020-04-30', '2020-05-22 08:06:49', 1, '0'),
(137, 16, 'Covered Tea Coaster ', 'PHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1ib3JkZXJlZCI+PHRib2R5Pjx0cj48dGQ+PGI+TW9kZWwgTnVtYmVyPC9iPjwvdGQ+PHRkPjxwPkRUQyAxMzwvcD48L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbCBHcmFkZTwvYj48L3RkPjx0ZD5TUyAyMDIgQ29pbGVkPC90ZD48L3RyPjx0cj48dGQ+PGI+Q29sb3VyPC9iPjwvdGQ+PHRkPlNpbHZlcjwvdGQ+PC90cj48dHI+PHRkPjxiPmZpbmlzaDwvYj48L3RkPjx0ZD5NYXR0ZTwvdGQ+PC90cj48dHI+PHRkPjxiPlNoYXBlPC9iPjwvdGQ+PHRkPlNwaGVyZTwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD5Cb3g8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TZXQ8L2I+PC90ZD48dGQ+T25lPC90ZD48L3RyPjx0cj48dGQ+PGI+Q2FwYWNpdHk8L2I+PC90ZD48dGQ+U2l4IENhcGNpdHk8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPg==', '89DTC- 13.jpg', '150', '', 'Covered Sphere SS tea coasters set', 'This tea cup and coaster set design is pyramid shaped you can buy this tea coffe coaster from Decoryn company manufacture and wholeseller of tea coasters ', 'Tea coasters manufacturers delhi', 'tea', 'Covered Sphere SS tea coasters set', 1, '2020-04-30', '2020-05-22 08:07:05', 1, '0'),
(138, 16, 'Striped Sq. Tea Coaster ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFRDIDE0PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5TdHJpcHBlZCBTcXVhcmU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2V0PC9iPjwvdGQ+PHRkPk9uZTwvdGQ+PC90cj48dHI+PHRkPjxiPkNhcGFjaXR5PC9iPjwvdGQ+PHRkPlNpeCBDb2FzdGVyczwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '97DTC- 14.jpg', '164', '', 'Striped Square tea coasters set', 'This tea cup and coaster set design is pyramid shaped you can buy this tea coffe coaster from Decoryn company manufacture and wholeseller of tea coasters ', 'Tea coasters manufacturers delhi', 'tea', 'Striped Square tea coasters set', 1, '2020-04-30', '2020-05-22 08:07:19', 1, '0'),
(139, 17, 'STAINLESS STEEL SOAP DISPENSER', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIiBzdHlsZT0id2lkdGg6IDYzNnB4OyI+PHRib2R5Pjx0cj48dGQ+PGI+TW9kZWwgTnVtYmVyPC9iPjwvdGQ+PHRkPkROSC0xMDwvdGQ+PC90cj48dHI+PHRkPjxiPlByaWNlPC9iPjwvdGQ+PHRkPjEyOSBSUyBwZXIgcGllY2U8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbCBHcmFkZTwvYj48L3RkPjx0ZD5TUyAyMDIgQ29pbGVkwqA8L3RkPjwvdHI+PHRyPjx0ZD48Yj5Db2xvdXI8L2I+PC90ZD48dGQ+U2lsdmVyPC90ZD48L3RyPjx0cj48dGQ+PGI+RmluaXNoPC9iPjwvdGQ+PHRkPk1hdHRlPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPjxoMyBzdHlsZT0iZm9udC1mYW1pbHk6ICJPcGVuIFNhbnMiLCBBcmlhbCwgc2Fucy1zZXJpZjsiPjxiPlRlcm1zIEFuZCBDb25kaXRpb25zPC9iPjwvaDM+PHA+MS0gR1NUIG9mIDEyJSB3aWxsIGJlIGNoYXJnZWQgZXh0cmEuPGJyPjwvcD48cD4yLSBEZWxpdmVyeSBjaGFyZ2VzIHdpbGwgYXBwbHkuPC9wPjxwPjMtIEl0IHdpbGwgdGFrZSA2LTEwIGRheXMgdG8gZGVsaXZlciB0aGUgcHJvZHVjdC4gSXQgd2lsbCB2YXJ5IGRlcGVuZGluZyBvbiB5b3VyIGxvY2F0aW9uIGFuZCBxdWFudGl0eS48L3A+PHA+NC0gUGF5bWVudCBUZXJtcyBiZWZvcmUgZGVsaXZlcnkuPC9wPg==', '112Liquid soap dispenser.jpg', '75', '', 'Buy shiny SS liquid soap dispenser in India at low prices', 'Great deal on bath products such as stainless steel soap dispensers and hand wash in India. This table top soap dispenser is a home decor product which is available at low prices', 'Soap Dispenser', 'table top soap dispenser, stainless steel soap dispenser India, bath products, liquid soap dispenser, home decor', 'Buy shiny SS liquid soap dispenser bath product online', 1, '2020-05-12', '2020-05-15 07:20:00', 0, '0'),
(140, 17, 'TOUCH FREE SANITIZER', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Qcm9kdWN0IENvZGU8L2I+PC90ZD48dGQ+REhGUyAxMDwvdGQ+PC90cj48dHI+PHRkPjxiPkNhcGFjaXk8L2I+PC90ZD48dGQ+NTAwIE1MPC90ZD48L3RyPjx0cj48dGQ+PGI+V2VpZ2h0PC9iPjwvdGQ+PHRkPjcgS0c8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbDwvYj48L3RkPjx0ZD5NaWxkIFN0ZWVsPC90ZD48L3RyPjx0cj48dGQ+PGI+TWVjaGFuaXNtPC9iPjwvdGQ+PHRkPkZvb3QgT3BlcmF0ZWQ8L3RkPjwvdHI+PHRyPjx0ZD48Yj5EaW1lbnNpb25zPC9iPjwvdGQ+PHRkPkwyNSIgWCBCMTQiIFggSDQ2IjwvdGQ+PC90cj48dHI+PHRkPjxiPklkZWFsIEZvcjwvYj48L3RkPjx0ZD5FZHVjYXRpb25hbCBJbnN0aXR1dGVzLCBSZXNpZGVudHMsIGV0YzwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '77yrrhjd.jpg', '191', '', 'Touch Free | Touch Less | Hands free Hand Sanitizer Dispenser ', 'Best touch free hand sanitizer dispenser at best price here at decoryn. this sis a really good touch free sanitizer dispenser equipment available on amazon, flip kart shop clues also. this automatic hand sanitizer dispenser in India is standing on a stand made of mild steel. and you can online order this hands free sanitizer machine.', 'touch free sanitizer dispenser', 'best touch free hand sanitizer dispenser, touch free hand sanitizer dispenser in India, hands free sanitizer dispenser stand, hands free liquid sanitizer dispenser stand, hands free sanitizer dispenser machine online.', 'Touch Free | Touch Less | Hands free Hand Sanitizer Dispenser ', 1, '2020-05-15', '2020-05-15 06:43:41', 1, '0'),
(141, 17, 'Mordern Touchless Sanitizer', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Qcm9kdWN0IENvZGU8L2I+PC90ZD48dGQ+REhGUyAyMDwvdGQ+PC90cj48dHI+PHRkPjxiPkNhcGFjaXR5PC9iPjwvdGQ+PHRkPjUwMCBNTDwvdGQ+PC90cj48dHI+PHRkPjxiPldlaWdodDwvYj48L3RkPjx0ZD41LjUgS0c8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbDwvYj48L3RkPjx0ZD5NaWxkIFN0ZWVsPC90ZD48L3RyPjx0cj48dGQ+PGI+TWVjaGFuaXNtJm5ic3A7PC9iPjwvdGQ+PHRkPkZvb3QgT3BlcmF0ZWQ8L3RkPjwvdHI+PHRyPjx0ZD48Yj5EaW1lbnNpb25zPC9iPjwvdGQ+PHRkPkggMzkiPC90ZD48L3RyPjx0cj48dGQ+PGI+SWRlYWwgRm9yPC9iPjwvdGQ+PHRkPkhvdGVscywgTWFsbHMsIEJlYXV0eSBQYXJsb3VycywgZXRjPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '183jkuyyyyyyyyyyyyyyyg.jpg', '110', '', 'Touch Free | Touch Less | Hands free Hand Sanitizer Dispenser ', 'Best touch free hand sanitizer dispenser at best price here at decoryn. this sis a really good touch free sanitizer dispenser equipment available on amazon, flip kart shop clues also. this automatic hand sanitizer dispenser in India is standing on a stand made of mild steel. and you can online order this hands free sanitizer machine.', 'touch free sanitizer dispenser', 'best touch free hand sanitizer dispenser, touch free hand sanitizer dispenser in India, hands free sanitizer dispenser stand, hands free liquid sanitizer dispenser stand, hands free sanitizer dispenser machine online.', 'Touch Free | Touch Less | Hands free Hand Sanitizer Dispenser ', 1, '2020-05-15', '2020-05-15 06:57:13', 1, '0'),
(142, 17, 'Classic Hands Free Sanitizer', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Qcm9kdWN0IENvZGU8L2I+PC90ZD48dGQ+REhGUyAzMDwvdGQ+PC90cj48dHI+PHRkPjxiPkNhcGFjaXR5PC9iPjwvdGQ+PHRkPjUwMCBNTDwvdGQ+PC90cj48dHI+PHRkPjxiPldlaWdodDwvYj48L3RkPjx0ZD4xMC41IEtHPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWw8L2I+PC90ZD48dGQ+TWlsZCBTdGVlbDwvdGQ+PC90cj48dHI+PHRkPjxiPk1lY2hhbmlzbTwvYj48L3RkPjx0ZD5Gb290IE9wZXJhdGVkPC90ZD48L3RyPjx0cj48dGQ+PGZvbnQgY29sb3I9IiM1NTU1NTUiPjxiPkRpbWVuc2lvbnM8L2I+PC9mb250Pjxicj48L3RkPjx0ZD5MIDEzIiBYIEIgMTIiIFggSCA0NSI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5JZGVhbCBGb3I8L2I+PC90ZD48dGQ+T2ZmaWNlcywgQmFua3MsIEd5bW5hc2l1bTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '106bvjhvh.jpg', '149', '', 'Touch Free | Touch Less | Hands free Hand Sanitizer Dispenser ', 'Best touch free hand sanitizer dispenser at best price here at decoryn. this sis a really good touch free sanitizer dispenser equipment available on amazon, flip kart shop clues also. this automatic hand sanitizer dispenser in India is standing on a stand made of mild steel. and you can online order this hands free sanitizer machine.', 'touch free sanitizer dispenser', 'best touch free hand sanitizer dispenser, touch free hand sanitizer dispenser in India, hands free sanitizer dispenser stand, hands free liquid sanitizer dispenser stand, hands free sanitizer dispenser machine online.', 'Touch Free | Touch Less | Hands free Hand Sanitizer Dispenser ', 1, '2020-05-15', '0000-00-00 00:00:00', 1, '0'),
(143, 17, 'Royal Touch Free Hand Sanitizer Dispenser', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Qcm9kdWN0IENvZGU8L2I+PC90ZD48dGQ+REhGUyA0MDwvdGQ+PC90cj48dHI+PHRkPjxiPkNhcGFjaXR5PC9iPjwvdGQ+PHRkPjUgTGl0cmU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5XZWlnaHQ8L2I+PC90ZD48dGQ+MTUgS0c8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NYXRlcmlhbDwvYj48L3RkPjx0ZD5NaWxkIFN0ZWVsPC90ZD48L3RyPjx0cj48dGQ+PGI+TWVjaGFuaXNtwqA8L2I+PC90ZD48dGQ+Rm9vdCBPcGVyYXRlZCBNaXN0IFNwcmF5PC90ZD48L3RyPjx0cj48dGQ+PGI+RGltZW5zaW9uczwvYj48L3RkPjx0ZD5MIDE4IiBYIEIgMTIiIFggSCA0NCI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5JZGVhbCBGb3I8L2I+PC90ZD48dGQ+TWFudWZhY3R1cmluZyBVbml0cywgbGFyZ2UgR2F0aGVyaW5ncywgUHVibGljIFBsYWNlcywgZXRjPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '148kjfgj.jpg', '51', '', 'Touch Free | Touch Less | Hands free Hand Sanitizer Dispenser ', 'Best touch free hand sanitizer dispenser at best price here at decoryn. this sis a really good touch free sanitizer dispenser equipment available on amazon, flip kart shop clues also. this automatic hand sanitizer dispenser in India is standing on a stand made of mild steel. and you can online order this hands free sanitizer machine.', 'touch free sanitizer dispenser', 'best touch free hand sanitizer dispenser, touch free hand sanitizer dispenser in India, hands free sanitizer dispenser stand, hands free liquid sanitizer dispenser stand, hands free sanitizer dispenser machine online.', 'Touch Free | Touch Less | Hands free Hand Sanitizer Dispenser ', 1, '2020-05-15', '2020-05-26 09:37:32', 1, '1'),
(145, 14, '4 In 1 Napkin Holder', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RE5IIDE3PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2hhcGU8L2I+PC90ZD48dGQ+U3F1YXJlPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT4=', '190hgjghj.jpg', '120', '', ' Take Away This 4 In 1 Napkin holder', 'This 4 In 1 Napkin holder is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'s 4 in 1 napkin holder', 'napkinholder, napkin , holder, decoryn,', ' Take Away This 4 In 1 Napkin holder', 1, '2020-05-21', '0000-00-00 00:00:00', 1, '0'),
(147, 14, 'Triangle Napkin Holder', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RE5IIDE4PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2hhcGU8L2I+PC90ZD48dGQ+UHlyYW1pZDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '57ll.jpg', '74', '', 'This Pyramid Cirlcle Napkin Holder Is Ausome', 'This Pyramid Circle Napkin holder is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'s Pyramid Circle  napkin holder', 'napkinholder, napkin , holder, decoryn,', 'This Pyramid Cirlcle Napkin Holder Is Ausome', 1, '2020-05-21', '2020-05-22 07:52:22', 1, '0'),
(148, 14, 'Half Cut Napkin Holder', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RE5IIDE5PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2hhcGU8L2I+PC90ZD48dGQ+U2VtaWNpcmxjZTwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '31jluili.jpg', '196', '', 'Want To Get This Half Moon Cut Napkin Holder', 'This Half Moon Cut Napkin holder is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'s Half Moon Cut napkin holder', 'napkinholder, napkin , holder, decoryn,', 'Want To Get This Half Moon Cut Napkin Holder', 1, '2020-05-21', '2020-05-21 12:24:41', 1, '0'),
(149, 14, 'Curve Cut Napkin Holder', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RE5IIDIwPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91ciZuYnNwOzwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2gmbmJzcDs8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+U2hhcGU8L3RkPjx0ZD5DdXJ2ZSBDdXQ8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '192kkljh.jpg', '95', '', 'Take This Best Curve Cut Napkin Holder', 'This Curve Cut Napkin holder is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'s Curve Cut napkin holder', 'napkinholder, napkin , holder, decoryn,', 'Take This Best Curve Cut Napkin Holder', 1, '2020-05-21', '0000-00-00 00:00:00', 1, '0'),
(150, 14, 'Rockey Napkin Holder', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RE5IIDIxPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2hhcGU8L2I+PC90ZD48dGQ+VHJpYW5nbGU8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '169[uopuop.jpg', '82', '', 'The Triangle Shaped SS Napkin Holder', 'This Triangle Shaped Napkin holder is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'sTriangle Shaped napkin holder', 'napkinholder, napkin , holder, decoryn,', 'The Triangle Shaped SS Napkin Holder', 1, '2020-05-22', '2020-05-22 07:53:06', 1, '0'),
(151, 14, 'Hammered Triangle Napkin Holder', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RE5IIDIyPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+SGFtbWVyZWQ8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2hhcGU8L2I+PC90ZD48dGQ+VHJpYW5nbGU8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '109jlkli.jpg', '112', '', 'Hammered SS Napkin Holder', 'This Hammered Triangle Shaped Napkin holder is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'s Hammered napkin holder', 'napkinholder, napkin , holder, decoryn,', 'Hammered SS Napkin Holder', 1, '2020-05-22', '0000-00-00 00:00:00', 1, '0'),
(152, 14, 'Curve Napkin Holder', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RE5IIDIzPC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgZ3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2hhcGU8L2I+PC90ZD48dGQ+U2VtaSBDaXJjbGU8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '148Untitled-1.jpg', '111', '', 'Curve Stripped ss napkin holder', 'This Curve Stripped ss napkin holder Napkin holder is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'s Curve Stripped ss napkin holder napkin holder', 'napkinholder, napkin , holder, decoryn,', 'Curve Stripped ss napkin holder', 1, '2020-05-22', '2020-05-22 07:53:33', 1, '0'),
(153, 16, 'Single Sq. Tea Coaster', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFRDIDE1PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5TcXVhcmU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2V0PC9iPjwvdGQ+PHRkPk9uZTwvdGQ+PC90cj48dHI+PHRkPjxiPmNhcGFjaXR5PC9iPjwvdGQ+PHRkPlNpeCBDb2FzdGVyPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '90Tea Coaster DNH 15.jpg', '160', '', 'Stock Square Tea Coaster Set', 'This Stock Square Tea Coaster   is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'s  Stock Square Tea Coaster napkin holder', 'tea coaster, tea , coster, decoryn', 'Stock Square Tea Coaster Set', 1, '2020-05-22', '2020-05-22 08:06:09', 1, '0'),
(154, 16, 'Stand Tea Coaster', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFRDIDE2PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5TcGhlcmU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5QYWNraW5nIFR5cGU8L2I+PC90ZD48dGQ+Qm94PC90ZD48L3RyPjx0cj48dGQ+PGI+U2V0PC9iPjwvdGQ+PHRkPk9uZTwvdGQ+PC90cj48dHI+PHRkPjxiPkNhcGFjaXR5PC9iPjwvdGQ+PHRkPlNpeCBDb2FzdGVyPC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '31Tea Coaster DNH 16.jpg', '76', '', 'Take this Ausome Stand Cut Tea Coaster Fast', 'This Stand Cut Tea Coaster is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'s  Stand Cut Tea Coaster', 'tea coaster, tea , coster, decoryn', 'Take this Ausome Stand Cut Tea Coaster Fast', 1, '2020-05-22', '0000-00-00 00:00:00', 1, '0'),
(155, 16, 'Rounded Tea Coaster', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFRDIDE3PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgR3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5Sb3VuZGVkPC90ZD48L3RyPjx0cj48dGQ+PGI+UGFja2luZyB0eXBlPC9iPjwvdGQ+PHRkPkJveDwvdGQ+PC90cj48dHI+PHRkPjxiPlNldE9uZTwvYj48L3RkPjx0ZD5PbmU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5DYXBhY2l0eTwvYj48L3RkPjx0ZD5TaXggQ29hc3RlcjwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD48cD48YnI+PC9wPg==', '45Tea COaster DNH 17.jpg', '25', '', 'Few Stocks Left Of This Rounded Tea Coaster... HURRY', 'This Rounded Tea Coaster is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'s  Rounded Tea Coaster', 'tea coaster, tea , coster, decoryn', 'Few Stocks Left Of This Rounded Tea Coaster... HURRY', 1, '2020-05-22', '0000-00-00 00:00:00', 1, '0'),
(156, 16, 'Triangular Tea Coaster', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5Nb2RlbCBOdW1iZXI8L2I+PC90ZD48dGQ+RFRDIDE4PC90ZD48L3RyPjx0cj48dGQ+PGI+TWF0ZXJpYWwgZ3JhZGU8L2I+PC90ZD48dGQ+U1MgMjAyIENvaWxlZDwvdGQ+PC90cj48dHI+PHRkPjxiPkNvbG91cjwvYj48L3RkPjx0ZD5TaWx2ZXI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5GaW5pc2g8L2I+PC90ZD48dGQ+TWF0dGU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TaGFwZTwvYj48L3RkPjx0ZD5Ucmlhbmd1bGFyJm5ic3A7PGJyPjwvdGQ+PC90cj48dHI+PHRkPjxiPlBhY2tpbmcgVHlwZTwvYj48L3RkPjx0ZD5Cb3g8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TZXQ8L2I+PC90ZD48dGQ+T25lPC90ZD48L3RyPjx0cj48dGQ+PGI+Q2FwYWNpdHk8L2I+PC90ZD48dGQ+U2l4IENvYXN0ZXI8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '163TEa COaster DNH 18.jpg', '53', '', 'Grab This Ausome Triangular Tea Coaster', 'This Triangular Tea Coaster is completely made with stainless steel and has been designed under the SS 2020 coiled material', 'decoryn\'s Triangular Tea Coaster', 'tea coaster, tea , coster, decoryn', 'Grab This Ausome Triangular Tea Coaster', 1, '2020-05-22', '0000-00-00 00:00:00', 1, '0');

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
(2, 'header_text', 'MORE THAN 5 DESIGNS OF EVERY PRODUCT'),
(3, 'about_text', 'MORE THAN 5 DESIGNS OF EVERY PRODUCT');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
