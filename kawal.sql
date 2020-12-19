-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2020 at 04:35 AM
-- Server version: 5.6.49-cll-lve
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
(18, 'MATCH FOOTBALLS', '', '2020-06-26 09:53:54', '11-07-2020 10:47:45 AM', '18179HITBALL WEBSITE.jpg', '1'),
(20, 'TRAINING FOOTBALLS', '', '2020-06-27 07:54:01', '11-07-2020 03:04:09 PM', '20131rfgrg.jpg', '0'),
(21, 'FOOTBALLS', '', '2020-06-27 07:56:49', '30-09-2020 04:33:34 PM', '2150Untitled-1.jpg', '1'),
(22, 'FOOTBALL BOOTS', '', '2020-07-03 07:06:43', '11-07-2020 03:04:35 PM', '22120boots.jpg', '0');

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
(53, 'Jonathan Roseland', '84886827456', 'noreply@asset.fin', 'Hello Partners, \r\n \r\nThe International Investment arm of our company is seeking interested partners in need of alternative funding for long term capital projects or for business development. Our manag', '', '2020-05-22'),
(54, 'Malinda Gerlach', '16988590945', 'clayps@gmail.com', 'innovate', '', '2020-05-27'),
(55, 'Celine Dietrich', '19099755041', 'yougothacked148@gmail.com', 'Agent', '', '2020-05-27'),
(56, 'Randal Hintz', '10706536432', 'headphonejackbuisness@gmail.com', 'Tuna', '', '2020-05-28'),
(57, 'Ashlynn Schroeder', '10007408355', 'headphonejackbuisness@gmail.com', 'invoice', '', '2020-05-28'),
(58, 'Al Zieme', '10038958559', 'sales@azuredandelion.com', 'communities', '', '2020-06-01'),
(59, 'Richard Larkin', '10428254858', 'balllynne8@hotmail.com', 'Garden', '', '2020-06-01'),
(60, 'Abdiel MacGyver II', '17454193440', 'garciaryanm@gmail.com', 'RAM', '', '2020-06-02'),
(61, 'Cassie Bogan III', '19951596289', 'tshall17@hotmail.com', 'Wooden', '', '2020-06-03'),
(62, 'Izabella White', '13567571720', 'shapooya@yahoo.com', 'Utah', '', '2020-06-05'),
(63, 'Josephbip', '86679427337', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\nDrager, makrite, honeywell N95 \r\n3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, N95 masks \r\nFace ', '', '2020-06-08'),
(64, 'Keshawn Bailey', '13490138669', 'ashley_geelan@bigpond.com', 'enhance', '', '2020-06-09'),
(65, 'Komalelerm', '83587486556', 'no-replySycle@gmail.com', 'Greetings, I was just visiting your site and wondering about \r\nthe payment method currently offered by you to your customers? \r\n \r\n \r\nI work for Amald.Com and we can serve your business by offering cr', '', '2020-06-09'),
(66, 'Mike Jones', '87261899354', 'no-reply@hilkom-digital.de', 'Hi There \r\nI have just checked decoryn.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only', '', '2020-06-12'),
(67, 'Jordon Wiza', '17411299830', 'agertaldi@gmail.com', 'Holy See (Vatican City State)', '', '2020-06-14'),
(68, 'Mike Koike', '84353598694', 'tinalim.idlabels@hotmail.com', 'Good Day, \r\n \r\nI am Mike Koike (Sales Manager) at Kent Firm National Integration \r\nWe are interested in purchasing from your company. We are an agency for sole buyers and importers. \r\nOur client is in', '', '2020-06-18'),
(69, 'Marian Denesik DDS', '19700525013', 'laurensdarabia@gmail.com', 'back up', '', '2020-06-20'),
(70, 'Mike Williams', '83116738164', 'marketing@digitalsy.org.uk', 'hi there \r\nI have just checked decoryn.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only', '', '2020-06-22'),
(71, 'John Brooks', '86594729821', 'swetmangdudley@gmail.com', 'My name is John Brooks of AAA Structured Finance Ltd , Thank you for your time, my company offers project financing and lending services, do you have any project that requires funding at the moment? W', '', '2020-06-22'),
(72, 'Bartholome Koepp', '10603356843', 'aling1226@gmail.com', 'Creative', '', '2020-06-25'),
(73, 'Al Bartell', '16837030376', 'jilcisin@yahoo.com', 'Tools', '', '2020-06-30'),
(74, 'HeatherRix', '86798245765', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\nMoldex, makrite, honeywell N95 \r\n3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, N95, PPDS masks \r', '', '2020-07-01'),
(75, 'Marina Harber', '18270178460', 'info@sea-kind.com', 'Glens', '', '2020-07-03'),
(76, 'Fay Okuneva', '12062655417', 'jakia.jackson@aol.com', 'Toys', '', '2020-07-04'),
(77, 'Miss Michale Medhurst', '13408725208', 'mulebox@cgsmule.com', 'Sports', '', '2020-07-04'),
(78, 'Frieda Marvin', '14682285761', 'cshooter08@yahoo.com', 'optimal', '', '2020-07-04'),
(79, 'Stefan Barrows', '19556939641', 'bksbrooke@aol.com', 'back up', '', '2020-07-04'),
(80, 'Fredrick Carroll', '17085822490', 'imursooka@yahoo.com', 'Cambridgeshire', '', '2020-07-06'),
(81, 'Odessa Runolfsson', '19375932552', 'rmsouders@gmail.com', 'integrated', '', '2020-07-07'),
(82, 'Grover Schmitt', '18284441256', 't.janeczek@yahoo.com', 'Handcrafted Metal Gloves', '', '2020-07-07'),
(83, 'Joshuasal', '85178149382', 'no-replynuspsype@gmail.com', 'GÐ¾Ð¾d dÐ°y!  decoryn.com \r\n \r\nDid yÐ¾u knÐ¾w thÐ°t it is pÐ¾ssiblÐµ tÐ¾ sÐµnd businÐµss Ð¾ffÐµr ÑÐ¾mplÐµtÐµly lÐ°wfully? \r\nWÐµ prÐ¾ffÐµr Ð° nÐµw lÐµgitimÐ°tÐµ mÐµthÐ¾d Ð¾f sÐµnding Ð°ppÐµÐ°l thrÐ¾ug', '', '2020-07-09'),
(84, 'Francesca Senger', '18958525724', 'manuelgarza152@gmail.com', 'system', '', '2020-07-09'),
(85, 'Pascale Thompson I', '16305926702', 'stacyl1219@aol.com', 'compressing', '', '2020-07-14'),
(86, 'Princess Rolfson', '18801347380', 'stacyl1219@aol.com', 'instruction set', '', '2020-07-14'),
(87, 'Tanya Hirthe', '18437009434', 'lhollins@terrystiretown.com', 'New Mexico', '', '2020-07-15'),
(88, 'Mike Scott\r\n', '88872188336', 'no-replynof@google.com', 'HÐµllÐ¾! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n ', '', '2020-07-16'),
(89, 'Boyd Runolfsson', '10799539571', 'info@smartphoniker.de', 'Dynamic', '', '2020-07-17'),
(90, 'Suhayba Ammar', '89732222328', 'sadiqalbashir12@gmail.com', 'Dear CEO decoryn.com , \r\nI have an urgent need for a partner to venture in a fully funded investment with you. I would want to negotiate the possibility of a working business agreement with you. Your ', '', '2020-07-17'),
(91, 'ElaineExcaw', '88931538351', 'mailersmoney11231@gmail.com', 'Hello \r\n \r\nIm looking for investor for my email marketing business. \r\nI own 270 million email database with 92% valid emails. Im looking for investor who invest in server infrastructure to send it. Im', '', '2020-07-17'),
(92, 'Makenna Ryan', '18990247407', 's_lecarpentier@hotmail.com', 'Intelligent', '', '2020-07-28'),
(93, 'Ellis Robel', '13050483122', 'llogmenn@gmail.com', 'Kids', '', '2020-07-28'),
(94, 'Karl Collins', '17686273554', 'leann@hiltonmgmt.com', 'Licensed', '', '2020-07-29'),
(95, 'Max Koch', '10838697839', 'leann@hiltonmgmt.com', 'orange', '', '2020-07-29'),
(96, 'Miss Johann Ruecker', '16181989152', 'derek@kegsmiths.com', 'Underpass', '', '2020-08-01'),
(97, 'Virginia Reinger', '18118548334', 'toni_hockridge@hotmail.co.uk', 'Central', '', '2020-08-04'),
(98, 'Berenice Quigley', '17554980798', 'meriviere@yahoo.ca', 'invoice', '', '2020-08-05'),
(99, 'Craig Durba', '85958696752', 'profaukdave@gmail.com', 'Dear CEO  decoryn.com \r\nI have contacted you in your feedback form with an offer to handle this business. Here is the placement: \r\n \r\nValue of funds: TWENTY-FIVE MILLION DOLLARS. \r\nLocation of funds: ', '', '2020-08-07'),
(100, 'Mrs. Kristian Murazik', '13502989783', 'franziska.tschan@unine.ch', 'Rubber', '', '2020-08-07'),
(101, 'Pablo Dibbert', '14725433658', 'info@bithumbcorp.com', 'quantifying', '', '2020-08-09'),
(102, 'Monroe Schumm', '15411075474', 'theawesomethrees@hotmail.com', 'Sports', '', '2020-08-10'),
(103, 'Verlie Brown', '16221626712', '15125684548@mms.cricketwireless.net', 'Savings Account', '', '2020-08-11'),
(104, 'Mike ', '84333438737', 'no-replynof@google.com', 'GÐ¾Ð¾d dÐ°y! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days.', '', '2020-08-13'),
(105, 'Roberthon', '86812282156', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply Professional surveillance & medical products: \r\n \r\nMoldex, makrite and 3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, PPDS masks \r\nFace ', '', '2020-08-14'),
(106, 'Ayushmaan', '7310798832', 'ayushmaankapoor@gmail.com', 'How i will run fast in football and mentain my mucles ', '', '2020-08-14'),
(107, 'Michel Gaston', '87322669395', 'frankegaston02@gmail.com', 'Greetings! \r\n \r\nHow are you today? Hope fine? \r\n \r\nI genuinely solicit for the assistance of a reliable and honest foreign partner that will work closely with me in a joint venture partnership. I can ', '', '2020-08-14'),
(108, 'Emmy Ward MD', '12933027990', 'dannahodge@aol.com', 'Tunnel', '', '2020-08-16'),
(109, 'Abdul Kulas Jr.', '16004134950', 'williamscie2000@gmail.com', 'Credit Card Account', '', '2020-08-16'),
(110, 'Hailey Gorczany', '18066409354', 'contact@aicm.org', 'Generic Cotton Soap', '', '2020-08-17'),
(111, 'Thad Shields', '12621877319', 'samuelfkerr@btinternet.com', 'FTP', '', '2020-08-18'),
(112, 'Nels Steuber Jr.', '18436406651', 'nadia.monot@orange.fr', 'knowledge base', '', '2020-08-21'),
(113, 'Claudia Cronin', '12525654933', 'hwiederhold@msn.com', 'California', '', '2020-08-21'),
(114, 'Ayushmaan', '7310798832', 'ayushmaankapoor@gmail.com', 'Football is all about pasion and love', '', '2020-08-24'),
(115, 'CALLnDATA', '89434219536', 'callndata.com@rediffmail.com', 'We have experience team which has delivered a wide range of versatile projects for Mobile App, software, website development and other device. If you looking for experience team who can understand you', '', '2020-08-24'),
(116, 'Anthonylus', '82348426548', 'no-replynuspsype@gmail.com', 'Good day, Belarus is currently experiencing brutal detentions and beatings of civilians. If you want to help them, we have announced a collection of aid for victims of repression in Belarus \r\nhttps://', '', '2020-08-24'),
(117, 'Marcelino Douglas', '18031762006', 'pbahr@neo.rr.com', 'Home', '', '2020-08-24'),
(118, 'Electa Hackett', '15193258010', 'cyrus@thecyruslawfirm.com', 'Right-sized', '', '2020-08-26'),
(119, 'Raven Kihn', '15461239487', 'admin@swelldental.com', 'feed', '', '2020-08-27'),
(120, 'Margarette Reilly', '18012609925', 'aguadeisla@yahoo.ca', 'zero administration', '', '2020-08-27'),
(121, 'Mose Schinner', '19152481076', 'pamelamcqueen04@yahoo.com', 'Investment Account', '', '2020-08-28'),
(122, 'Miss Kyra Fahey', '11508156895', 'catherinekennedy28@gmail.com', 'payment', '', '2020-08-29'),
(123, 'Genevieve Hane II', '15343938883', 'kelly.chieng@yahoo.com', 'Group', '', '2020-08-29'),
(124, 'Jimmy Scowley', '85955246598', 'jimmyscowley@gmail.com', 'Dear Sir/mdm, \r\n \r\nOur company Resinscales is looking for distributors and resellers for its unique product: ready-made tank models from the popular massively multiplayer online game - World of Tanks.', '', '2020-08-31'),
(125, 'Sandrine Turner', '16847228238', 'annapbanks@gmail.com', 'Music', '', '2020-09-01'),
(126, 'Mrs. Annamarie Grant', '13112578053', 'sakayori@violin.ocn.ne.jp', 'matrix', '', '2020-09-02'),
(127, 'Rhea Schultz', '16967181236', 'williamwaughk@aol.com', 'Usability', '', '2020-09-03'),
(128, 'Sandra Amparo', '81679319549', 'worldwideclaimsagenti@gmail.com', 'WORLD HEALTH ORGANIZATION / MICRO SOFT CORPORATION / EURO MILLION LOTTERIA \r\nGrand Royale  Park Spain. \r\nDear Beneficiary. \r\nWe are pleased to announce you as one of the 10 lucky winners in the Euro M', '', '2020-09-04'),
(129, 'Bessie Schroeder Sr.', '13163137251', 'info@hiltonmgmt.com', 'Norway', '', '2020-09-05'),
(130, 'Eleazar Berge', '11995273681', 'hightower05@bluewin.ch', 'mint green', '', '2020-09-07'),
(131, 'Jayson Wilderman', '13624621259', 'marygreen102@yahoo.com', 'Intelligent', '', '2020-09-08'),
(132, 'Brandy Dibbert', '14034996060', 'duanetony808@gmail.com', 'Auto Loan Account', '', '2020-09-09'),
(133, 'Mike Longman\r\n', '85964214428', 'no-replynof@google.com', 'HÐµllÐ¾! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n ', '', '2020-09-09'),
(134, 'Ellie Orn', '13779947398', 'sayalay.anuttara@gmail.com', 'Buckinghamshire', '', '2020-09-15'),
(135, 'Tianna Thiel', '11375471804', 'info@hiltonmgmt.com', 'Web', '', '2020-09-16'),
(136, 'Ed Effertz', '18696319974', 'ksgraham@twc.com', 'wireless', '', '2020-09-16'),
(137, 'Malachi Batz V', '11601209837', 'myndemufc@googlemail.com', 'Buckinghamshire', '', '2020-09-18'),
(138, 'Sulaiman Taniji', '84178335879', 'profaukdave@gmail.com', 'Dear CEO decoryn.com \r\nI have contacted you in your feedback form with an offer to manage a business of high remuneration. \r\nHere is the placement: \r\nValue of funds: ONE HUNDRED AND FORTY MILLION EURO', '', '2020-09-19'),
(139, 'Sammie Cormier', '11964967417', '5129819640@vtext.com', 'executive', '', '2020-09-20'),
(140, 'Adolph Frami', '18116176222', 'janinasterkau@aol.com', 'Manager', '', '2020-09-21'),
(141, 'Khalid Davis', '86467555997', 'wes.bart4@gmail.com', 'Greetings, \r\n \r\nWe are brokers linked with high profile investors who are willing to; \r\n \r\nFund any company in any current project; \r\n \r\nFund a project/Investment of any Interest or choices; \r\n \r\nThey', '', '2020-09-21'),
(142, 'Kennith Runolfsson', '18739329665', 'jl4red@yahoo.com', 'Light', '', '2020-09-22'),
(143, 'Lola Osinski DDS', '12568555821', 'wescaron79@gmail.com', 'bandwidth', '', '2020-09-23'),
(144, 'James Saunder\r\n', '86481178288', 'no-reply@hilkom-digital.de', 'Hi there \r\nI have just checked decoryn.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only', '', '2020-09-24'),
(145, 'Stephan Auer', '10691304051', '5129247944@vtext.com', 'Cotton', '', '2020-09-27'),
(146, 'Elta Kuhlman', '14755733781', 'mccaruso274@gmail.com', 'Factors', '', '2020-09-27'),
(147, 'Magnus Klein', '10518346122', 'asjjd2008@gmail.com', 'quantify', '', '2020-10-03'),
(148, 'April Parisian', '12664419141', 'kellymaitz@gmail.com', 'Poland', '', '2020-10-05'),
(149, 'Ignacio Haag', '17114626844', '5129656291@vtext.com', 'Berkshire', '', '2020-10-05'),
(150, 'James Audley\r\n', '82315512184', 'no-reply@hilkom-digital.de', 'HÐµllÐ¾! \r\nI have just checked decoryn.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only', '', '2020-10-05'),
(151, 'Celine Johnson', '18440131122', 'kennedywilbert6288@gmail.com', 'payment', '', '2020-10-06'),
(152, 'Miss Myriam Wiza', '10946640482', 'julrich120@gmail.com', 'Cambridgeshire', '', '2020-10-06'),
(153, 'James Lambert', '87293613274', 'lambertj283@gmail.com', 'Good day \r\n \r\nI`m seeking for a reputable company/individual to partner with in a manner it would benefit both parties. The project is worth $24 Million so if interested, kindly contact me through thi', '', '2020-10-09'),
(154, 'Damien Grant V', '11481422625', 'lipp_a@freenet.de', 'Internal', '', '2020-10-10'),
(155, 'Yasmine Waters', '18312188440', 'pulcini300@aol.com', 'Human', '', '2020-10-12'),
(156, 'Una Heaney Jr.', '10783633659', 'activealarms@sbcglobal.net', 'Computer', '', '2020-10-12'),
(157, 'Roxane Wehner', '10018176871', 'alexia.vasquez9@gmail.com', 'pink', '', '2020-10-13'),
(158, 'Terrance Orn', '13497061393', 'web@banking-g.com', 'FTP', '', '2020-10-13'),
(159, 'Miss Letha Runte', '10072337458', 'lkroll@tri-delta.com', 'Equatorial Guinea', '', '2020-10-14'),
(160, 'Miracle Ondricka III', '16294417230', 'eunyoung.lee81@gmail.com', 'Automotive', '', '2020-10-16'),
(161, 'Robin Robel', '12328083098', 'web@banking-g.com', 'SQL', '', '2020-10-16'),
(162, 'Karli Reinger II', '12735978230', 'melissa09sue@aol.com', 'Licensed Wooden Tuna', '', '2020-10-16'),
(163, 'Michal Milne', '0664 158 48 39', 'information@decoryn.com', 'ATT: decoryn.com / Decoryn SITE SERVICES\r\nThis notice ENDS ON: Oct 17, 2020\r\n\r\n\r\nWe have actually not gotten a settlement from you.\r\nWe  have actually attempted to call you however were not able to co', '', '2020-10-17'),
(164, 'Morgan  Morris', '87389233528', 'mmmorganmorris1@gmail.com', 'Dear  Sir/Madam, \r\n \r\nI am a broker/financier with sound financial management abilities to  manage a vast capital for an Arab investor with an embattled political  situation. \r\n \r\nThese funds can be i', '', '2020-10-17'),
(165, 'Mrs. Benny Kling', '18621371971', 'holmesfrenzly@aol.com', 'leverage', '', '2020-10-18'),
(166, 'Ruben Koepp', '16967829617', 'janicesales20@gmail.com', 'Soft', '', '2020-10-21'),
(167, 'Americo Kutch', '11598502524', 'kkkrier@hotmail.com', 'Chips', '', '2020-10-21'),
(168, 'Landen Brown', '13090225994', 'lmcnultyfl@tampabay.rr.com', 'workforce', '', '2020-10-22'),
(169, 'Mariela Wuckert', '12677591029', 'bupaymentgw@gmail.com', 'Maryland', '', '2020-10-22'),
(170, 'Erika Boyle', '10852460014', 'info@drterrassement.ca', 'invoice', '', '2020-10-23'),
(171, 'Ashton Schinner', '13707978815', 'jkabino@gmail.com', 'Creative', '', '2020-10-23');

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
  `position` varchar(200) DEFAULT '0',
  `price` varchar(200) DEFAULT NULL,
  `redirect` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `productName`, `productDescription`, `productImage1`, `productImage2`, `modelno`, `seotitle`, `metades`, `altimage`, `keyword`, `headline`, `homeproduct`, `postingDate`, `updationDate`, `status`, `position`, `price`, `redirect`) VALUES
(157, 18, 'THE CONTROLLER (DF 20) ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5QUk9EVUNUIENPREU8L2I+PC90ZD48dGQ+REYgMjA8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NQVRFUklBTDwvYj48L3RkPjx0ZD5HbG9zc3kgUFU8L3RkPjwvdHI+PHRyPjx0ZD48Yj5USElDS05FU1M8L2I+PC90ZD48dGQ+MS4yIE1NIE91dGVyIGxheWVyPC90ZD48L3RyPjx0cj48dGQ+PGI+TEFZRVJTPC9iPjwvdGQ+PHRkPjQgTGF5ZXJzIGxpbmluZzwvdGQ+PC90cj48dHI+PHRkPjxiPldFSUdIVDwvYj48L3RkPjx0ZD40MjAtIDQ0MCBHbXM8L3RkPjwvdHI+PHRyPjx0ZD48Yj5DSVJDVU1GRVJFTkNFPC9iPjwvdGQ+PHRkPjY3LSA2OSBDbTwvdGQ+PC90cj48dHI+PHRkPjxiPlBBQ0tBR0lORzwvYj48L3RkPjx0ZD4zNSBQY3MgcGVyIGJveDwvdGQ+PC90cj48dHI+PHRkPjxiPk1BU1RFUiBDQVJUT048L2I+PC90ZD48dGQ+MjYgWCAxOCBYIDE1ICI8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TSVpFPC9iPjwvdGQ+PHRkPjU8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '92DF20.jpg', '196', '', 'BUY PU FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 'PU football model named ', 'Football Soccer Ball', 'football, soccer ball, PU, PU footballs', 'BUY PU FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 1, '2020-06-26', '2020-09-26 09:03:45', 0, '3', '200', ''),
(158, 18, 'THE HITBALL (DF 21)', 'PHA+PHNwYW4gc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPjxmb250IGNvbG9yPSIjMDMwMzAzIiBmYWNlPSJSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7Ij7imIUgUHJlbWl1bSBtYXRjaCBiYWxsIG1hZGUgb2YgUFUgbWF0ZXJpYWwuPC9zcGFuPjwvZm9udD48L3NwYW4+PC9wPjxwPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDMsIDMsIDMpOyBmb250LWZhbWlseTogUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPuKYhSBQVSBtYXRlcmlhbCBpcyBhIHZlcnkgZHVyYWJsZSBtYXRlcmlhbCB0aGF0IGdpdmVzIGEgc29mdCB0b3VjaCBhbmQgbG9uZyBsaWZlIHRvIHRoZSBiYWxsLjwvc3Bhbj48L3A+PHA+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMywgMywgMyk7IGZvbnQtZmFtaWx5OiBSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+4piFIEhhbmQgc3RpdGNoZWQgYmFsbCBhbmQgc2VhbXMgYXJlIG11Y2ggZGVlcGVyIGdpdmluZyBncmVhdGVyIGFlcm9keW5hbWljIHN0YWJpbGl0eS48L3NwYW4+PC9wPjxwPjxzcGFuIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij48Zm9udCBjb2xvcj0iIzAzMDMwMyIgZmFjZT0iUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyI+4piFIEV4dHJlbWUgYWlyIHJldGVudGlvbiBpbiBiYWxsIHRoYXQgd2lsbCBnaXZlIGV4Y2VsbGVudCByZXNwb25zZSBvbiByb3VnaCBncm91bmQgYWxzby48L3NwYW4+PC9mb250Pjwvc3Bhbj48L3A+PHA+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMywgMywgMyk7IGZvbnQtZmFtaWx5OiBSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+4piFIDQgbGF5ZXIgaW5uZXIgbGluaW5nIHRoYXQgd2lsbCBnaXZlIGV4dHJhIGlubmVyIHN0cmVuZ3RoIHRvIHRoZSBiYWxsLjwvc3Bhbj48L3A+PHA+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMywgMywgMyk7IGZvbnQtZmFtaWx5OiBSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+4piFIEV4Y2VsbGVudCBiYWxsIGZvciBoYXJkY29yZSBtYXRjaCBzaXR1YXRpb25zIGV2ZW4gb24gbG9jYWwgdW5ldmVuIGdyb3VuZHMuPC9zcGFuPjwvcD48cD48c3BhbiBzdHlsZT0iY29sb3I6IHJnYigzLCAzLCAzKTsgZm9udC1mYW1pbHk6IFJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij7imIUgU29mdCBvdXRlciBtYXRlcmlhbCBhbmQgc3RhYmxlIGJvdW5jZSBzbyBpdCB3aWxsIGdpdmUgYSBiZXR0ZXIgY29udHJvbCB0byB5b3UgZXZlbiBsb2NhbCB1bmV2ZW4gZ3JvdW5kcy48L3NwYW4+PC9wPjxwPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDMsIDMsIDMpOyBmb250LWZhbWlseTogUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPuKYhSAzMiBwYW5lbHMsIHNpemUgNSBhbmQgZXh0cmEgMS4yIG1tIGdsb3NzeSBvdXRlciBsYXllciBmb3IgZXh0cmEgb3V0ZXIgc3RyZW5ndGg8L3NwYW4+PC9wPjxwPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDMsIDMsIDMpOyBmb250LWZhbWlseTogUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPuKYhSBHU1Qgb2YgMTIgJSBpcyBpbmNsdWRlZCBpbiB0aGUgcHJpY2UuPC9zcGFuPjwvcD48cD48c3BhbiBzdHlsZT0iY29sb3I6IHJnYigzLCAzLCAzKTsgZm9udC1mYW1pbHk6IFJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij7imIUgSXQgd2lsbCB0YWtlIDYgLSA4IGRheXMgdG8gZGVsaXZlciB0aGUgcHJvZHVjdC4gKG1heSBiZSB1cCBhbmQgZG93biBkZXBlbmRpbmcgb24geW91ciBsb2NhdGlvbiBhbmQgY292aWQtIDE5IHNpdHVhdGlvbikuPC9zcGFuPjwvcD48cD48c3BhbiBzdHlsZT0iY29sb3I6IHJnYigzLCAzLCAzKTsgZm9udC1mYW1pbHk6IFJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij7imIUgRGVsaXZlcnkgY2hhcmdlcyB3aWxsIGJlIGFwcGxpZWQgZXh0cmEuPC9zcGFuPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDMsIDMsIDMpOyBmb250LWZhbWlseTogUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPjxicj48L3NwYW4+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMywgMywgMyk7IGZvbnQtZmFtaWx5OiBSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+PGJyPjwvc3Bhbj48YnI+PC9wPjxwPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDMsIDMsIDMpOyBmb250LWZhbWlseTogUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPjxicj48L3NwYW4+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMywgMywgMyk7IGZvbnQtZmFtaWx5OiBSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+PGJyPjwvc3Bhbj48c3BhbiBzdHlsZT0iY29sb3I6IHJnYigzLCAzLCAzKTsgZm9udC1mYW1pbHk6IFJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij48YnI+PC9zcGFuPjxzcGFuIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij48Zm9udCBjb2xvcj0iIzAzMDMwMyIgZmFjZT0iUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyI+PGJyPjwvc3Bhbj48L2ZvbnQ+PC9zcGFuPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDMsIDMsIDMpOyBmb250LWZhbWlseTogUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPjxicj48L3NwYW4+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMywgMywgMyk7IGZvbnQtZmFtaWx5OiBSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+PGJyPjwvc3Bhbj48c3BhbiBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+PGZvbnQgY29sb3I9IiMwMzAzMDMiIGZhY2U9IlJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWYiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsiPjxicj48L3NwYW4+PC9mb250Pjwvc3Bhbj48YnI+PC9wPg==', '135HITBALL WEBSITE.jpg', '68DVAS.jpg', '', 'BUY PU FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 'PU football model named ', 'Football Soccer Ball', 'football, soccer ball, PU, PU footballs', 'BUY PU FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 1, '2020-06-26', '2020-09-30 11:02:35', 0, '2', '1,099', ''),
(159, 18, 'THE BIGKICKERZ (DF 22)', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5QUk9EVUNUIENPREU8L3RkPjx0ZD5ERjIyPC90ZD48L3RyPjx0cj48dGQ+TUFURVJJQUw8L3RkPjx0ZD5HbG9zc3kgUFU8L3RkPjwvdHI+PHRyPjx0ZD5USElDS05FU1M8L3RkPjx0ZD4xLjUgTU0gb3V0ZXIgbGF5ZXI8L3RkPjwvdHI+PHRyPjx0ZD5MQVlFUlM8L3RkPjx0ZD40IExheWVycyBsaW5pbmc8L3RkPjwvdHI+PHRyPjx0ZD5XRUlHSFQ8L3RkPjx0ZD40MjAtIDQ0MCBnbXM8L3RkPjwvdHI+PHRyPjx0ZD5DSVJDVU1GRVJFTkNFPC90ZD48dGQ+NjctIDY5IENtPC90ZD48L3RyPjx0cj48dGQ+UEFDS0FHSU5HPC90ZD48dGQ+MzAgUGNzPC90ZD48L3RyPjx0cj48dGQ+TUFTVEVSIENBUlRPTjwvdGQ+PHRkPjI2IFggMTggWDE1IEluY2hlczwvdGQ+PC90cj48dHI+PHRkPlNJWkU8L3RkPjx0ZD41PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '44DF22.jpg', '72', '', 'BUY PU FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 'PU football model named ', 'Football Soccer Ball', 'football, soccer ball, PU, PU footballs', 'BUY PU FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 1, '2020-06-26', '2020-07-11 05:18:22', 0, '1', NULL, NULL),
(160, 20, 'THE PRACTISA (DF 10)', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5QUk9EVUNUIENPREU8L2I+PC90ZD48dGQ+REYgMTA8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NQVRFUklBTDwvYj48L3RkPjx0ZD5HbG9zc3kgUFZDPC90ZD48L3RyPjx0cj48dGQ+PGI+VEhJQ0tORVNTPC9iPjwvdGQ+PHRkPjEuMiBNTSB0aGlja25lc3M8L3RkPjwvdHI+PHRyPjx0ZD48Yj5MQVlFUlM8L2I+PC90ZD48dGQ+MiBMYXllciBsaW5pbmc8L3RkPjwvdHI+PHRyPjx0ZD48Yj5XRUlHSFQ8L2I+PC90ZD48dGQ+MjcwLSAzMDAgZ208L3RkPjwvdHI+PHRyPjx0ZD48Yj5DSVJDVU1GRVJFTkNFPC9iPjwvdGQ+PHRkPjY3LSA2OCBjbTwvdGQ+PC90cj48dHI+PHRkPjxiPlBBQ0tBR0lORzwvYj48L3RkPjx0ZD41MCBQY3MgcGVyIGJveDwvdGQ+PC90cj48dHI+PHRkPjxiPk1BU1RFUiBDQVJUT048L2I+PC90ZD48dGQ+MiBYIDE4IFggMTUgSW5jaGVzPC90ZD48L3RyPjx0cj48dGQ+PGI+U0laRTwvYj48L3RkPjx0ZD41PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '75gdhgd.jpg', '27', '', 'BUY PVC FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 'PVC football model named ', 'Football Soccer Ball', 'football, soccer ball, pvc football, ', 'BUY PVC FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 1, '2020-06-29', '2020-06-29 06:51:58', 1, '0', NULL, NULL),
(161, 20, 'THE GRASSBALL (DF 11)', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5QUk9EVUNUIENPREU8L2I+PC90ZD48dGQ+REYgMTE8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NQVRFUklBTDwvYj48L3RkPjx0ZD5HbG9zc3kgUFZDPC90ZD48L3RyPjx0cj48dGQ+PGI+VEhJQ0tORVNTPC9iPjwvdGQ+PHRkPjEuMiBNTSBvdXRlciBsYXllcjwvdGQ+PC90cj48dHI+PHRkPjxiPkxBWUVSUzwvYj48L3RkPjx0ZD4zIExheWVyIGxpbmluZzwvdGQ+PC90cj48dHI+PHRkPjxiPldFSUdIVDwvYj48L3RkPjx0ZD4zMjAtIDM0MCBHbTwvdGQ+PC90cj48dHI+PHRkPjxiPkNJUkNVTUZFUkVOQ0U8L2I+PC90ZD48dGQ+NjctIDY4IENtPC90ZD48L3RyPjx0cj48dGQ+PGI+UEFDS0FHSU5HPC9iPjwvdGQ+PHRkPjUwIFBjcyBwZXIgYm94PC90ZD48L3RyPjx0cj48dGQ+PGI+TUFTVEVSIENBUlRPTjwvYj48L3RkPjx0ZD4yIFggMTggWCAxNSBJbmNoZXM8L3RkPjwvdHI+PHRyPjx0ZD48Yj5TSVpFPC9iPjwvdGQ+PHRkPjU8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '175fhhgkjf.jpg', '50', '', 'BUY PVC FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 'PVC football model named ', 'Football Soccer Ball', 'football, soccer ball, pvc football, ', 'BUY PVC FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 1, '2020-06-29', '2020-06-29 06:52:13', 1, '0', NULL, NULL),
(162, 20, 'THE KICKJOLT (DF 12)', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD5QUk9EVUNUIENPREU8L3RkPjx0ZD5ERiAxMjwvdGQ+PC90cj48dHI+PHRkPk1BVEVSSUFMPC90ZD48dGQ+R2xvc3N5IFBWQzwvdGQ+PC90cj48dHI+PHRkPlRISUNLTkVTUzwvdGQ+PHRkPjEuMiBNTSBvdXRlciBsYXllcjwvdGQ+PC90cj48dHI+PHRkPkxBWUVSUzwvdGQ+PHRkPjQgTGF5ZXIgbGluaW5nPC90ZD48L3RyPjx0cj48dGQ+V0VJR0hUPC90ZD48dGQ+NDIwLSA0NDAgR208L3RkPjwvdHI+PHRyPjx0ZD5DSVJDVU1GRVJFTkNFPC90ZD48dGQ+NjctIDY5IENtPC90ZD48L3RyPjx0cj48dGQ+UEFDS0FHSU5HPC90ZD48dGQ+NTAgUGNzIHBlciBib3g8L3RkPjwvdHI+PHRyPjx0ZD5NQVNURVIgQ0FSVE9OPC90ZD48dGQ+MjYgWCAxOCBYIDE1IGluY2hlczwvdGQ+PC90cj48dHI+PHRkPlNJWkU8L3RkPjx0ZD41PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '94ghghghd.jpg', '44', '', 'BUY PVC FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 'PVC football model named ', 'Football Soccer Ball', 'football, soccer ball, pvc football, ', 'BUY PVC FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 1, '2020-06-29', '2020-06-29 06:52:38', 1, '0', NULL, NULL),
(163, 21, 'THE DRIZZLE (DF 40) ', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5QUk9EVUNUIENPREU8L2I+PC90ZD48dGQ+REYgNDA8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NQVRFUklBTDwvYj48L3RkPjx0ZD5HbG9zc3kgc3ludGhlaWMgcnViYmVyPC90ZD48L3RyPjx0cj48dGQ+PGI+TEFZRVJTPC9iPjwvdGQ+PHRkPjIgTGF5ZXJzIGxpbmluZzwvdGQ+PC90cj48dHI+PHRkPjxiPldFSUdIVDwvYj48L3RkPjx0ZD4zNDAtIDM1MCBHbTwvdGQ+PC90cj48dHI+PHRkPjxiPkNJUkNVTUZFUkVOQ0U8L2I+PC90ZD48dGQ+NjctIDY4IENtPC90ZD48L3RyPjx0cj48dGQ+PGI+UEFDS0FHSU5HPC9iPjwvdGQ+PHRkPjUwIFBjcyBwZXIgYm94PC90ZD48L3RyPjx0cj48dGQ+PGI+TUFTVEVSIENBUlRPTjwvYj48L3RkPjx0ZD4yMyBYIDE4IFggMTUgSW5jaGVzPC90ZD48L3RyPjx0cj48dGQ+PGI+U0laRTwvYj48L3RkPjx0ZD41PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '56DF 40.jpg', '161', '', 'BUY glossy rubber FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 'synthetic rubber football', 'Football Soccer Ball', 'football, soccer ball, pvc football, ', 'BUY PVC FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 1, '2020-06-29', '2020-07-11 05:52:14', 0, '0', NULL, NULL),
(164, 21, 'THE SWINDY (DF 41)', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5QUk9EVUNUIENPREU8L2I+PC90ZD48dGQ+REYgNDE8L3RkPjwvdHI+PHRyPjx0ZD48Yj5NQVRFUklBTDwvYj48L3RkPjx0ZD5HbG9zc3kgc3ludGhldGljIHJ1YmJlcjwvdGQ+PC90cj48dHI+PHRkPjxiPkxBWUVSUzwvYj48L3RkPjx0ZD4zIExheWVyIGxpbmluZzwvdGQ+PC90cj48dHI+PHRkPjxiPldFSUdIVDwvYj48L3RkPjx0ZD40MjAtIDQ0MCBHbTwvdGQ+PC90cj48dHI+PHRkPjxiPkNJUkNVTUZFUkVOQ0U8L2I+PC90ZD48dGQ+NjctIDY5IENtPC90ZD48L3RyPjx0cj48dGQ+PGI+UEFDS0FHSU5HPC9iPjwvdGQ+PHRkPjUwIFBjcyBwZXIgYm94PC90ZD48L3RyPjx0cj48dGQ+PGI+TUFTVEVSIENBUlRPTjwvYj48L3RkPjx0ZD4yNiBYIDE4IFggMTUgSW5jaGVzPC90ZD48L3RyPjx0cj48dGQ+PGI+U0laRTwvYj48L3RkPjx0ZD41PC90ZD48L3RyPjwvdGJvZHk+PC90YWJsZT48cD48YnI+PC9wPg==', '50DF 41.jpg', '187', '', 'BUY PVC FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 'synthetic rubber football', 'Football Soccer Ball', 'football, soccer ball, pvc football, ', 'BUY PVC FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 1, '2020-06-29', '2020-07-11 05:52:31', 0, '0', NULL, NULL),
(165, 21, 'FIREGRIP BALL (DF 42)', 'PHA+PHNwYW4gc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPjxmb250IGNvbG9yPSIjMDMwMzAzIiBmYWNlPSJSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7Ij7imIUgV2F0ZXJwcm9vZiBzeW50aGV0aWMgcnViYmVyIG1hdGVyaWFsIHNvIGJlc3QgYmFsbCB0byBwbGF5IGluIHJhaW55IGRheXMgYW5kIGV4Y2VsbGVudCBiYWxsIHRvIHVzZSBmb3IgaG9tZSBmb290YmFsbCB0cmFpbmluZyBvbiBoYXJkIGdyb3VuZCBzdXJmYWNlLjwvc3Bhbj48L2ZvbnQ+PC9zcGFuPjwvcD48cD48c3BhbiBzdHlsZT0iY29sb3I6IHJnYigzLCAzLCAzKTsgZm9udC1mYW1pbHk6IFJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij7imIUgRXhjZWxsZW50IGJhbGwgZm9yIGZyZWVzdHlsZSBmb290YmFsbCBhbmQgc3RyZWV0IHNvY2NlciBiZWNhdXNlIG9mIGl0cyBzeW50aGV0aWMgcnViYmVyIGdyaXAgYW5kIHN0YWJsZSBib3VuY2UuPC9zcGFuPjwvcD48cD48c3BhbiBzdHlsZT0iY29sb3I6IHJnYigzLCAzLCAzKTsgZm9udC1mYW1pbHk6IFJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij7imIUgNCBsYXllciBsaW5pbmcgc28gaXQgZ2l2ZXMgZXh0cmEgaW5uZXIgc3RyZW5ndGggdG8gdGhlIGJhbGwuPC9zcGFuPjwvcD48cD48c3BhbiBzdHlsZT0iY29sb3I6IHJnYigzLCAzLCAzKTsgZm9udC1mYW1pbHk6IFJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij7imIUgMzIgcGFuZWxzIGFuZCBleHRyYSAxLjIgbW0gZ2xvc3N5IG91dGVyIGxheWVyIGZvciBleHRyYSBzdHJlbmd0aC48L3NwYW4+PC9wPjxwPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDMsIDMsIDMpOyBmb250LWZhbWlseTogUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPuKYhSBTaXplIDUsIGhhbmQgc3RpdGNoZWQgYmFsbCBhbmQgc2VhbXMgYXJlIG11Y2ggZGVlcGVyIGdpdmluZyBncmVhdGVyIGFlcm9keW5hbWljIHN0YWJpbGl0eS48L3NwYW4+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMywgMywgMyk7IGZvbnQtZmFtaWx5OiBSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+PGJyPjwvc3Bhbj48L3A+PHA+PHNwYW4gc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPjxmb250IGNvbG9yPSIjMDMwMzAzIiBmYWNlPSJSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7Ij7imIUgRXhjZWxsZW50IGJhbGwgZm9yIHByYWN0aWNpbmcgY3VydmVkIGZyZWUga2lja3MgaW4gcmFpbnkgYXMgd2VsbCBhcyBub24tIHJhaW55IGRheXMgZHVlIHRvIGl0cyBncmlwIG9mIHB1cmUgc2hpbnkgc3ludGhldGljIHJ1YmJlciBtYXRlcmlhbC48L3NwYW4+PC9mb250Pjwvc3Bhbj48L3A+PHA+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMywgMywgMyk7IGZvbnQtZmFtaWx5OiBSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+4piFIEdvb2QgYWlyIHJldGVudGlvbiBpbiBibGFkZGVyIHNvIGl0IHdpbGwgbm90IGxvb3NlIGFpciBhdCBhbGwgYWZ0ZXIgdXNpbmcgYmFsbCBmb3IgdmVyeSBsb25nIHRpbWUuPC9zcGFuPjwvcD48cD48c3BhbiBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+PGZvbnQgY29sb3I9IiMwMzAzMDMiIGZhY2U9IlJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWYiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsiPuKYhSBpbnRlcm5hdGlvbmFsIG1hdGNoIGJhbGwgc3VpdGFibGUgZm9yIGFsbCBzdXJmYWNlcyAoIEhhcmQgZ3JvdW5kLCBncmFzc3kgZ3JvdW5kLCB3ZXQgZ3JvdW5kLCBub24gZ3Jhc3N5IGdyb3VuZCwgYXJ0aWZpY2lhbCB0dXJmLCBldGMuKS48L3NwYW4+PC9mb250Pjwvc3Bhbj48L3A+PHA+PGJyPjwvcD48cD48c3BhbiBzdHlsZT0iY29sb3I6IHJnYigzLCAzLCAzKTsgZm9udC1mYW1pbHk6IFJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij48YnI+PC9zcGFuPjxzcGFuIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij48Zm9udCBjb2xvcj0iIzAzMDMwMyIgZmFjZT0iUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyI+PGJyPjwvc3Bhbj48L2ZvbnQ+PC9zcGFuPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDMsIDMsIDMpOyBmb250LWZhbWlseTogUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPjxicj48L3NwYW4+PHNwYW4gc3R5bGU9ImNvbG9yOiByZ2IoMywgMywgMyk7IGZvbnQtZmFtaWx5OiBSb2JvdG8sIEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgYmFja2dyb3VuZC1jb2xvcjogcmdiKDI0OSwgMjQ5LCAyNDkpOyI+PGJyPjwvc3Bhbj48c3BhbiBzdHlsZT0iY29sb3I6IHJnYigzLCAzLCAzKTsgZm9udC1mYW1pbHk6IFJvYm90bywgQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyBiYWNrZ3JvdW5kLWNvbG9yOiByZ2IoMjQ5LCAyNDksIDI0OSk7Ij48YnI+PC9zcGFuPjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDMsIDMsIDMpOyBmb250LWZhbWlseTogUm9ib3RvLCBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IGJhY2tncm91bmQtY29sb3I6IHJnYigyNDksIDI0OSwgMjQ5KTsiPjxicj48L3NwYW4+PGJyPjwvcD4=', '73DF 42 FIREGRIP WEB.jpg', '158DFDF.jpg', '', 'BUY glossy rubber FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 'synthetic rubber football', 'Football Soccer Ball', 'football, soccer ball, pvc football, ', 'BUY PVC FOOTBALLS IN DIFFERENT TYPES AND VARIATIONS ', 1, '2020-06-29', '2020-10-18 06:14:50', 1, '0', '899', 'https://bit.ly/2GLLiwa '),
(166, 22, 'BRAVO ORANGE (DFS 10)', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5VUFBFUiBNQVRFUklBTDwvYj48L3RkPjx0ZD5QVTwvdGQ+PC90cj48dHI+PHRkPjxiPklOU09MRTwvYj48L3RkPjx0ZD5Nb3VsZGVkPC90ZD48L3RyPjx0cj48dGQ+PGI+U0laRVM8L2I+PC90ZD48dGQ+NSB0byAxMDwvdGQ+PC90cj48dHI+PHRkPjxiPlFVQUxJVElFUzwvYj48L3RkPjx0ZD5MaWdodCBXZWlnaHQ8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '122cdvfdsf (1).jpg', '47', '', 'BUY FOOTBALL BOOTS AND SHOES IN DIFFERENT TYPES AND VARIATIONS ', 'FOOTBALL BOOTS AND SHOES', 'MENS FOOTBALL BOOTS', 'football studs, football boots, mens football boots', 'football boots', 1, '2020-07-03', '0000-00-00 00:00:00', 1, '0', NULL, NULL),
(167, 22, 'BRAVO BLUE (DFS 11)', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5VUFBFUiBNQVRFUklBTDwvYj48L3RkPjx0ZD5QVTwvdGQ+PC90cj48dHI+PHRkPjxiPklOU09MRTwvYj48L3RkPjx0ZD5Nb3VsZGVkPC90ZD48L3RyPjx0cj48dGQ+PGI+U0laRVM8L2I+PC90ZD48dGQ+NSBUTyAxMDwvdGQ+PC90cj48dHI+PHRkPjxiPlFVQUxJVElFUzwvYj48L3RkPjx0ZD5MaWdodCB3ZWlnaHQ8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '48hteheh.jpg', '51', '', 'BUY FOOTBALL BOOTS AND SHOES IN DIFFERENT TYPES AND VARIATIONS ', 'FOOTBALL BOOTS AND SHOES', 'MENS FOOTBALL BOOTS', 'football studs, football boots, mens football boots', 'football boots', 1, '2020-07-03', '0000-00-00 00:00:00', 1, '0', NULL, NULL),
(168, 22, 'KYOSHO ( DFS 20)', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Zm9udCBjb2xvcj0iIzU1NTU1NSI+PGI+T1VUU09MRTwvYj48L2ZvbnQ+PGJyPjwvdGQ+PHRkPlB1cmUgcnViYmVyPC90ZD48L3RyPjx0cj48dGQ+PGI+VVBQRVIgTUFURVJJQUw8L2I+PC90ZD48dGQ+UFZDPC90ZD48L3RyPjx0cj48dGQ+PGI+U0laRVM8L2I+PC90ZD48dGQ+NSB0byAxMDwvdGQ+PC90cj48dHI+PHRkPjxiPlFVQUxJVElFUzwvYj48L3RkPjx0ZD5MaWdodCB3ZWlnaHQ8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '104hjjhg.jpg', '124', '', 'BUY FOOTBALL BOOTS AND SHOES IN DIFFERENT TYPES AND VARIATIONS ', 'FOOTBALL BOOTS AND SHOES', 'MENS FOOTBALL BOOTS', 'football studs, football boots, mens football boots', 'football boots', 1, '2020-07-03', '2020-07-03 09:56:50', 1, '0', NULL, NULL),
(169, 22, 'ENTHU ( DFS 30)', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5VUFBFUiBNQVRFUklBTDwvYj48L3RkPjx0ZD5NaWNyb2ZpYnJlPC90ZD48L3RyPjx0cj48dGQ+PGI+U0laRVM8L2I+PC90ZD48dGQ+NSB0byAxMDwvdGQ+PC90cj48dHI+PHRkPjxiPlFVQUxJVElFUzwvYj48L3RkPjx0ZD5TdXBlcmlvciBtYXRlcmlhbDwvdGQ+PC90cj48L3Rib2R5PjwvdGFibGU+PHA+PGJyPjwvcD4=', '177grdfg.jpg', '117', '', 'BUY FOOTBALL BOOTS AND SHOES IN DIFFERENT TYPES AND VARIATIONS ', 'FOOTBALL BOOTS AND SHOES', 'MENS FOOTBALL BOOTS', 'football studs, football boots, mens football boots', 'football boots', 1, '2020-07-03', '2020-07-03 09:55:41', 1, '0', NULL, NULL),
(171, 22, 'FULL ANKLE (DFS 40)', 'PHA+PGJyPjwvcD48dGFibGUgY2xhc3M9InRhYmxlIHRhYmxlLWJvcmRlcmVkIj48dGJvZHk+PHRyPjx0ZD48Yj5VUFBFUiBNQVRFUklBTDwvYj48L3RkPjx0ZD5QVTwvdGQ+PC90cj48dHI+PHRkPjxiPk9VVFNPTEU8L2I+PC90ZD48dGQ+VFBVPC90ZD48L3RyPjx0cj48dGQ+PGI+UVVBTElUSUVTPC9iPjwvdGQ+PHRkPkxpZ2h0IHdlaWdodDwvdGQ+PC90cj48dHI+PHRkPjxiPlNJWkVTPC9iPjwvdGQ+PHRkPjUgdG8gMTA8L3RkPjwvdHI+PC90Ym9keT48L3RhYmxlPjxwPjxicj48L3A+', '75hfjfghg.jpg', '25', '', 'BUY FOOTBALL BOOTS AND SHOES IN DIFFERENT TYPES AND VARIATIONS ', 'FOOTBALL BOOTS AND SHOES', 'MENS FOOTBALL BOOTS', 'football studs, football boots, mens football boots', 'football boots', 1, '2020-07-03', '2020-07-03 09:56:27', 1, '0', NULL, NULL);

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
(1, 'header_img', '21banner.jpg'),
(2, 'header_text', 'GET YOUR GEAR UP WITH DECORYN'),
(3, 'about_text', 'GET YOUR GEAR UP WITH DECORYN BECAUSE WE RESPECT YOUR THOUSANDS HOURS OF TRAINING');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

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
