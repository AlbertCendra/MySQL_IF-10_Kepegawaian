-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2025 at 09:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kepegawaian`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_employees` ()   BEGIN
    SELECT * FROM employees;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `department` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `position`, `salary`, `department`, `created_at`) VALUES
(1, 'Albert Cendra Hernawan', 'Pemilik', 99999999.99, 'Textil', '2025-02-14 20:03:04'),
(2, 'John Doe', 'Manager', 7000.00, 'Sales', '2025-02-14 20:08:31'),
(3, 'Jane Smith', 'Senior Developer', 6500.00, 'IT', '2025-02-14 20:08:31'),
(4, 'Michael Johnson', 'HR Specialist', 4800.00, 'Human Resources', '2025-02-14 20:08:31'),
(5, 'Emily Davis', 'Marketing Coordinator', 5500.00, 'Marketing', '2025-02-14 20:08:31'),
(6, 'Chris Lee', 'Product Manager', 7200.00, 'Product Development', '2025-02-14 20:08:31'),
(7, 'Sarah Brown', 'Software Engineer', 6000.00, 'IT', '2025-02-14 20:08:31'),
(8, 'David Wilson', 'Graphic Designer', 4500.00, 'Design', '2025-02-14 20:08:31'),
(9, 'Jessica Moore', 'Data Analyst', 5200.00, 'Data Science', '2025-02-14 20:08:31'),
(10, 'Daniel Taylor', 'Senior Accountant', 5500.00, 'Finance', '2025-02-14 20:08:31'),
(11, 'Laura Martinez', 'Legal Advisor', 7500.00, 'Legal', '2025-02-14 20:08:31'),
(12, 'James Anderson', 'Project Manager', 6800.00, 'Operations', '2025-02-14 20:08:31'),
(13, 'Linda Thomas', 'Marketing Specialist', 5000.00, 'Marketing', '2025-02-14 20:08:31'),
(14, 'Robert Jackson', 'Sales Representative', 4000.00, 'Sales', '2025-02-14 20:08:31'),
(15, 'Patricia White', 'Customer Support', 3800.00, 'Support', '2025-02-14 20:08:31'),
(16, 'Charles Harris', 'Senior Architect', 8000.00, 'Engineering', '2025-02-14 20:08:31'),
(17, 'Matthew Clark', 'Business Analyst', 5400.00, 'Business Development', '2025-02-14 20:08:31'),
(18, 'Mary Lewis', 'Recruitment Officer', 4600.00, 'Human Resources', '2025-02-14 20:08:31'),
(19, 'William Walker', 'Financial Analyst', 6200.00, 'Finance', '2025-02-14 20:08:31'),
(20, 'Elizabeth Hall', 'Web Developer', 5700.00, 'IT', '2025-02-14 20:08:31'),
(21, 'Anthony Allen', 'Junior Developer', 4000.00, 'IT', '2025-02-14 20:08:31'),
(22, 'Sandra King', 'Account Manager', 6000.00, 'Sales', '2025-02-14 20:08:31'),
(23, 'Kenneth Wright', 'Senior Designer', 6700.00, 'Design', '2025-02-14 20:08:31'),
(24, 'Paul Scott', 'Data Scientist', 7000.00, 'Data Science', '2025-02-14 20:08:31'),
(25, 'Barbara Young', 'Operations Manager', 7300.00, 'Operations', '2025-02-14 20:08:31'),
(26, 'Andrew Harris', 'Business Development Manager', 7500.00, 'Business Development', '2025-02-14 20:08:31'),
(27, 'Rebecca Adams', 'Sales Executive', 4200.00, 'Sales', '2025-02-14 20:08:31'),
(28, 'Joshua Nelson', 'Junior Architect', 4600.00, 'Engineering', '2025-02-14 20:08:31'),
(29, 'Helen Carter', 'Content Writer', 3500.00, 'Content', '2025-02-14 20:08:31'),
(30, 'Gary Mitchell', 'SEO Specialist', 4800.00, 'Marketing', '2025-02-14 20:08:31'),
(31, 'Nancy Perez', 'Community Manager', 4600.00, 'Marketing', '2025-02-14 20:08:31'),
(32, 'Brian Roberts', 'Data Engineer', 6400.00, 'Data Science', '2025-02-14 20:08:31'),
(33, 'Shirley Morris', 'Assistant Manager', 4500.00, 'Sales', '2025-02-14 20:08:31'),
(34, 'Jack Phillips', 'Senior HR Manager', 7700.00, 'Human Resources', '2025-02-14 20:08:31'),
(35, 'Karen Cook', 'Event Coordinator', 4700.00, 'Marketing', '2025-02-14 20:08:31'),
(36, 'Larry Lee', 'Operations Coordinator', 5200.00, 'Operations', '2025-02-14 20:08:31'),
(37, 'Alice King', 'Senior Product Manager', 7500.00, 'Product Development', '2025-02-14 20:08:31'),
(38, 'Steven Harris', 'Business Intelligence Analyst', 6900.00, 'Data Science', '2025-02-14 20:08:31'),
(39, 'Grace Carter', 'Product Designer', 6000.00, 'Design', '2025-02-14 20:08:31'),
(40, 'Frank Evans', 'Lead Developer', 8000.00, 'IT', '2025-02-14 20:08:31'),
(41, 'Nancy Turner', 'Quality Assurance Specialist', 5400.00, 'Engineering', '2025-02-14 20:08:31'),
(42, 'Jennifer Mitchell', 'Senior Data Analyst', 6800.00, 'Data Science', '2025-02-14 20:08:31'),
(43, 'George Adams', 'Warehouse Manager', 5300.00, 'Operations', '2025-02-14 20:08:31'),
(44, 'Dorothy Nelson', 'Marketing Director', 9000.00, 'Marketing', '2025-02-14 20:08:31'),
(45, 'Joseph Taylor', 'Product Owner', 7200.00, 'Product Development', '2025-02-14 20:08:31'),
(46, 'Martha Robinson', 'Senior Sales Representative', 6000.00, 'Sales', '2025-02-14 20:08:31'),
(47, 'Kyle Thomas', 'Technical Support Specialist', 4500.00, 'Support', '2025-02-14 20:08:31'),
(48, 'Sandra Martinez', 'Supply Chain Manager', 6700.00, 'Operations', '2025-02-14 20:08:31'),
(49, 'Timothy Robinson', 'Software Tester', 4800.00, 'IT', '2025-02-14 20:08:31'),
(50, 'Jessica Campbell', 'IT Support Specialist', 4000.00, 'IT', '2025-02-14 20:08:31'),
(51, 'Larry Brooks', 'Chief Financial Officer', 11000.00, 'Finance', '2025-02-14 20:08:31'),
(52, 'Kimberly Parker', 'Customer Service Representative', 3800.00, 'Support', '2025-02-14 20:08:31'),
(53, 'Steven Hall', 'Chief Executive Officer', 15000.00, 'Management', '2025-02-14 20:08:31'),
(54, 'Michelle Allen', 'Social Media Manager', 4700.00, 'Marketing', '2025-02-14 20:08:31'),
(55, 'Cynthia Carter', 'Product Marketing Manager', 6200.00, 'Marketing', '2025-02-14 20:08:31'),
(56, 'Arthur Mitchell', 'Technical Architect', 8000.00, 'Engineering', '2025-02-14 20:08:31'),
(57, 'Emily White', 'Junior Data Analyst', 4200.00, 'Data Science', '2025-02-14 20:08:31'),
(58, 'Ryan Wilson', 'Business Operations Manager', 7500.00, 'Operations', '2025-02-14 20:08:31'),
(59, 'Amanda Moore', 'Junior Web Developer', 4300.00, 'IT', '2025-02-14 20:08:31'),
(60, 'Julia Turner', 'Client Relations Manager', 5500.00, 'Sales', '2025-02-14 20:08:31'),
(61, 'Ethan Jackson', 'Senior Data Engineer', 7800.00, 'Data Science', '2025-02-14 20:08:31'),
(62, 'Brian Lewis', 'Lead Designer', 7000.00, 'Design', '2025-02-14 20:08:31'),
(63, 'Sophia King', 'Executive Assistant', 4600.00, 'Operations', '2025-02-14 20:08:31'),
(64, 'Isabella Roberts', 'IT Administrator', 5300.00, 'IT', '2025-02-14 20:08:31'),
(65, 'David Young', 'Senior Marketing Specialist', 6500.00, 'Marketing', '2025-02-14 20:08:31'),
(66, 'Henry Campbell', 'Business Development Executive', 6000.00, 'Business Development', '2025-02-14 20:08:31'),
(67, 'Eliza White', 'Junior Account Manager', 4200.00, 'Finance', '2025-02-14 20:08:31'),
(68, 'Samuel Green', 'Product Support Specialist', 4800.00, 'Support', '2025-02-14 20:08:31'),
(69, 'Ruth Harris', 'Marketing Analyst', 5100.00, 'Marketing', '2025-02-14 20:08:31'),
(70, 'Paul Martinez', 'Lead Accountant', 6500.00, 'Finance', '2025-02-14 20:08:31'),
(71, 'Emma Robinson', 'Recruiter', 4600.00, 'Human Resources', '2025-02-14 20:08:31'),
(72, 'Ryan Anderson', 'Technical Writer', 4900.00, 'Content', '2025-02-14 20:08:31'),
(73, 'Walter Thomas', 'Product Support Engineer', 5500.00, 'Engineering', '2025-02-14 20:08:31'),
(74, 'Sophia Jackson', 'Operations Assistant', 4800.00, 'Operations', '2025-02-14 20:08:31'),
(75, 'Megan Clark', 'Senior Web Designer', 6000.00, 'Design', '2025-02-14 20:08:31');

--
-- Triggers `employees`
--
DELIMITER $$
CREATE TRIGGER `before_insert_employee` BEFORE INSERT ON `employees` FOR EACH ROW BEGIN
    SET NEW.salary = ROUND(NEW.salary, 2);  -- Membulatkan gaji
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'bert123', '$2y$10$1KDeOm9Mqj8Vlp8bGhYUIOVxuvaegY63eIJQMItCCO5GuxBlMfZ8e', '2025-02-14 20:01:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
