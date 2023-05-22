-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 05:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_login`
--
CREATE DATABASE IF NOT EXISTS `admin_login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin_login`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_data`
--

CREATE TABLE `admin_login_data` (
  `admin_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login_data`
--

INSERT INTO `admin_login_data` (`admin_id`, `password`) VALUES
('admin', 'admin');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"student_login\",\"table\":\"student_login_data\"},{\"db\":\"teachers_database\",\"table\":\"te_attendance_db\"},{\"db\":\"teacher_login\",\"table\":\"teacher_login_data\"},{\"db\":\"teachers_database\",\"table\":\"fe_attendance_db\"},{\"db\":\"teachers_database\",\"table\":\"se_attendance_db\"},{\"db\":\"teachers_database\",\"table\":\"FE_ATTENDANCE_DB\"},{\"db\":\"admin_login\",\"table\":\"admin_login_data\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'student_login', 'student_login_data', '{\"sorted_col\":\"`student_login_data`.`student_id` ASC\"}', '2022-09-17 16:29:31'),
('root', 'teacher_login', 'teacher_login_data', '{\"CREATE_TIME\":\"2022-09-16 23:11:59\",\"col_order\":[0,0,1],\"col_visib\":[0,1,1]}', '2022-09-16 17:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-09-19 14:06:31', '{\"Console\\/Mode\":\"collapse\",\"InsertRows\":4,\"Server\\/hide_db\":\"\",\"Server\\/only_db\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `student_login`
--
CREATE DATABASE IF NOT EXISTS `student_login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student_login`;

-- --------------------------------------------------------

--
-- Table structure for table `student_login_data`
--

CREATE TABLE `student_login_data` (
  `student_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_login_data`
--

INSERT INTO `student_login_data` (`student_id`, `password`, `cpassword`) VALUES
('AJAY ANIL GAIKWAD', '1234', '1234'),
('APRE OMKAR DILIP', '1234', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_login_data`
--
ALTER TABLE `student_login_data`
  ADD KEY `student_id` (`student_id`,`password`,`cpassword`);
--
-- Database: `teacher_login`
--
CREATE DATABASE IF NOT EXISTS `teacher_login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `teacher_login`;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login_data`
--

CREATE TABLE `teacher_login_data` (
  `teacher_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_login_data`
--

INSERT INTO `teacher_login_data` (`teacher_id`, `password`, `cpassword`) VALUES
('nilufar_zaman', '1234', ''),
('roshni pawar', '827ccb0eea8a706c4c34a16891f84e7b', '827ccb0eea8a706c4c34a16891f84e7b'),
('roshni pawar', '12345', '12345');
--
-- Database: `te_attendance_db`
--
CREATE DATABASE IF NOT EXISTS `te_attendance_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `te_attendance_db`;

-- --------------------------------------------------------

--
-- Table structure for table `dbms_attendance_marking_db`
--

CREATE TABLE `dbms_attendance_marking_db` (
  `ROLL_NUMBER` int(255) NOT NULL,
  `STUDENT_NAME` varchar(255) NOT NULL,
  `DATE` varchar(30) NOT NULL,
  `TOTAL` int(255) NOT NULL,
  `ATTENDANCE_PERCENTAGE` float NOT NULL,
  `TOTAL_CLASSES` int(255) NOT NULL,
  `teacher_name` varchar(30) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `presenty` varchar(20) NOT NULL,
  `PRN_NUMBER` varchar(20) NOT NULL,
  `UPDATE_CLASS` int(10) NOT NULL,
  `DATE_OF_SYLLABUS` date NOT NULL,
  `ESTIMATED` varchar(255) NOT NULL,
  `COMPLETED` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbms_attendance_marking_db`
--

INSERT INTO `dbms_attendance_marking_db` (`ROLL_NUMBER`, `STUDENT_NAME`, `DATE`, `TOTAL`, `ATTENDANCE_PERCENTAGE`, `TOTAL_CLASSES`, `teacher_name`, `subject`, `presenty`, `PRN_NUMBER`, `UPDATE_CLASS`, `DATE_OF_SYLLABUS`, `ESTIMATED`, `COMPLETED`) VALUES
(0, '', '', 0, 0, 0, 'roshni pawar', 'DBMS', '', '', 40, '0000-00-00', '', ''),
(1, 'AJAY ANIL GAIKWAD', '2022-11-21', 0, 0, 1, '', '', 'a', '72157089F', 0, '0000-00-00', '', ''),
(2, 'APRE OMKAR DILIP ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157090K', 0, '0000-00-00', '', ''),
(3, 'AWACHAR SNEHAL SUHAS', '2022-11-21', 1, 100, 1, '', '', 'P', '72157091H', 0, '0000-00-00', '', ''),
(4, 'BADE SHRIRAM ANIL', '2022-11-21', 1, 100, 1, '', '', 'P', '72157092F', 0, '0000-00-00', '', ''),
(5, 'BHOJANE APOORVA VASANT', '2022-11-21', 1, 100, 1, '', '', 'P', '72157094B', 0, '0000-00-00', '', ''),
(6, 'BHUTADA UTKARSH HIMANSHU ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157095L', 0, '0000-00-00', '', ''),
(7, 'BIJJARGI MAHESH PANDIT', '2022-11-21', 1, 100, 1, '', '', 'P', '72157096J', 0, '0000-00-00', '', ''),
(8, 'BOBADE ROHAN RAJESH', '2022-11-21', 1, 100, 1, '', '', 'P', '72157097G', 0, '0000-00-00', '', ''),
(9, 'BORATE SHWETA AMBADAS', '2022-11-21', 1, 100, 1, '', '', 'P', '72157098E', 0, '0000-00-00', '', ''),
(10, 'CHAVAN ATHARVA SANJAY', '2022-11-21', 1, 100, 1, '', '', 'P', '72157099C', 0, '0000-00-00', '', ''),
(11, 'CHORDIA NIRAJ RAJESH ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157100L', 0, '0000-00-00', '', ''),
(12, 'CHOUGULE PRIYANKA RAMESH', '2022-11-21', 1, 100, 1, '', '', 'P', '72157102G', 0, '0000-00-00', '', ''),
(13, 'DALVI AKSHAY DEEPAK ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157103E', 0, '0000-00-00', '', ''),
(14, 'DHUMAL TRYAMBAK TANAJI ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157105M', 0, '0000-00-00', '', ''),
(15, 'DNYANESHWAR REDE', '2022-11-21', 1, 100, 1, '', '', 'P', '72157106K', 0, '0000-00-00', '', ''),
(16, 'DONGARE SHRUTI SANJAY', '2022-11-21', 1, 100, 1, '', '', 'P', '72157107H', 0, '0000-00-00', '', ''),
(17, 'GADEKAR ATHARV DATTATRAY ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157108F', 0, '0000-00-00', '', ''),
(18, 'GANGADHAR ISHWARI MANOJ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157109D', 0, '0000-00-00', '', ''),
(19, 'HARSHIT SUDHIR KADAM ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157110H', 0, '0000-00-00', '', ''),
(20, 'JADHAV KESHAV SURESH', '2022-11-21', 1, 100, 1, '', '', 'P', '72157113B', 0, '0000-00-00', '', ''),
(21, 'JADHAV SAMEER RAJENDRA', '2022-11-21', 1, 100, 1, '', '', 'P', '72157114L', 0, '0000-00-00', '', ''),
(22, 'JADHAV SAMPADA DHANANJAY', '2022-11-21', 1, 100, 1, '', '', 'P', '72157115J', 0, '0000-00-00', '', ''),
(23, 'JAIN ANISH PRAKASH', '2022-11-21', 1, 100, 1, '', '', 'P', '72157116G', 0, '0000-00-00', '', ''),
(24, 'JAMADAR OMER SAMEER', '2022-11-21', 1, 100, 1, '', '', 'P', '72157088H', 0, '0000-00-00', '', ''),
(25, 'JAMBHALE AMIT VILAS ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157117E', 0, '0000-00-00', '', ''),
(26, 'JANOLKAR SAHIL PRASHANT', '2022-11-21', 1, 100, 1, '', '', 'P', '72157118C', 0, '0000-00-00', '', ''),
(27, 'JANWADKAR ARSHIYA BEGAM MD ASHFAQUE ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157119M', 0, '0000-00-00', '', ''),
(28, 'JOSHI NITYAM PRAFUL', '2022-11-21', 1, 100, 1, '', '', 'P', '72157120E', 0, '0000-00-00', '', ''),
(29, 'JOSHI PRATHAMESH RAJENDRA', '2022-11-21', 1, 100, 1, '', '', 'P', '72157121C', 0, '0000-00-00', '', ''),
(30, 'KHADSE ANJALI ANIL', '2022-11-21', 0, 0, 1, '', '', '', '72157123K', 0, '0000-00-00', '', ''),
(31, 'KHAIRE PRATIKSHA SANDIP', '2022-11-21', 1, 100, 1, '', '', 'P', '72157124H', 0, '0000-00-00', '', ''),
(32, 'KSHIRSAGAR SIDDHI SATISH', '2022-11-21', 1, 100, 1, '', '', 'P', '72157125F', 0, '0000-00-00', '', ''),
(33, 'LONDHE OMKAR DATTATRAYA', '2022-11-21', 1, 100, 1, '', '', 'P', '72157132J', 0, '0000-00-00', '', ''),
(34, 'MADKE ATHRAVA MILIND ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157127B', 0, '0000-00-00', '', ''),
(35, 'MANER TAMANNA FAROOK ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157128L', 0, '0000-00-00', '', ''),
(36, 'NIKITA SANTOSH DHULE', '2022-11-21', 1, 100, 1, '', '', 'P', '72157131L', 0, '0000-00-00', '', ''),
(37, 'PALVE HARISH RAMDAS', '2022-11-21', 1, 100, 1, '', '', 'P', '72157134E', 0, '0000-00-00', '', ''),
(38, 'PATEL AZIMUDDIN BAKSHUDDIN ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157136M', 0, '0000-00-00', '', ''),
(39, 'PATHA RAJENDRA POLURAJU', '2022-11-21', 1, 100, 1, '', '', 'P', '72157137K', 0, '0000-00-00', '', ''),
(40, 'PATIL YASHASHRI UDAYKUMAR', '2022-11-21', 1, 100, 1, '', '', 'P', '72157139F', 0, '0000-00-00', '', ''),
(41, 'PHALKE ABHISHEK ARUN ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157141H', 0, '0000-00-00', '', ''),
(42, 'POLEKAR ROHAN SANJAY', '2022-11-21', 1, 100, 1, '', '', 'P', '72157142F', 0, '0000-00-00', '', ''),
(43, 'RATHOD AKSHAY VITTHAL', '2022-11-21', 1, 100, 1, '', '', 'P', '72157144B', 0, '0000-00-00', '', ''),
(44, 'ROKADE OMKAR JITENDRA', '2022-11-21', 1, 100, 1, '', '', 'P', '72157147G', 0, '0000-00-00', '', ''),
(45, 'SAGAR VAIBHAV SUDHIR', '2022-11-21', 1, 100, 1, '', '', 'P', '72157149C', 0, '0000-00-00', '', ''),
(46, 'SAKHARE RUTUJA BHAUSAHEB ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157150G', 0, '0000-00-00', '', ''),
(47, 'SHAH ADITYA HIREN', '2022-11-21', 1, 100, 1, '', '', 'P', '72157153M', 0, '0000-00-00', '', ''),
(48, 'SHAIKH ALSHIFA SHAFIK', '2022-11-21', 1, 100, 1, '', '', 'P', '72157154K', 0, '0000-00-00', '', ''),
(49, 'SHAIKH REHAN MUBIN', '2022-11-21', 1, 100, 1, '', '', 'P', '72157145L', 0, '0000-00-00', '', ''),
(50, 'SHAIKH SAMEER BABA', '2022-11-21', 1, 100, 1, '', '', 'P', '72157155H', 0, '0000-00-00', '', ''),
(51, 'SHAIKH SINAAN KHALID', '2022-11-21', 1, 100, 1, '', '', 'P', '72157156F', 0, '0000-00-00', '', ''),
(52, 'SHARMA SIDDHARTH RAJENDRA', '2022-11-21', 1, 100, 1, '', '', 'P', '72157157D', 0, '0000-00-00', '', ''),
(53, 'SHELKE SUBODH VINAYAK', '2022-11-21', 1, 100, 1, '', '', 'P', '72157158B', 0, '0000-00-00', '', ''),
(54, 'SHERLA RUTUJA ANIL', '2022-11-21', 1, 100, 1, '', '', 'P', '72157159L', 0, '0000-00-00', '', ''),
(55, 'SHINDE PRATHAM VIVEK', '2022-11-21', 1, 100, 1, '', '', 'P', '72157160D', 0, '0000-00-00', '', ''),
(56, 'SHUBHAM RAJ', '2022-11-21', 1, 100, 1, '', '', 'P', '72157162L', 0, '0000-00-00', '', ''),
(57, 'SONAWANE PRAJWAL PRASHANT', '2022-11-21', 1, 100, 1, '', '', 'P', '72157165E', 0, '0000-00-00', '', ''),
(58, '0', '2022-11-21', 1, 100, 1, '', '', 'P', '1', 0, '0000-00-00', '', ''),
(59, 'SWAMI PRANAV PRASHANT', '2022-11-21', 1, 100, 1, '', '', 'P', '72157168K', 0, '0000-00-00', '', ''),
(60, 'SWAMI RUSHIKESH DAYANAND', '2022-11-21', 1, 100, 1, '', '', 'P', '72157169H', 0, '0000-00-00', '', ''),
(61, 'TARATE ROHIT DATTATRAY', '2022-11-21', 1, 100, 1, '', '', 'P', '72157172H', 0, '0000-00-00', '', ''),
(62, 'TIKONE ATHRAVA PANDURANG', '2022-11-21', 1, 100, 1, '', '', 'P', '72157173F', 0, '0000-00-00', '', ''),
(63, 'WALUNJKAR YASH DATTATRAY', '2022-11-21', 1, 100, 1, '', '', 'P', '72157175B', 0, '0000-00-00', '', ''),
(64, 'WAVHAL PRATIK BALASAHEB', '2022-11-21', 1, 100, 1, '', '', 'P', '72157176L', 0, '0000-00-00', '', ''),
(65, 'KHOPADE RUTURAJ VIJAY', '2022-11-21', 1, 100, 1, '', '', 'P', '71920368G', 0, '0000-00-00', '', ''),
(66, 'SUPEKAR SAYALI RAJU', '2022-11-21', 1, 100, 1, '', '', 'P', '72034905C', 0, '0000-00-00', '', ''),
(67, 'LAMJE RAMCHANDRA MAYUR', '2022-11-21', 1, 100, 1, '', '', 'P', '72157129J', 0, '0000-00-00', '', ''),
(68, 'SAGAR S DAHIFALE', '2022-11-21', 1, 100, 1, '', '', 'P', '72157148E', 0, '0000-00-00', '', ''),
(69, 'BEDMUTHA MITALI MAHAVIR', '2022-11-21', 1, 100, 1, '', '', 'P', '72157093D', 0, '0000-00-00', '', ''),
(70, 'PANDIT RAHUL BHOLA', '2022-11-21', 1, 100, 1, '', '', 'P', '72157135C', 0, '0000-00-00', '', ''),
(71, 'BATTUL ADITYA SATISH', '2022-11-21', 1, 100, 1, '', '', 'P', '72214540D', 0, '0000-00-00', '', ''),
(72, 'DHAYGUDE KISHOR DILIP', '2022-11-21', 1, 100, 1, '', '', 'P', '72214541B', 0, '0000-00-00', '', ''),
(73, 'KELGANDRE AISHWARYA SANJAY', '2022-11-21', 1, 100, 1, '', '', 'P', '72214542L', 0, '0000-00-00', '', ''),
(74, 'KHADUL OMKAR SANJAY', '2022-11-21', 1, 100, 1, '', '', 'P', '7221453J', 0, '0000-00-00', '', ''),
(75, 'KURHADE PRITI RAJENDRA ', '2022-11-21', 1, 100, 1, '', '', 'P', '72214538B', 0, '0000-00-00', '', ''),
(76, 'PATIL MAMTA DINKAR', '2022-11-21', 1, 100, 1, '', '', 'P', '72214544G', 0, '0000-00-00', '', ''),
(77, 'SATALKAR GAURI NAVNATH', '2022-11-21', 1, 100, 1, '', '', 'P', '72214545E', 0, '0000-00-00', '', ''),
(78, 'SHIRASKAR ISHA RAHUL', '2022-11-21', 1, 100, 1, '', '', 'P', '72214546C', 0, '0000-00-00', '', ''),
(79, 'ALEENA HANIF BAGWAN', '2022-11-21', 0, 0, 1, '', '', '', '72214539L', 0, '0000-00-00', '', ''),
(1, 'AJAY ANIL GAIKWAD', '2022-11-20', 0, 0, 2, '', '', 'a', '72157089F', 0, '0000-00-00', '', ''),
(2, 'APRE OMKAR DILIP ', '2022-11-20', 1, 50, 2, '', '', 'a', '72157090K', 0, '0000-00-00', '', ''),
(3, 'AWACHAR SNEHAL SUHAS', '2022-11-20', 2, 100, 2, '', '', 'P', '72157091H', 0, '0000-00-00', '', ''),
(4, 'BADE SHRIRAM ANIL', '2022-11-20', 2, 100, 2, '', '', 'P', '72157092F', 0, '0000-00-00', '', ''),
(5, 'BHOJANE APOORVA VASANT', '2022-11-20', 2, 100, 2, '', '', 'P', '72157094B', 0, '0000-00-00', '', ''),
(6, 'BHUTADA UTKARSH HIMANSHU ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157095L', 0, '0000-00-00', '', ''),
(7, 'BIJJARGI MAHESH PANDIT', '2022-11-20', 2, 100, 2, '', '', 'P', '72157096J', 0, '0000-00-00', '', ''),
(8, 'BOBADE ROHAN RAJESH', '2022-11-20', 2, 100, 2, '', '', 'P', '72157097G', 0, '0000-00-00', '', ''),
(9, 'BORATE SHWETA AMBADAS', '2022-11-20', 2, 100, 2, '', '', 'P', '72157098E', 0, '0000-00-00', '', ''),
(10, 'CHAVAN ATHARVA SANJAY', '2022-11-20', 2, 100, 2, '', '', 'P', '72157099C', 0, '0000-00-00', '', ''),
(11, 'CHORDIA NIRAJ RAJESH ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157100L', 0, '0000-00-00', '', ''),
(12, 'CHOUGULE PRIYANKA RAMESH', '2022-11-20', 2, 100, 2, '', '', 'P', '72157102G', 0, '0000-00-00', '', ''),
(13, 'DALVI AKSHAY DEEPAK ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157103E', 0, '0000-00-00', '', ''),
(14, 'DHUMAL TRYAMBAK TANAJI ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157105M', 0, '0000-00-00', '', ''),
(15, 'DNYANESHWAR REDE', '2022-11-20', 2, 100, 2, '', '', 'P', '72157106K', 0, '0000-00-00', '', ''),
(16, 'DONGARE SHRUTI SANJAY', '2022-11-20', 2, 100, 2, '', '', 'P', '72157107H', 0, '0000-00-00', '', ''),
(17, 'GADEKAR ATHARV DATTATRAY ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157108F', 0, '0000-00-00', '', ''),
(18, 'GANGADHAR ISHWARI MANOJ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157109D', 0, '0000-00-00', '', ''),
(19, 'HARSHIT SUDHIR KADAM ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157110H', 0, '0000-00-00', '', ''),
(20, 'JADHAV KESHAV SURESH', '2022-11-20', 2, 100, 2, '', '', 'P', '72157113B', 0, '0000-00-00', '', ''),
(21, 'JADHAV SAMEER RAJENDRA', '2022-11-20', 2, 100, 2, '', '', 'P', '72157114L', 0, '0000-00-00', '', ''),
(22, 'JADHAV SAMPADA DHANANJAY', '2022-11-20', 2, 100, 2, '', '', 'P', '72157115J', 0, '0000-00-00', '', ''),
(23, 'JAIN ANISH PRAKASH', '2022-11-20', 2, 100, 2, '', '', 'P', '72157116G', 0, '0000-00-00', '', ''),
(24, 'JAMADAR OMER SAMEER', '2022-11-20', 2, 100, 2, '', '', 'P', '72157088H', 0, '0000-00-00', '', ''),
(25, 'JAMBHALE AMIT VILAS ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157117E', 0, '0000-00-00', '', ''),
(26, 'JANOLKAR SAHIL PRASHANT', '2022-11-20', 2, 100, 2, '', '', 'P', '72157118C', 0, '0000-00-00', '', ''),
(27, 'JANWADKAR ARSHIYA BEGAM MD ASHFAQUE ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157119M', 0, '0000-00-00', '', ''),
(28, 'JOSHI NITYAM PRAFUL', '2022-11-20', 2, 100, 2, '', '', 'P', '72157120E', 0, '0000-00-00', '', ''),
(29, 'JOSHI PRATHAMESH RAJENDRA', '2022-11-20', 2, 100, 2, '', '', 'P', '72157121C', 0, '0000-00-00', '', ''),
(30, 'KHADSE ANJALI ANIL', '2022-11-20', 1, 50, 2, '', '', 'P', '72157123K', 0, '0000-00-00', '', ''),
(31, 'KHAIRE PRATIKSHA SANDIP', '2022-11-20', 2, 100, 2, '', '', 'P', '72157124H', 0, '0000-00-00', '', ''),
(32, 'KSHIRSAGAR SIDDHI SATISH', '2022-11-20', 2, 100, 2, '', '', 'P', '72157125F', 0, '0000-00-00', '', ''),
(33, 'LONDHE OMKAR DATTATRAYA', '2022-11-20', 2, 100, 2, '', '', 'P', '72157132J', 0, '0000-00-00', '', ''),
(34, 'MADKE ATHRAVA MILIND ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157127B', 0, '0000-00-00', '', ''),
(35, 'MANER TAMANNA FAROOK ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157128L', 0, '0000-00-00', '', ''),
(36, 'NIKITA SANTOSH DHULE', '2022-11-20', 2, 100, 2, '', '', 'P', '72157131L', 0, '0000-00-00', '', ''),
(37, 'PALVE HARISH RAMDAS', '2022-11-20', 2, 100, 2, '', '', 'P', '72157134E', 0, '0000-00-00', '', ''),
(38, 'PATEL AZIMUDDIN BAKSHUDDIN ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157136M', 0, '0000-00-00', '', ''),
(39, 'PATHA RAJENDRA POLURAJU', '2022-11-20', 2, 100, 2, '', '', 'P', '72157137K', 0, '0000-00-00', '', ''),
(40, 'PATIL YASHASHRI UDAYKUMAR', '2022-11-20', 2, 100, 2, '', '', 'P', '72157139F', 0, '0000-00-00', '', ''),
(41, 'PHALKE ABHISHEK ARUN ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157141H', 0, '0000-00-00', '', ''),
(42, 'POLEKAR ROHAN SANJAY', '2022-11-20', 2, 100, 2, '', '', 'P', '72157142F', 0, '0000-00-00', '', ''),
(43, 'RATHOD AKSHAY VITTHAL', '2022-11-20', 2, 100, 2, '', '', 'P', '72157144B', 0, '0000-00-00', '', ''),
(44, 'ROKADE OMKAR JITENDRA', '2022-11-20', 2, 100, 2, '', '', 'P', '72157147G', 0, '0000-00-00', '', ''),
(45, 'SAGAR VAIBHAV SUDHIR', '2022-11-20', 2, 100, 2, '', '', 'P', '72157149C', 0, '0000-00-00', '', ''),
(46, 'SAKHARE RUTUJA BHAUSAHEB ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157150G', 0, '0000-00-00', '', ''),
(47, 'SHAH ADITYA HIREN', '2022-11-20', 2, 100, 2, '', '', 'P', '72157153M', 0, '0000-00-00', '', ''),
(48, 'SHAIKH ALSHIFA SHAFIK', '2022-11-20', 2, 100, 2, '', '', 'P', '72157154K', 0, '0000-00-00', '', ''),
(49, 'SHAIKH REHAN MUBIN', '2022-11-20', 2, 100, 2, '', '', 'P', '72157145L', 0, '0000-00-00', '', ''),
(50, 'SHAIKH SAMEER BABA', '2022-11-20', 2, 100, 2, '', '', 'P', '72157155H', 0, '0000-00-00', '', ''),
(51, 'SHAIKH SINAAN KHALID', '2022-11-20', 2, 100, 2, '', '', 'P', '72157156F', 0, '0000-00-00', '', ''),
(52, 'SHARMA SIDDHARTH RAJENDRA', '2022-11-20', 2, 100, 2, '', '', 'P', '72157157D', 0, '0000-00-00', '', ''),
(53, 'SHELKE SUBODH VINAYAK', '2022-11-20', 2, 100, 2, '', '', 'P', '72157158B', 0, '0000-00-00', '', ''),
(54, 'SHERLA RUTUJA ANIL', '2022-11-20', 2, 100, 2, '', '', 'P', '72157159L', 0, '0000-00-00', '', ''),
(55, 'SHINDE PRATHAM VIVEK', '2022-11-20', 2, 100, 2, '', '', 'P', '72157160D', 0, '0000-00-00', '', ''),
(56, 'SHUBHAM RAJ', '2022-11-20', 2, 100, 2, '', '', 'P', '72157162L', 0, '0000-00-00', '', ''),
(57, 'SONAWANE PRAJWAL PRASHANT', '2022-11-20', 2, 100, 2, '', '', 'P', '72157165E', 0, '0000-00-00', '', ''),
(58, '0', '2022-11-20', 2, 100, 2, '', '', 'P', '1', 0, '0000-00-00', '', ''),
(59, 'SWAMI PRANAV PRASHANT', '2022-11-20', 2, 100, 2, '', '', 'P', '72157168K', 0, '0000-00-00', '', ''),
(60, 'SWAMI RUSHIKESH DAYANAND', '2022-11-20', 2, 100, 2, '', '', 'P', '72157169H', 0, '0000-00-00', '', ''),
(61, 'TARATE ROHIT DATTATRAY', '2022-11-20', 2, 100, 2, '', '', 'P', '72157172H', 0, '0000-00-00', '', ''),
(62, 'TIKONE ATHRAVA PANDURANG', '2022-11-20', 2, 100, 2, '', '', 'P', '72157173F', 0, '0000-00-00', '', ''),
(63, 'WALUNJKAR YASH DATTATRAY', '2022-11-20', 2, 100, 2, '', '', 'P', '72157175B', 0, '0000-00-00', '', ''),
(64, 'WAVHAL PRATIK BALASAHEB', '2022-11-20', 2, 100, 2, '', '', 'P', '72157176L', 0, '0000-00-00', '', ''),
(65, 'KHOPADE RUTURAJ VIJAY', '2022-11-20', 2, 100, 2, '', '', 'P', '71920368G', 0, '0000-00-00', '', ''),
(66, 'SUPEKAR SAYALI RAJU', '2022-11-20', 2, 100, 2, '', '', 'P', '72034905C', 0, '0000-00-00', '', ''),
(67, 'LAMJE RAMCHANDRA MAYUR', '2022-11-20', 2, 100, 2, '', '', 'P', '72157129J', 0, '0000-00-00', '', ''),
(68, 'SAGAR S DAHIFALE', '2022-11-20', 2, 100, 2, '', '', 'P', '72157148E', 0, '0000-00-00', '', ''),
(69, 'BEDMUTHA MITALI MAHAVIR', '2022-11-20', 2, 100, 2, '', '', 'P', '72157093D', 0, '0000-00-00', '', ''),
(70, 'PANDIT RAHUL BHOLA', '2022-11-20', 2, 100, 2, '', '', 'P', '72157135C', 0, '0000-00-00', '', ''),
(71, 'BATTUL ADITYA SATISH', '2022-11-20', 2, 100, 2, '', '', 'P', '72214540D', 0, '0000-00-00', '', ''),
(72, 'DHAYGUDE KISHOR DILIP', '2022-11-20', 2, 100, 2, '', '', 'P', '72214541B', 0, '0000-00-00', '', ''),
(73, 'KELGANDRE AISHWARYA SANJAY', '2022-11-20', 2, 100, 2, '', '', 'P', '72214542L', 0, '0000-00-00', '', ''),
(74, 'KHADUL OMKAR SANJAY', '2022-11-20', 2, 100, 2, '', '', 'P', '7221453J', 0, '0000-00-00', '', ''),
(75, 'KURHADE PRITI RAJENDRA ', '2022-11-20', 2, 100, 2, '', '', 'P', '72214538B', 0, '0000-00-00', '', ''),
(76, 'PATIL MAMTA DINKAR', '2022-11-20', 2, 100, 2, '', '', 'P', '72214544G', 0, '0000-00-00', '', ''),
(77, 'SATALKAR GAURI NAVNATH', '2022-11-20', 2, 100, 2, '', '', 'P', '72214545E', 0, '0000-00-00', '', ''),
(78, 'SHIRASKAR ISHA RAHUL', '2022-11-20', 2, 100, 2, '', '', 'P', '72214546C', 0, '0000-00-00', '', ''),
(79, 'ALEENA HANIF BAGWAN', '2022-11-20', 1, 50, 2, '', '', 'P', '72214539L', 0, '0000-00-00', '', ''),
(1, 'AJAY ANIL GAIKWAD', '2022-11-21', 0, 0, 3, '', '', 'a', '72157089F', 0, '0000-00-00', '', ''),
(2, 'APRE OMKAR DILIP ', '2022-11-21', 2, 66.6667, 3, '', '', 'P', '72157090K', 0, '0000-00-00', '', ''),
(3, 'AWACHAR SNEHAL SUHAS', '2022-11-21', 3, 100, 3, '', '', 'P', '72157091H', 0, '0000-00-00', '', ''),
(4, 'BADE SHRIRAM ANIL', '2022-11-21', 3, 100, 3, '', '', 'P', '72157092F', 0, '0000-00-00', '', ''),
(5, 'BHOJANE APOORVA VASANT', '2022-11-21', 3, 100, 3, '', '', 'P', '72157094B', 0, '0000-00-00', '', ''),
(6, 'BHUTADA UTKARSH HIMANSHU ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157095L', 0, '0000-00-00', '', ''),
(7, 'BIJJARGI MAHESH PANDIT', '2022-11-21', 3, 100, 3, '', '', 'P', '72157096J', 0, '0000-00-00', '', ''),
(8, 'BOBADE ROHAN RAJESH', '2022-11-21', 3, 100, 3, '', '', 'P', '72157097G', 0, '0000-00-00', '', ''),
(9, 'BORATE SHWETA AMBADAS', '2022-11-21', 3, 100, 3, '', '', 'P', '72157098E', 0, '0000-00-00', '', ''),
(10, 'CHAVAN ATHARVA SANJAY', '2022-11-21', 3, 100, 3, '', '', 'P', '72157099C', 0, '0000-00-00', '', ''),
(11, 'CHORDIA NIRAJ RAJESH ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157100L', 0, '0000-00-00', '', ''),
(12, 'CHOUGULE PRIYANKA RAMESH', '2022-11-21', 3, 100, 3, '', '', 'P', '72157102G', 0, '0000-00-00', '', ''),
(13, 'DALVI AKSHAY DEEPAK ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157103E', 0, '0000-00-00', '', ''),
(14, 'DHUMAL TRYAMBAK TANAJI ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157105M', 0, '0000-00-00', '', ''),
(15, 'DNYANESHWAR REDE', '2022-11-21', 3, 100, 3, '', '', 'P', '72157106K', 0, '0000-00-00', '', ''),
(16, 'DONGARE SHRUTI SANJAY', '2022-11-21', 3, 100, 3, '', '', 'P', '72157107H', 0, '0000-00-00', '', ''),
(17, 'GADEKAR ATHARV DATTATRAY ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157108F', 0, '0000-00-00', '', ''),
(18, 'GANGADHAR ISHWARI MANOJ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157109D', 0, '0000-00-00', '', ''),
(19, 'HARSHIT SUDHIR KADAM ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157110H', 0, '0000-00-00', '', ''),
(20, 'JADHAV KESHAV SURESH', '2022-11-21', 3, 100, 3, '', '', 'P', '72157113B', 0, '0000-00-00', '', ''),
(21, 'JADHAV SAMEER RAJENDRA', '2022-11-21', 3, 100, 3, '', '', 'P', '72157114L', 0, '0000-00-00', '', ''),
(22, 'JADHAV SAMPADA DHANANJAY', '2022-11-21', 3, 100, 3, '', '', 'P', '72157115J', 0, '0000-00-00', '', ''),
(23, 'JAIN ANISH PRAKASH', '2022-11-21', 3, 100, 3, '', '', 'P', '72157116G', 0, '0000-00-00', '', ''),
(24, 'JAMADAR OMER SAMEER', '2022-11-21', 3, 100, 3, '', '', 'P', '72157088H', 0, '0000-00-00', '', ''),
(25, 'JAMBHALE AMIT VILAS ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157117E', 0, '0000-00-00', '', ''),
(26, 'JANOLKAR SAHIL PRASHANT', '2022-11-21', 3, 100, 3, '', '', 'P', '72157118C', 0, '0000-00-00', '', ''),
(27, 'JANWADKAR ARSHIYA BEGAM MD ASHFAQUE ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157119M', 0, '0000-00-00', '', ''),
(28, 'JOSHI NITYAM PRAFUL', '2022-11-21', 3, 100, 3, '', '', 'P', '72157120E', 0, '0000-00-00', '', ''),
(29, 'JOSHI PRATHAMESH RAJENDRA', '2022-11-21', 3, 100, 3, '', '', 'P', '72157121C', 0, '0000-00-00', '', ''),
(30, 'KHADSE ANJALI ANIL', '2022-11-21', 2, 66.6667, 3, '', '', 'P', '72157123K', 0, '0000-00-00', '', ''),
(31, 'KHAIRE PRATIKSHA SANDIP', '2022-11-21', 3, 100, 3, '', '', 'P', '72157124H', 0, '0000-00-00', '', ''),
(32, 'KSHIRSAGAR SIDDHI SATISH', '2022-11-21', 3, 100, 3, '', '', 'P', '72157125F', 0, '0000-00-00', '', ''),
(33, 'LONDHE OMKAR DATTATRAYA', '2022-11-21', 3, 100, 3, '', '', 'P', '72157132J', 0, '0000-00-00', '', ''),
(34, 'MADKE ATHRAVA MILIND ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157127B', 0, '0000-00-00', '', ''),
(35, 'MANER TAMANNA FAROOK ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157128L', 0, '0000-00-00', '', ''),
(36, 'NIKITA SANTOSH DHULE', '2022-11-21', 3, 100, 3, '', '', 'P', '72157131L', 0, '0000-00-00', '', ''),
(37, 'PALVE HARISH RAMDAS', '2022-11-21', 3, 100, 3, '', '', 'P', '72157134E', 0, '0000-00-00', '', ''),
(38, 'PATEL AZIMUDDIN BAKSHUDDIN ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157136M', 0, '0000-00-00', '', ''),
(39, 'PATHA RAJENDRA POLURAJU', '2022-11-21', 3, 100, 3, '', '', 'P', '72157137K', 0, '0000-00-00', '', ''),
(40, 'PATIL YASHASHRI UDAYKUMAR', '2022-11-21', 3, 100, 3, '', '', 'P', '72157139F', 0, '0000-00-00', '', ''),
(41, 'PHALKE ABHISHEK ARUN ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157141H', 0, '0000-00-00', '', ''),
(42, 'POLEKAR ROHAN SANJAY', '2022-11-21', 3, 100, 3, '', '', 'P', '72157142F', 0, '0000-00-00', '', ''),
(43, 'RATHOD AKSHAY VITTHAL', '2022-11-21', 3, 100, 3, '', '', 'P', '72157144B', 0, '0000-00-00', '', ''),
(44, 'ROKADE OMKAR JITENDRA', '2022-11-21', 3, 100, 3, '', '', 'P', '72157147G', 0, '0000-00-00', '', ''),
(45, 'SAGAR VAIBHAV SUDHIR', '2022-11-21', 3, 100, 3, '', '', 'P', '72157149C', 0, '0000-00-00', '', ''),
(46, 'SAKHARE RUTUJA BHAUSAHEB ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157150G', 0, '0000-00-00', '', ''),
(47, 'SHAH ADITYA HIREN', '2022-11-21', 3, 100, 3, '', '', 'P', '72157153M', 0, '0000-00-00', '', ''),
(48, 'SHAIKH ALSHIFA SHAFIK', '2022-11-21', 3, 100, 3, '', '', 'P', '72157154K', 0, '0000-00-00', '', ''),
(49, 'SHAIKH REHAN MUBIN', '2022-11-21', 3, 100, 3, '', '', 'P', '72157145L', 0, '0000-00-00', '', ''),
(50, 'SHAIKH SAMEER BABA', '2022-11-21', 3, 100, 3, '', '', 'P', '72157155H', 0, '0000-00-00', '', ''),
(51, 'SHAIKH SINAAN KHALID', '2022-11-21', 3, 100, 3, '', '', 'P', '72157156F', 0, '0000-00-00', '', ''),
(52, 'SHARMA SIDDHARTH RAJENDRA', '2022-11-21', 3, 100, 3, '', '', 'P', '72157157D', 0, '0000-00-00', '', ''),
(53, 'SHELKE SUBODH VINAYAK', '2022-11-21', 3, 100, 3, '', '', 'P', '72157158B', 0, '0000-00-00', '', ''),
(54, 'SHERLA RUTUJA ANIL', '2022-11-21', 3, 100, 3, '', '', 'P', '72157159L', 0, '0000-00-00', '', ''),
(55, 'SHINDE PRATHAM VIVEK', '2022-11-21', 3, 100, 3, '', '', 'P', '72157160D', 0, '0000-00-00', '', ''),
(56, 'SHUBHAM RAJ', '2022-11-21', 3, 100, 3, '', '', 'P', '72157162L', 0, '0000-00-00', '', ''),
(57, 'SONAWANE PRAJWAL PRASHANT', '2022-11-21', 3, 100, 3, '', '', 'P', '72157165E', 0, '0000-00-00', '', ''),
(58, '0', '2022-11-21', 3, 100, 3, '', '', 'P', '1', 0, '0000-00-00', '', ''),
(59, 'SWAMI PRANAV PRASHANT', '2022-11-21', 3, 100, 3, '', '', 'P', '72157168K', 0, '0000-00-00', '', ''),
(60, 'SWAMI RUSHIKESH DAYANAND', '2022-11-21', 3, 100, 3, '', '', 'P', '72157169H', 0, '0000-00-00', '', ''),
(61, 'TARATE ROHIT DATTATRAY', '2022-11-21', 3, 100, 3, '', '', 'P', '72157172H', 0, '0000-00-00', '', ''),
(62, 'TIKONE ATHRAVA PANDURANG', '2022-11-21', 3, 100, 3, '', '', 'P', '72157173F', 0, '0000-00-00', '', ''),
(63, 'WALUNJKAR YASH DATTATRAY', '2022-11-21', 3, 100, 3, '', '', 'P', '72157175B', 0, '0000-00-00', '', ''),
(64, 'WAVHAL PRATIK BALASAHEB', '2022-11-21', 3, 100, 3, '', '', 'P', '72157176L', 0, '0000-00-00', '', ''),
(65, 'KHOPADE RUTURAJ VIJAY', '2022-11-21', 3, 100, 3, '', '', 'P', '71920368G', 0, '0000-00-00', '', ''),
(66, 'SUPEKAR SAYALI RAJU', '2022-11-21', 3, 100, 3, '', '', 'P', '72034905C', 0, '0000-00-00', '', ''),
(67, 'LAMJE RAMCHANDRA MAYUR', '2022-11-21', 3, 100, 3, '', '', 'P', '72157129J', 0, '0000-00-00', '', ''),
(68, 'SAGAR S DAHIFALE', '2022-11-21', 3, 100, 3, '', '', 'P', '72157148E', 0, '0000-00-00', '', ''),
(69, 'BEDMUTHA MITALI MAHAVIR', '2022-11-21', 3, 100, 3, '', '', 'P', '72157093D', 0, '0000-00-00', '', ''),
(70, 'PANDIT RAHUL BHOLA', '2022-11-21', 3, 100, 3, '', '', 'P', '72157135C', 0, '0000-00-00', '', ''),
(71, 'BATTUL ADITYA SATISH', '2022-11-21', 3, 100, 3, '', '', 'P', '72214540D', 0, '0000-00-00', '', ''),
(72, 'DHAYGUDE KISHOR DILIP', '2022-11-21', 3, 100, 3, '', '', 'P', '72214541B', 0, '0000-00-00', '', ''),
(73, 'KELGANDRE AISHWARYA SANJAY', '2022-11-21', 3, 100, 3, '', '', 'P', '72214542L', 0, '0000-00-00', '', ''),
(74, 'KHADUL OMKAR SANJAY', '2022-11-21', 3, 100, 3, '', '', 'P', '7221453J', 0, '0000-00-00', '', ''),
(75, 'KURHADE PRITI RAJENDRA ', '2022-11-21', 3, 100, 3, '', '', 'P', '72214538B', 0, '0000-00-00', '', ''),
(76, 'PATIL MAMTA DINKAR', '2022-11-21', 3, 100, 3, '', '', 'P', '72214544G', 0, '0000-00-00', '', ''),
(77, 'SATALKAR GAURI NAVNATH', '2022-11-21', 3, 100, 3, '', '', 'P', '72214545E', 0, '0000-00-00', '', ''),
(78, 'SHIRASKAR ISHA RAHUL', '2022-11-21', 3, 100, 3, '', '', 'P', '72214546C', 0, '0000-00-00', '', ''),
(79, 'ALEENA HANIF BAGWAN', '2022-11-21', 2, 66.6667, 3, '', '', 'P', '72214539L', 0, '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dbms_marks_marking`
--

CREATE TABLE `dbms_marks_marking` (
  `ROLL_NUMBER` int(3) NOT NULL,
  `STUDENT_NAME` varchar(255) NOT NULL,
  `UT1` int(10) NOT NULL,
  `UT2` int(10) NOT NULL,
  `INSEM` int(10) NOT NULL,
  `ORAL` int(10) NOT NULL,
  `PRACTICAL` int(10) NOT NULL,
  `TW` int(10) NOT NULL,
  `teacher_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbms_marks_marking`
--

INSERT INTO `dbms_marks_marking` (`ROLL_NUMBER`, `STUDENT_NAME`, `UT1`, `UT2`, `INSEM`, `ORAL`, `PRACTICAL`, `TW`, `teacher_name`) VALUES
(0, '0', 0, 0, 0, 0, 0, 0, 'roshni pawar'),
(1, 'AJAY ANIL GAIKWAD', 11, 12, 13, 7, 8, 10, ''),
(2, 'APRE OMKAR DILIP ', 0, 0, 0, 0, 0, 0, ''),
(3, 'AWACHAR SNEHAL SUHAS', 0, 0, 0, 0, 0, 0, ''),
(4, 'BADE SHRIRAM ANIL', 0, 0, 0, 0, 0, 0, ''),
(5, 'BHOJANE APOORVA VASANT', 0, 0, 0, 0, 0, 0, ''),
(6, 'BHUTADA UTKARSH HIMANSHU ', 0, 0, 0, 0, 0, 0, ''),
(7, 'BIJJARGI MAHESH PANDIT', 0, 0, 0, 0, 0, 0, ''),
(8, 'BOBADE ROHAN RAJESH', 0, 0, 0, 0, 0, 0, ''),
(9, 'BORATE SHWETA AMBADAS', 0, 0, 0, 0, 0, 0, ''),
(10, 'CHAVAN ATHARVA SANJAY', 0, 0, 0, 0, 0, 0, ''),
(11, 'CHORDIA NIRAJ RAJESH ', 0, 0, 0, 0, 0, 0, ''),
(12, 'CHOUGULE PRIYANKA RAMESH', 0, 0, 0, 0, 0, 0, ''),
(13, 'DALVI AKSHAY DEEPAK ', 0, 0, 0, 0, 0, 0, ''),
(14, 'DHUMAL TRYAMBAK TANAJI ', 0, 0, 0, 0, 0, 0, ''),
(15, 'DNYANESHWAR REDE', 0, 0, 0, 0, 0, 0, ''),
(16, 'DONGARE SHRUTI SANJAY', 0, 0, 0, 0, 0, 0, ''),
(17, 'GADEKAR ATHARV DATTATRAY ', 0, 0, 0, 0, 0, 0, ''),
(18, 'GANGADHAR ISHWARI MANOJ', 0, 0, 0, 0, 0, 0, ''),
(19, 'HARSHIT SUDHIR KADAM ', 0, 0, 0, 0, 0, 0, ''),
(20, 'JADHAV KESHAV SURESH', 0, 0, 0, 0, 0, 0, ''),
(21, 'JADHAV SAMEER RAJENDRA', 0, 0, 0, 0, 0, 0, ''),
(22, 'JADHAV SAMPADA DHANANJAY', 0, 0, 0, 0, 0, 0, ''),
(23, 'JAIN ANISH PRAKASH', 0, 0, 0, 0, 0, 0, ''),
(24, 'JAMADAR OMER SAMEER', 0, 0, 0, 0, 0, 0, ''),
(25, 'JAMBHALE AMIT VILAS ', 0, 0, 0, 0, 0, 0, ''),
(26, 'JANOLKAR SAHIL PRASHANT', 0, 0, 0, 0, 0, 0, ''),
(27, 'JANWADKAR ARSHIYA BEGAM MD ASHFAQUE', 0, 0, 0, 0, 0, 0, ''),
(28, 'JOSHI NITYAM PRAFUL', 0, 0, 0, 0, 0, 0, ''),
(29, 'JOSHI PRATHAMESH RAJENDRA', 0, 0, 0, 0, 0, 0, ''),
(30, 'KHADSE ANJALI ANIL', 0, 0, 0, 0, 0, 0, ''),
(31, 'KHAIRE PRATIKSHA SANDIP', 0, 0, 0, 0, 0, 0, ''),
(32, 'KSHIRSAGAR SIDDHI SATISH', 0, 0, 0, 0, 0, 0, ''),
(33, 'LONDHE OMKAR DATTATRAYA', 0, 0, 0, 0, 0, 0, ''),
(34, 'MADKE ATHRAVA MILIND ', 0, 0, 0, 0, 0, 0, ''),
(35, 'MANER TAMANNA FAROOK ', 0, 0, 0, 0, 0, 0, ''),
(36, 'NIKITA SANTOSH DHULE', 0, 0, 0, 0, 0, 0, ''),
(37, 'PALVE HARISH RAMDAS', 0, 0, 0, 0, 0, 0, ''),
(38, 'PATEL AZIMUDDIN BAKSHUDDIN', 0, 0, 0, 0, 0, 0, ''),
(39, 'PATHA RAJENDRA POLURAJU', 0, 0, 0, 0, 0, 0, ''),
(40, 'PATIL YASHASHRI UDAYKUMAR', 0, 0, 0, 0, 0, 0, ''),
(41, 'PHALKE ABHISHEK ARUN ', 0, 0, 0, 0, 0, 0, ''),
(42, 'POLEKAR ROHAN SANJAY', 0, 0, 0, 0, 0, 0, ''),
(43, 'RATHOD AKSHAY VITTHAL', 0, 0, 0, 0, 0, 0, ''),
(44, 'ROKADE OMKAR JITENDRA', 0, 0, 0, 0, 0, 0, ''),
(45, 'SAGAR VAIBHAV SUDHIR', 0, 0, 0, 0, 0, 0, ''),
(46, 'SAKHARE RUTUJA BHAUSAHEB ', 0, 0, 0, 0, 0, 0, ''),
(47, 'SHAH ADITYA HIREN', 0, 0, 0, 0, 0, 0, ''),
(48, 'SHAIKH ALSHIFA SHAFIK', 0, 0, 0, 0, 0, 0, ''),
(49, 'SHAIKH REHAN MUBIN', 0, 0, 0, 0, 0, 0, ''),
(50, 'SHAIKH SAMEER BABA', 0, 0, 0, 0, 0, 0, ''),
(51, 'SHAIKH SINAAN KHALID', 0, 0, 0, 0, 0, 0, ''),
(52, 'SHARMA SIDDHARTH RAJENDRA', 0, 0, 0, 0, 0, 0, ''),
(53, 'SHELKE SUBODH VINAYAK', 0, 0, 0, 0, 0, 0, ''),
(54, 'SHERLA RUTUJA ANIL', 0, 0, 0, 0, 0, 0, ''),
(55, 'SHINDE PRATHAM VIVEK', 0, 0, 0, 0, 0, 0, ''),
(56, 'SHUBHAM RAJ', 0, 0, 0, 0, 0, 0, ''),
(57, 'SONAWANE PRAJWAL PRASHANT', 0, 0, 0, 0, 0, 0, ''),
(59, 'SWAMI PRANAV PRASHANT', 0, 0, 0, 0, 0, 0, ''),
(60, 'SWAMI RUSHIKESH DAYANAND', 0, 0, 0, 0, 0, 0, ''),
(61, 'TARATE ROHIT DATTATRAY', 0, 0, 0, 0, 0, 0, ''),
(62, 'TIKONE ATHRAVA PANDURANG', 0, 0, 0, 0, 0, 0, ''),
(63, 'WALUNJKAR YASH DATTATRAY', 0, 0, 0, 0, 0, 0, ''),
(64, 'WAVHAL PRATIK BALASAHEB', 0, 0, 0, 0, 0, 0, ''),
(65, 'KHOPADE RUTURAJ VIJAY', 0, 0, 0, 0, 0, 0, ''),
(66, 'SUPEKAR SAYALI RAJU', 0, 0, 0, 0, 0, 0, ''),
(67, 'LAMJE RAMCHANDRA MAYUR', 0, 0, 0, 0, 0, 0, ''),
(68, 'SAGAR S DAHIFALE', 0, 0, 0, 0, 0, 0, ''),
(69, 'BEDMUTHA MITALI MAHAVIR', 0, 0, 0, 0, 0, 0, ''),
(70, 'PANDIT RAHUL BHOLA', 0, 0, 0, 0, 0, 0, ''),
(71, 'BATTUL ADITYA SATISH', 0, 0, 0, 0, 0, 0, ''),
(72, 'DHAYGUDE KISHOR DILIP', 0, 0, 0, 0, 0, 0, ''),
(73, 'KELGANDRE AISHWARYA SANJAY', 0, 0, 0, 0, 0, 0, ''),
(74, 'KHADUL OMKAR SANJAY', 0, 0, 0, 0, 0, 0, ''),
(75, 'KURHADE PRITI RAJENDRA ', 0, 0, 0, 0, 0, 0, ''),
(76, 'PATIL MAMTA DINKAR', 0, 0, 0, 0, 0, 0, ''),
(77, 'SATALKAR GAURI NAVNATH', 0, 0, 0, 0, 0, 0, ''),
(78, 'SHIRASKAR ISHA RAHUL', 0, 0, 0, 0, 0, 0, ''),
(79, 'ALEENA HANIF BAGWAN', 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `te_student_database`
--

CREATE TABLE `te_student_database` (
  `PRN_NUMBER` varchar(255) NOT NULL,
  `ROLL_NUMBER` int(255) NOT NULL,
  `STUDENT_NAME` varchar(50) NOT NULL,
  `TOTAL` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `te_student_database`
--

INSERT INTO `te_student_database` (`PRN_NUMBER`, `ROLL_NUMBER`, `STUDENT_NAME`, `TOTAL`) VALUES
('72157089F', 1, 'AJAY ANIL GAIKWAD', 1),
('72157090K', 2, 'APRE OMKAR DILIP ', 1),
('72157091H', 3, 'AWACHAR SNEHAL SUHAS', 1),
('72157092F', 4, 'BADE SHRIRAM ANIL', 1),
('72157094B', 5, 'BHOJANE APOORVA VASANT', 1),
('72157095L', 6, 'BHUTADA UTKARSH HIMANSHU ', 1),
('72157096J', 7, 'BIJJARGI MAHESH PANDIT', 1),
('72157097G', 8, 'BOBADE ROHAN RAJESH', 1),
('72157098E', 9, 'BORATE SHWETA AMBADAS', 1),
('72157099C', 10, 'CHAVAN ATHARVA SANJAY', 1),
('72157100L', 11, 'CHORDIA NIRAJ RAJESH ', 1),
('72157102G', 12, 'CHOUGULE PRIYANKA RAMESH', 1),
('72157103E', 13, 'DALVI AKSHAY DEEPAK ', 1),
('72157105M', 14, 'DHUMAL TRYAMBAK TANAJI ', 1),
('72157106K', 15, 'DNYANESHWAR REDE', 1),
('72157107H', 16, 'DONGARE SHRUTI SANJAY', 1),
('72157108F', 17, 'GADEKAR ATHARV DATTATRAY ', 1),
('72157109D', 18, 'GANGADHAR ISHWARI MANOJ', 1),
('72157110H', 19, 'HARSHIT SUDHIR KADAM ', 1),
('72157113B', 20, 'JADHAV KESHAV SURESH', 1),
('72157114L', 21, 'JADHAV SAMEER RAJENDRA', 1),
('72157115J', 22, 'JADHAV SAMPADA DHANANJAY', 1),
('72157116G', 23, 'JAIN ANISH PRAKASH', 1),
('72157088H', 24, 'JAMADAR OMER SAMEER', 1),
('72157117E', 25, 'JAMBHALE AMIT VILAS ', 1),
('72157118C', 26, 'JANOLKAR SAHIL PRASHANT', 1),
('72157119M', 27, 'JANWADKAR ARSHIYA BEGAM MD ASHFAQUE ', 1),
('72157120E', 28, 'JOSHI NITYAM PRAFUL', 1),
('72157121C', 29, 'JOSHI PRATHAMESH RAJENDRA', 1),
('72157123K', 30, 'KHADSE ANJALI ANIL', 1),
('72157124H', 31, 'KHAIRE PRATIKSHA SANDIP', 1),
('72157125F', 32, 'KSHIRSAGAR SIDDHI SATISH', 1),
('72157132J', 33, 'LONDHE OMKAR DATTATRAYA', 1),
('72157127B', 34, 'MADKE ATHRAVA MILIND ', 1),
('72157128L', 35, 'MANER TAMANNA FAROOK ', 1),
('72157131L', 36, 'NIKITA SANTOSH DHULE', 1),
('72157134E', 37, 'PALVE HARISH RAMDAS', 1),
('72157136M', 38, 'PATEL AZIMUDDIN BAKSHUDDIN ', 1),
('72157137K', 39, 'PATHA RAJENDRA POLURAJU', 1),
('72157139F', 40, 'PATIL YASHASHRI UDAYKUMAR', 1),
('72157141H', 41, 'PHALKE ABHISHEK ARUN ', 1),
('72157142F', 42, 'POLEKAR ROHAN SANJAY', 1),
('72157144B', 43, 'RATHOD AKSHAY VITTHAL', 1),
('72157147G', 44, 'ROKADE OMKAR JITENDRA', 1),
('72157149C', 45, 'SAGAR VAIBHAV SUDHIR', 1),
('72157150G', 46, 'SAKHARE RUTUJA BHAUSAHEB ', 1),
('72157153M', 47, 'SHAH ADITYA HIREN', 1),
('72157154K', 48, 'SHAIKH ALSHIFA SHAFIK', 1),
('72157145L', 49, 'SHAIKH REHAN MUBIN', 1),
('72157155H', 50, 'SHAIKH SAMEER BABA', 1),
('72157156F', 51, 'SHAIKH SINAAN KHALID', 1),
('72157157D', 52, 'SHARMA SIDDHARTH RAJENDRA', 1),
('72157158B', 53, 'SHELKE SUBODH VINAYAK', 1),
('72157159L', 54, 'SHERLA RUTUJA ANIL', 1),
('72157160D', 55, 'SHINDE PRATHAM VIVEK', 1),
('72157162L', 56, 'SHUBHAM RAJ', 1),
('72157165E', 57, 'SONAWANE PRAJWAL PRASHANT', 1),
('1', 58, '0', 1),
('72157168K', 59, 'SWAMI PRANAV PRASHANT', 1),
('72157169H', 60, 'SWAMI RUSHIKESH DAYANAND', 1),
('72157172H', 61, 'TARATE ROHIT DATTATRAY', 1),
('72157173F', 62, 'TIKONE ATHRAVA PANDURANG', 1),
('72157175B', 63, 'WALUNJKAR YASH DATTATRAY', 1),
('72157176L', 64, 'WAVHAL PRATIK BALASAHEB', 1),
('71920368G', 65, 'KHOPADE RUTURAJ VIJAY', 1),
('72034905C', 66, 'SUPEKAR SAYALI RAJU', 1),
('72157129J', 67, 'LAMJE RAMCHANDRA MAYUR', 1),
('72157148E', 68, 'SAGAR S DAHIFALE', 1),
('72157093D', 69, 'BEDMUTHA MITALI MAHAVIR', 1),
('72157135C', 70, 'PANDIT RAHUL BHOLA', 1),
('72214540D', 71, 'BATTUL ADITYA SATISH', 1),
('72214541B', 72, 'DHAYGUDE KISHOR DILIP', 1),
('72214542L', 73, 'KELGANDRE AISHWARYA SANJAY', 1),
('7221453J', 74, 'KHADUL OMKAR SANJAY', 1),
('72214538B', 75, 'KURHADE PRITI RAJENDRA ', 1),
('72214544G', 76, 'PATIL MAMTA DINKAR', 1),
('72214545E', 77, 'SATALKAR GAURI NAVNATH', 1),
('72214546C', 78, 'SHIRASKAR ISHA RAHUL', 1),
('72214539L', 79, 'ALEENA HANIF BAGWAN', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
