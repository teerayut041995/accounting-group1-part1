-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 05:51 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounting_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_account_number`
--

CREATE TABLE `tb_account_number` (
  `acc_id` int(10) NOT NULL,
  `acc_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `list` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_account_number`
--

INSERT INTO `tb_account_number` (`acc_id`, `acc_number`, `list`) VALUES
(10, '101', 'เงินสด'),
(11, '102', 'เงินฝากธนาคาร'),
(12, '103', 'ลูกหนี้'),
(14, '105', 'วัสดุสำนักงาน'),
(16, '106', 'อุปกรณ์สำนักงาน'),
(18, '104', 'ตั๋วรับเงิน'),
(19, '107', 'เครื่องตกแต่ง'),
(20, '108', 'อาคาร'),
(21, '109', 'ที่ดิน'),
(22, '201', 'เจ้าหนี้'),
(23, '202', 'เงินเบิกเกินบัญชี'),
(24, '203', 'ตั๋วเงินจ่าย'),
(25, '204', 'เงินกู้'),
(26, '301', 'ทุน'),
(27, '302', 'ถอนใช้ส่วนตัว'),
(28, '401', 'รายได้ค่าบริการ'),
(29, '501', 'ค่าเช่า'),
(30, '502', 'ค่าโฆษนา'),
(31, '503', 'ค่าน้ำ ค่าไฟ'),
(32, '504', 'เงินเดือน');

-- --------------------------------------------------------

--
-- Table structure for table `tb_book`
--

CREATE TABLE `tb_book` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `detail` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `acc_id` int(10) DEFAULT '0',
  `cost` decimal(9,2) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_book`
--

INSERT INTO `tb_book` (`id`, `date`, `detail`, `acc_id`, `cost`, `status`) VALUES
(21, '2018-11-01', '', 10, '40000.00', 'debit'),
(22, '2018-11-01', '', 11, '600000.00', 'debit'),
(23, '2018-11-01', '', 16, '50000.00', 'debit'),
(24, '2018-11-01', '', 20, '400000.00', 'debit'),
(25, '2018-11-01', '', 22, '60000.00', 'credit'),
(26, '2018-11-01', '', 26, '490000.00', 'credit'),
(27, '2018-11-01', 'บันทึกการลงทุนของนายนคร', 0, '0.00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_account_number`
--
ALTER TABLE `tb_account_number`
  ADD PRIMARY KEY (`acc_id`),
  ADD UNIQUE KEY `acc_number` (`acc_number`);

--
-- Indexes for table `tb_book`
--
ALTER TABLE `tb_book`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_account_number`
--
ALTER TABLE `tb_account_number`
  MODIFY `acc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_book`
--
ALTER TABLE `tb_book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
