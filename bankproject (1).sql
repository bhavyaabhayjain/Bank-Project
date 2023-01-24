-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 07:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `A_UID` varchar(10) NOT NULL,
  `Account_Balance` int(11) DEFAULT NULL,
  `Recent_Transactions` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`A_UID`, `Account_Balance`, `Recent_Transactions`) VALUES
('001', 2500, '2022-10-10 09:04:50'),
('002', 600, '2022-10-09 11:04:55'),
('003', 7000, '2022-09-10 12:08:50'),
('004', 5000, '2022-10-07 15:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `bankemployee`
--

CREATE TABLE `bankemployee` (
  `E_SSN` int(10) NOT NULL,
  `E_Name` varchar(45) DEFAULT NULL,
  `E_Phone` int(10) DEFAULT NULL,
  `E_Department` varchar(15) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `BankBranchID` varchar(10) NOT NULL,
  `Super_SSN` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bankemployee`
--

INSERT INTO `bankemployee` (`E_SSN`, `E_Name`, `E_Phone`, `E_Department`, `StartDate`, `BankBranchID`, `Super_SSN`) VALUES
(111, 'Kajal', 2147483647, 'Loan ', '2020-05-30', 'A001', NULL),
(112, 'Shah', 2147483647, 'Account', '2020-10-20', 'A002', NULL),
(113, 'Mike', 2147483647, 'Cash', '2020-09-21', 'A003', NULL),
(114, 'Lion', 990660333, 'Account', '2022-05-15', 'A002', 112);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BId` varchar(10) NOT NULL,
  `B_Name` varchar(45) DEFAULT NULL,
  `B_Address` varchar(60) DEFAULT NULL,
  `Assets` varchar(45) DEFAULT NULL,
  `Manager` varchar(45) DEFAULT NULL,
  `Assistant_Manager` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BId`, `B_Name`, `B_Address`, `Assets`, `Manager`, `Assistant_Manager`) VALUES
('A001', 'Newark', '123 washinton street', 'Physical', 'Kajal', 'Roy'),
('A002', 'New York', '126 liberty', 'Reserves', 'Shah', 'Lion'),
('A003', 'Jersey City', '140 Carlton', 'Investment', 'Mike', 'Ananaya'),
('A004', 'Edison', '155 Physical Streeet', 'Physical', 'Jelo', 'Tolly');

-- --------------------------------------------------------

--
-- Table structure for table `checkingaccount`
--

CREATE TABLE `checkingaccount` (
  `A_UID` varchar(10) NOT NULL,
  `OverDraft` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkingaccount`
--

INSERT INTO `checkingaccount` (`A_UID`, `OverDraft`) VALUES
('001', '100'),
('002', '120'),
('003', '50'),
('004', '60');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_SSN` int(10) NOT NULL,
  `C_Name` varchar(45) DEFAULT NULL,
  `C_Address` varchar(45) DEFAULT NULL,
  `Branch_ID` varchar(10) DEFAULT NULL,
  `Employee_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_SSN`, `C_Name`, `C_Address`, `Branch_ID`, `Employee_ID`) VALUES
(101011010, 'Jenny', '170 hello street', 'A001', 111),
(121211212, 'Nitya', '300 Bath Street', 'A001', 111),
(202002020, 'Heny', '180 mark street', 'A002', 112),
(232322323, 'Eren', '500 Martin', 'A002', 112);

-- --------------------------------------------------------

--
-- Table structure for table `have`
--

CREATE TABLE `have` (
  `C_SSN` int(10) NOT NULL,
  `BankAccountId` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `have`
--

INSERT INTO `have` (`C_SSN`, `BankAccountId`) VALUES
(101011010, '001'),
(121211212, '002'),
(202002020, '003'),
(232322323, '004');

-- --------------------------------------------------------

--
-- Table structure for table `loanaccount`
--

CREATE TABLE `loanaccount` (
  `ACC_UID` varchar(10) NOT NULL,
  `Fixed_Rate` float DEFAULT NULL,
  `L_ID` varchar(10) NOT NULL,
  `Loan_Amount` int(11) DEFAULT NULL,
  `Monthly_Repayment` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loanaccount`
--

INSERT INTO `loanaccount` (`ACC_UID`, `Fixed_Rate`, `L_ID`, `Loan_Amount`, `Monthly_Repayment`) VALUES
('001', 7, '700', 12000, 1038),
('002', 8, '701', 5000, 435),
('003', 4, '702', 7000, 597),
('004', 5, '703', 2000, 178);

-- --------------------------------------------------------

--
-- Table structure for table `moneymarket`
--

CREATE TABLE `moneymarket` (
  `ACCO_UID` varchar(10) NOT NULL,
  `Variable_Rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moneymarket`
--

INSERT INTO `moneymarket` (`ACCO_UID`, `Variable_Rate`) VALUES
('001', 9),
('002', 10),
('003', 11),
('004', 12);

-- --------------------------------------------------------

--
-- Table structure for table `savingsaccount`
--

CREATE TABLE `savingsaccount` (
  `Account_UID` varchar(10) NOT NULL,
  `Fixed_Rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `savingsaccount`
--

INSERT INTO `savingsaccount` (`Account_UID`, `Fixed_Rate`) VALUES
('001', 7),
('002', 8),
('003', 4),
('004', 12);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `Type_Code` varchar(5) NOT NULL,
  `Number` int(10) NOT NULL,
  `Total_Amount` float DEFAULT NULL,
  `Hour` time DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ACC_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`Type_Code`, `Number`, `Total_Amount`, `Hour`, `Date`, `ACC_ID`) VALUES
('C', 1256, 5000, '12:50:20', '2022-06-03', '001'),
('L', 2048, 6000, '12:30:30', '2022-06-06', '002'),
('M', 5055, 2000, '14:50:20', '2022-06-07', '003'),
('S', 5093, 1200, '12:10:50', '2022-06-08', '004');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`A_UID`);

--
-- Indexes for table `bankemployee`
--
ALTER TABLE `bankemployee`
  ADD PRIMARY KEY (`E_SSN`),
  ADD KEY `BankBranchID` (`BankBranchID`),
  ADD KEY `Super_SSN` (`Super_SSN`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BId`);

--
-- Indexes for table `checkingaccount`
--
ALTER TABLE `checkingaccount`
  ADD PRIMARY KEY (`A_UID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_SSN`),
  ADD KEY `Branch_ID` (`Branch_ID`),
  ADD KEY `Employee_ID` (`Employee_ID`);

--
-- Indexes for table `have`
--
ALTER TABLE `have`
  ADD PRIMARY KEY (`C_SSN`),
  ADD KEY `BankAccountId` (`BankAccountId`);

--
-- Indexes for table `loanaccount`
--
ALTER TABLE `loanaccount`
  ADD PRIMARY KEY (`L_ID`),
  ADD KEY `ACC_UID` (`ACC_UID`);

--
-- Indexes for table `moneymarket`
--
ALTER TABLE `moneymarket`
  ADD PRIMARY KEY (`ACCO_UID`);

--
-- Indexes for table `savingsaccount`
--
ALTER TABLE `savingsaccount`
  ADD PRIMARY KEY (`Account_UID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`Number`,`ACC_ID`),
  ADD KEY `ACC_ID` (`ACC_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bankemployee`
--
ALTER TABLE `bankemployee`
  ADD CONSTRAINT `BankBranchID` FOREIGN KEY (`BankBranchID`) REFERENCES `branch` (`BId`),
  ADD CONSTRAINT `Super_SSN` FOREIGN KEY (`Super_SSN`) REFERENCES `bankemployee` (`E_SSN`);

--
-- Constraints for table `checkingaccount`
--
ALTER TABLE `checkingaccount`
  ADD CONSTRAINT `A_UID` FOREIGN KEY (`A_UID`) REFERENCES `account` (`A_UID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `Branch_ID` FOREIGN KEY (`Branch_ID`) REFERENCES `branch` (`BId`),
  ADD CONSTRAINT `Employee_ID` FOREIGN KEY (`Employee_ID`) REFERENCES `bankemployee` (`E_SSN`);

--
-- Constraints for table `have`
--
ALTER TABLE `have`
  ADD CONSTRAINT `BankAccountId` FOREIGN KEY (`BankAccountId`) REFERENCES `account` (`A_UID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `C_SSN` FOREIGN KEY (`C_SSN`) REFERENCES `customer` (`C_SSN`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `loanaccount`
--
ALTER TABLE `loanaccount`
  ADD CONSTRAINT `ACC_UID` FOREIGN KEY (`ACC_UID`) REFERENCES `account` (`A_UID`);

--
-- Constraints for table `moneymarket`
--
ALTER TABLE `moneymarket`
  ADD CONSTRAINT `ACCO_UID` FOREIGN KEY (`ACCO_UID`) REFERENCES `account` (`A_UID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `savingsaccount`
--
ALTER TABLE `savingsaccount`
  ADD CONSTRAINT `Account_UID` FOREIGN KEY (`Account_UID`) REFERENCES `account` (`A_UID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `ACC_ID` FOREIGN KEY (`ACC_ID`) REFERENCES `account` (`A_UID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
