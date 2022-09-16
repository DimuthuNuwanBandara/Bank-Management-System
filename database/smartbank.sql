-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 06:23 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `Balance` varchar(100) NOT NULL,
  `SavingBalance` varchar(100) NOT NULL,
  `SavingTarget` varchar(100) NOT NULL,
  `AccountType` text NOT NULL,
  `State` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `AccountNo`, `Balance`, `SavingBalance`, `SavingTarget`, `AccountType`, `State`) VALUES
(1, '527220643110', '0.0', '0.0', '', 'Saving', 0),
(2, '528220621020', '14100', '0.0', '', 'Saving', 0),
(3, '531220718210', '15200', '5000', '2000', 'Saving', 0),
(4, '531221125460', '5000', '0.0', '', 'Saving', 0),
(5, '602221055270', '2500', '0.0', '', 'Saving', 0),
(11, '612221817080', '0.0', '0.0', '', 'Saving', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `srNo` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `CardNo` varchar(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `IssuedDate` varchar(20) NOT NULL,
  `ExpiryDate` varchar(20) NOT NULL,
  `Status` varchar(12) NOT NULL,
  `Verified` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`srNo`, `AccountNo`, `Name`, `CardNo`, `cvv`, `IssuedDate`, `ExpiryDate`, `Status`, `Verified`) VALUES
(1, '531220718210', 'KASUN BANDARA', '1253122085549053', 986, '31/05/22', '05/32', 'Active', 'Yes'),
(2, '528220621020', 'KAMAL LAKSHAN', '8253122085729052', 696, '31/05/22', '05/32', 'Active', 'Yes'),
(5, '602221055270', 'THARINDU  SRIMAL', '2260222132737060', 647, '02/06/22', '06/32', 'Active', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer_detail`
--

CREATE TABLE `customer_detail` (
  `C_No` int(11) NOT NULL,
  `Account_No` varchar(12) NOT NULL,
  `C_First_Name` text NOT NULL,
  `C_Last_Name` text NOT NULL,
  `Gender` text NOT NULL,
  `C_Father_Name` text NOT NULL,
  `C_Mother_Name` text NOT NULL,
  `C_Birth_Date` date NOT NULL,
  `C_Adhar_No` varchar(12) NOT NULL,
  `C_Pan_No` text NOT NULL,
  `C_Mobile_No` varchar(10) NOT NULL,
  `C_Email` varchar(200) NOT NULL,
  `C_Pincode` varchar(6) NOT NULL,
  `C_Adhar_Doc` varchar(500) NOT NULL,
  `C_Pan_Doc` varchar(500) NOT NULL,
  `Create_Date` date NOT NULL DEFAULT current_timestamp(),
  `ProfileColor` varchar(100) NOT NULL,
  `ProfileImage` varchar(400) NOT NULL,
  `Bio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_detail`
--

INSERT INTO `customer_detail` (`C_No`, `Account_No`, `C_First_Name`, `C_Last_Name`, `Gender`, `C_Father_Name`, `C_Mother_Name`, `C_Birth_Date`, `C_Adhar_No`, `C_Pan_No`, `C_Mobile_No`, `C_Email`, `C_Pincode`, `C_Adhar_Doc`, `C_Pan_Doc`, `Create_Date`, `ProfileColor`, `ProfileImage`, `Bio`) VALUES
(1, '527220643110', 'Admin', 'Patel', 'Not Availabel', 'Alex', 'Alexi', '1998-05-24', '199825635249', 'Colombo', '0762046412', 'hakiyi9501@about27.com', '123456', 'customer_data/Adhar_doc/back105272022064311.jpg', 'customer_data/Pan_doc/front105272022064311.jpg', '2022-05-27', '#eca424', '', ''),
(2, '528220621020', 'kamal', 'Lakshan', 'Not Availabel', 'Jagath perera', 'Lalani silva', '1997-05-03', '199725632584', 'Wariyapola', '0782563254', 'dalifan159@about27.com', '123456', 'customer_data/Adhar_doc/back205282022062102.jpg', 'customer_data/Pan_doc/front205282022062102.jpg', '2022-05-28', '#c217cf', '', ''),
(3, '531220718210', 'Kasun', 'Bandara', 'Male', 'Sunil premarathna', 'Sila Kottage', '1995-05-12', '199525863585', 'Kurunegala', '0725365854', 'hibeloy813@about27.com', '123456', 'customer_data/Adhar_doc/back305312022071821.jpg', 'customer_data/Pan_doc/front305312022071821.jpg', '2022-05-31', '#cd46d1', '../customer_data/Profile_Img/rpKamal1Jagath.jpg', 'The purpose of our lives is to be happy'),
(4, '531221125460', 'Nethmi', 'Akarsha', 'Female', 'Dilshan perera', 'Dilini wasana', '2000-03-15', '200015246585', 'Mawathagama', '0772563542', 'loweb36752@steamoh.com', '123456', 'customer_data/Adhar_doc/back105312022112546.jpg', 'customer_data/Pan_doc/front105312022112546.jpg', '2022-05-31', '#80fc50', '../customer_data/Profile_Img/4NethmiNethmi.jpg', 'The purpose of our lives is to be happy'),
(5, '602221055270', 'Tharindu ', 'Srimal', 'Male', 'Wije Silwa', 'Kamala Kanthi', '1998-12-05', '199825632548', 'Kandy', '0782563254', 'nitoda7435@nifect.com', '123456', 'customer_data/Adhar_doc/back30622022105527.jpg', 'customer_data/Pan_doc/front30622022105527.jpg', '2022-06-02', '#1c9faa', '../customer_data/Profile_Img/jpKamal1Tharindu.jpg', 'The purpose of our lives is to be happy'),
(11, '612221817080', 'Sudeera', 'Bandara', 'Not Availabel', 'Ajith Prasanna', 'Shalani Tharuka', '1999-06-16', '199902563254', 'Mathara', '0782563254', 'farewog389@falkyz.com', '123456', 'customer_data/Back_doc/back106122022181708.jpg', 'customer_data/Front_doc/front106122022181708.jpg', '2022-06-12', '#f44977', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `State` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `AccountNo`, `Username`, `Password`, `Status`, `State`) VALUES
(1, '527220643110', 'Admin01', 'dc39b2dfa8a3e85f8e22878701bea2b9', 'Super', 1),
(2, '528220621020', 'Kamal1', '966915f3629f6610647ae4ad9a0352b8', 'Active', 0),
(3, '531220718210', 'kasun1', 'f22227fa18eb6cb74d9fb7e7a42591a9', 'Active', 0),
(4, '531221125460', 'Nethmi', '7449438b4f1fdab79f2be0d3c564dd0b', 'Active', 0),
(5, '602221055270', 'Tharindu', '9d108629b1994970f0ecd1c528e3734b', 'Active', 0),
(11, '612221817080', 'Sudeera', '70d413a284f17d3b008862bf87b7a98a', 'Inactive', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `FAccountNo` varchar(12) NOT NULL,
  `Name` text NOT NULL,
  `Amount` varchar(100) NOT NULL,
  `Debit` varchar(100) NOT NULL,
  `Credit` varchar(100) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Status` text NOT NULL,
  `ProfileColor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `AccountNo`, `FAccountNo`, `Name`, `Amount`, `Debit`, `Credit`, `Date`, `Status`, `ProfileColor`) VALUES
(1, '531220718210', 'NA', 'SMART BANK', '20000', '0.0', '20000', '2022-05-31', 'Credited', 'blue'),
(2, '531220718210', 'NA', 'SMART BANK', '-200', '200', '0.0', '2022-05-31', 'Debited', 'blue'),
(3, '528220621020', '531220718210', 'Kasun Bandara', '100', '0.0', '100', '2022-05-31', 'Credited', '#cd46d1'),
(4, '531220718210', '528220621020', 'Kamal Lakshan', '-100', '100', '0.0', '2022-05-31', 'Debited', '#c217cf'),
(5, '528220621020', '531220718210', 'Kasun Bandara', '500', '0.0', '500', '2022-05-31', 'Credited', '#cd46d1'),
(6, '531220718210', '528220621020', 'Kamal Lakshan', '-500', '500', '0.0', '2022-05-31', 'Debited', '#c217cf'),
(7, '528220621020', '531220718210', 'Kasun Bandara', '100', '0.0', '100', '2022-06-01', 'Credited', '#cd46d1'),
(8, '531220718210', '528220621020', 'kamal Lakshan', '-100', '100', '0.0', '2022-06-01', 'Debited', '#c217cf'),
(9, '531220718210', '528220621020', 'kamal Lakshan', '500', '0.0', '500', '2022-06-01', 'Credited', '#c217cf'),
(10, '528220621020', '531220718210', 'Kasun Bandara', '-500', '500', '0.0', '2022-06-01', 'Debited', '#cd46d1'),
(11, '528220621020', '531220718210', 'Kasun Bandara', '200', '0.0', '200', '2022-06-01', 'Credited', '#cd46d1'),
(12, '531220718210', '528220621020', 'kamal Lakshan', '-200', '200', '0.0', '2022-06-01', 'Debited', '#c217cf'),
(13, '528220621020', 'NA', 'SMART BANK', '4000', '0.0', '4000', '2022-06-01', 'Credited', 'blue'),
(14, '528220621020', 'NA', 'SMART BANK', '10000', '0.0', '10000', '2022-06-01', 'Credited', 'blue'),
(15, '531220718210', '528220621020', 'kamal Lakshan', '300', '0.0', '300', '2022-06-01', 'Credited', '#c217cf'),
(16, '528220621020', '531220718210', 'Kasun Bandara', '-300', '300', '0.0', '2022-06-01', 'Debited', '#cd46d1'),
(17, '531221125460', 'NA', 'SMART BANK', '5000', '0.0', '5000', '2022-06-02', 'Credited', 'blue'),
(18, '602220853590', 'NA', 'SMART BANK', '5000', '0.0', '5000', '2022-06-02', 'Credited', 'blue'),
(19, '602221055270', 'NA', 'SMART BANK', '5000', '0.0', '5000', '2022-06-02', 'Credited', 'blue'),
(20, '602221055270', 'NA', 'SMART BANK', '-2000', '2000', '0.0', '2022-06-02', 'Debited', 'blue'),
(21, '602221117300', 'NA', 'SMART BANK', '5000', '0.0', '5000', '2022-06-02', 'Credited', 'blue'),
(22, '602221117300', 'NA', 'SMART BANK', '-3000', '3000', '0.0', '2022-06-02', 'Debited', 'blue'),
(23, '602221117300', 'NA', 'SMART BANK', '2000', '0.0', '2000', '2022-06-02', 'Credited', 'blue'),
(24, '602221117300', 'NA', 'SMART BANK', '-3000', '3000', '0.0', '2022-06-02', 'Debited', 'blue'),
(25, '602221117300', 'NA', 'SMART BANK', '4000', '0.0', '4000', '2022-06-02', 'Credited', 'blue'),
(26, '602221117300', 'NA', 'SMART BANK', '-2000', '2000', '0.0', '2022-06-02', 'Debited', 'blue'),
(27, '531220718210', '602221055270', 'Tharindu  Srimal', '500', '0.0', '500', '2022-06-02', 'Credited', '#1c9faa'),
(28, '602221055270', '531220718210', 'Kasun Bandara', '-500', '500', '0.0', '2022-06-02', 'Debited', '#cd46d1'),
(29, '604221421280', 'NA', 'SMART BANK', '5000', '0.0', '5000', '2022-06-04', 'Credited', 'blue');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `AccountNo` (`AccountNo`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`srNo`),
  ADD UNIQUE KEY `AccountNo` (`AccountNo`),
  ADD UNIQUE KEY `CardNo` (`CardNo`);

--
-- Indexes for table `customer_detail`
--
ALTER TABLE `customer_detail`
  ADD PRIMARY KEY (`C_No`),
  ADD UNIQUE KEY `Account_No` (`Account_No`),
  ADD UNIQUE KEY `C_Email` (`C_Email`),
  ADD UNIQUE KEY `C_Adhar_No` (`C_Adhar_No`) USING BTREE;

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`AccountNo`),
  ADD UNIQUE KEY `Unique` (`ID`),
  ADD UNIQUE KEY `AccountNo` (`AccountNo`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `srNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_detail`
--
ALTER TABLE `customer_detail`
  MODIFY `C_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
