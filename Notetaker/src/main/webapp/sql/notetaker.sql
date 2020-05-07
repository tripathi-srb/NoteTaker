-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 01:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notetaker`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `addedDate` datetime DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `addedDate`, `content`, `title`) VALUES
(63869, '2020-05-02 21:14:48', 'On the face of it , It may look very simple but sometimes the interviewer is looking in depth knowledge and understanding of the candidate. In this answer explaing by giving analogies. Take a C program and compare it with a java program. What are the different compiling stages, compare them. This question can even go into the architecture of JVM.', 'How does same JAVA code run on multiple Operating System ?'),
(77321, '2020-05-03 16:30:25', 'A web application firewall (or WAF) filters, monitors, and blocks HTTP traffic to and from a web application. A WAF is differentiated from a regular firewall in that a WAF is able to filter the content of specific web applications while regular firewalls serve as a safety gate between servers. By inspecting HTTP traffic, it can prevent attacks stemming from web application security flaws, such as SQL injection, cross-site scripting (XSS), file inclusion, and security misconfigurations.', 'Web application firewall'),
(73492, '2020-05-02 21:19:47', 'This is a basic JavaScript question that should be easy for experienced web developers to answer. In brief, a namespace is a global object with a unique name that holds methods, properties and other objects. Its used to increase modularity and reuse of code in web applications, and to prevent naming conflicts.', 'What is namespacing in JavaScript?'),
(67726, '2020-05-03 00:12:18', '		    Test content1\r\n		    ', 'test title1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
