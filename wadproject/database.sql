-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2024 at 08:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wadproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindetails`
--

CREATE TABLE `admindetails` (
  `SINO` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admindetails`
--

INSERT INTO `admindetails` (`SINO`, `email`, `name`, `password`) VALUES
(1, 'abcd@gmail.com', 'abcd', 'abcd@1234');

-- --------------------------------------------------------

--
-- Table structure for table `change_requests`
--

CREATE TABLE `change_requests` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `change_requests`
--

INSERT INTO `change_requests` (`id`, `student_id`, `field`, `new_value`, `image`, `status`, `created_at`, `image_path`) VALUES
(10, '22211a67a9', 'cgpa', '9.5', '', 'denied', '2024-06-14 16:31:41', 'upload/camera.jpg'),
(11, '18211A0508', 'internships', 'abc', '', 'denied', '2024-06-14 16:32:29', 'upload/bonafide.jpg'),
(12, '22211a04q9', 'internships', 'abc', '', 'approved', '2024-08-21 17:57:58', 'upload/photo.jpg'),
(13, '18211A0508', 'cgpa', '9.5', '', 'approved', '2024-08-21 18:01:01', 'upload/ph.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `name` varchar(250) NOT NULL,
  `requirements` text NOT NULL,
  `criteria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`name`, `requirements`, `criteria`) VALUES
('Apple', '1. Resume/Application Screening	\r\n2. Phone/Video Interview	\r\n3. Onsite Interviews (Technical and Behavioral)', '1. Strong academic background, relevant experience, and skills.\r\n2. Problem-solving skills, technical knowledge, communication.\r\n3. Problem-solving skills, technical expertise, creativity, cultural fit.'),
('Amazon', '1. Resume/Application Screening	\r\n2. Online Assessment (Technical and Behavioral)\r\n3. Phone/Video Interview\r\n4. Onsite Interviews (Technical and Behavioral)', '1. Strong academic background, relevant experience, and skills.\r\n2. Problem-solving skills, behavioral assessment.\r\n3. Problem-solving skills, technical knowledge, behavioral assessment.\r\n4. Problem-solving skills, technical expertise, leadership potential, cultural fit.'),
('Microsoft', '1. Resume/Application Screening\r\n2. Phone/Video Interview	\r\n3. Onsite Interviews (Technical and Behavioral)', '1. Strong academic background, relevant experience, and skills.\r\n2. Problem-solving skills, technical knowledge, communication.\r\n3. Problem-solving skills, technical expertise, communication, cultural fit.'),
('Meta ', '1. Resume/Application Screening	\r\n2. Phone/Video Interview	\r\n3. Onsite Interviews (Technical and Behavioral)', '1. Strong academic background, relevant experience, and skills.\r\n2. Problem-solving skills, coding ability, technical knowledge, communication.\r\n3. Problem-solving skills, technical expertise, creativity, cultural fit.'),
('Adobe', '1. Resume/Application Screening	\r\n2. Technical Assessment	\r\n3. Portfolio Review	\r\n4. Onsite Interviews (Technical and Behavioral)', '1. Strong academic background, relevant experience, and skills.\r\n2. Proficiency in design and multimedia software like Adobe Creative Suite.\r\n3. Strong creative and artistic abilities, experience in UI/UX design.\r\n4. Knowledge of web development technologies, problem-solving skills, cultural fit.'),
('Virtusa', '1. Resume/Application Screening	\r\n2. Technical Assessment	\r\n3. Coding/Problem-Solving Round	\r\n4. HR Interview', '1. Strong academic background, relevant experience, and skills.\r\n2. Strong technical skills in software engineering, cloud computing, or data analytics.\r\n3. Problem-solving abilities, coding proficiency.\r\n4. Effective communication, teamwork skills.'),
('abc', 'resume', 'python');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text DEFAULT NULL,
  `options` text DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `options`, `answer`) VALUES
(1, 'What is the time complexity of searching for an element in a linked list?', 'O(1),O(log n),O(n),O(n^2)', 'O(n)'),
(2, 'Which data structure uses a fixed-size array for efficient random access?', 'Stack,Queue,Array,Linked List', 'Array'),
(3, 'What is the time complexity of inserting an element at the beginning of a singly linked list?', 'O(1),O(log n),O(n),O(n^2)', 'O(1)'),
(4, 'Which sorting algorithm has a worst-case time complexity of O(n^2)?', 'Merge Sort,Quick Sort,Heap Sort,Bubble Sort', 'Bubble Sort'),
(5, 'The Dijkstras algorithm is used to find the shortest path in a graph with what property?', 'Undirected edges,Directed edges with non-negative weights,Only connected graphs,Only acyclic graphs', 'Directed edges with non-negative weights');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `rollnumber` varchar(10) NOT NULL,
  `marks` int(100) NOT NULL,
  `attempts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`rollnumber`, `marks`, `attempts`) VALUES
('18211A0508', 3, 5),
('22211a04q9', 1, 1),
('22211a6780', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `studentdata`
--

CREATE TABLE `studentdata` (
  `rollnumber` varchar(10) NOT NULL,
  `internship` text NOT NULL,
  `jobs` varchar(200) DEFAULT NULL,
  `branch` varchar(10) NOT NULL,
  `task` varchar(5) NOT NULL,
  `specialtraining` text NOT NULL,
  `pega` varchar(10) NOT NULL,
  `apt` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `10th%` double NOT NULL,
  `Inter` double NOT NULL,
  `btechcgpa` double NOT NULL,
  `btech` double NOT NULL,
  `backlogs` int(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentdata`
--

INSERT INTO `studentdata` (`rollnumber`, `internship`, `jobs`, `branch`, `task`, `specialtraining`, `pega`, `apt`, `name`, `gender`, `10th%`, `Inter`, `btechcgpa`, `btech`, `backlogs`, `email`) VALUES
('17211A05C4', '', '', 'CSE', 'No', 'AI / ML', 'No', 'Yes', 'RAJKUMAR', 'Male', 78, 87, 5.3, 48, 7, '17211a05c4@bvrit.ac.in'),
('17211A05C5', '', '', 'CSE', 'No', 'C', 'No', 'No', 'KATTA UDAY REDDY', 'Male', 87, 83, 3.79, 32.9, 25, '17211a05c5@bvrit.ac.in'),
('17211A05D9', '', '', 'CSE', 'No', 'AI / ML, Mobile Applications', 'No', 'No', 'KOTHA SUDHIT', 'Male', 85, 81.9, 5.7, 52, 5, '17211A05d9@bvrit.ac.in'),
('17211A1264', '', '', 'IT', 'No', 'Cyber Security, Mobile Applications', 'No', 'No', 'M. CHARAN TEJA', 'Male', 67, 71, 4.16, 36.6, 19, '17211A1264@bvrit.ac.in'),
('17211A12A0', '', '', 'IT', 'No', 'Data Sciences, Cyber Security, Cloud, UX / UI, Mobile Applications', 'No', 'No', 'SALKINENI RAJ KUMAR', 'Male', 75, 70, 1.98, 14.8, 41, '17211A12A0@bvrit.ac.in'),
('18211A0501', '', 'MYCAPTAIN & INTELLIPAAT-BDT', 'CSE', 'No', 'AI / ML, Python, Unity', 'No', 'No', 'VENKAT SAI AAVULA', 'Male', 85, 72.2, 6.46, 59.6, 0, '18211a0501@bvrit.ac.in'),
('18211A0502', 'OPENTEXT', 'OPENTEXT', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data, Mobile Applications', 'No', 'Yes', 'ABBURI CHARUTHRI', 'Female', 100, 97.6, 9.21, 87.1, 0, '18211a0502@bvrit.ac.in'),
('18211A0503', 'TEACHNOOK', 'ACCENTURE ADVANCED ASE & TCS NINJA & WINWIRE TECHNOLOGIES COCUBES & TEACHNOOK & SAPIENS COCUBES', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python, Cloud, Mobile Applications', 'No', 'Yes', 'AELOORI AKHILESHWAR ', 'Male', 88, 90.5, 7.29, 67.9, 0, '18211a0503@bvrit.ac.in '),
('18211A0504', '', 'ACCENTURE PEGA & TCS TOPPERS NINJA', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Block Chain, Python, Cloud, Big Data, Mobile Applications', 'Yes', 'No', 'NAVEEN AJMERA', 'Male', 90, 95, 7.22, 67.2, 0, '18211A0504@bvrit.ac.in'),
('18211A0505', '', 'BOFA PEGA & TCS PEGA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Block Chain, Python, Cloud, Big Data, UX / UI, Mobile Applications, Extended Reality (AR / VR)', 'Yes', 'No', 'AKSHARA AKAVARAM ', 'Female', 97, 95.2, 8.24, 77.4, 0, '18211a0505@bvrit.ac.in '),
('18211A0506', '', 'VIRTUSA PEGA & BOFA PEGA', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Block Chain, Python, Cloud, Big Data, Mobile Applications', 'Yes', 'No', 'AKHILA PESALA', 'Female', 96, 91.3, 7.24, 67.4, 0, '18211A0506@bvrit.ac.in'),
('18211A0507', 'ARETEANS PEGA', 'ARETEANS PEGA & BRITISH TELECOM OFF CAMPUS & HCL OFF CAMPUS', 'CSE', 'Yes', 'Cyber Security, Python, Mobile Applications, Extended Reality (AR / VR), Digital Marketing', 'Yes', 'No', 'AKSHAY JOSHI', 'Male', 93, 95.7, 7.53, 70.3, 0, '18211a0507@bvrit.ac.in'),
('18211A0508', 'OPENTEXT', 'OPENTEXT', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Python, Cloud, UX / UI, Mobile Applications', 'No', 'Yes', 'ALAKUNTLA SURESH', 'Male', 93, 96.8, 7.7, 72, 0, '18211a0508@bvrit.ac.in'),
('18211A0509', '', '', 'CSE', 'No', 'AI / ML, IoT, Python', 'Yes', 'No', 'ALETI ARUN KUMAR REDDY', 'Male', 88, 72.4, 6.5, 60, 0, '18211a0509@bvrit.ac.in'),
('18211A0510', 'COFORGE PEGA', 'COFORGE PEGA', 'CSE', 'No', 'Python, Mobile Applications', 'Yes', 'No', 'ALETI SRISHANTH REDDY ', 'Male', 82, 85.5, 6.89, 63.9, 0, '18211a0510@bvrit.ac.in'),
('18211A0511', '', '', 'CSE', 'No', 'AI / ML, Cyber Security, IoT, Python, Mobile Applications', 'No', 'No', 'ALIGI ROBERT', 'Male', 83, 75, 4.39, 38.9, 17, '18211A0511@bvrit.ac.in'),
('18211A0512', 'COFORGE PEGA & EAI SYSTEMS PEGA', 'MUSIGMA & INFOSYS SE & COFORGE PEGA & WINWIRE TECHNOLOGIES COCUBES', 'CSE', 'Yes', 'Cyber Security, Python, Web development', 'Yes', 'No', 'AMRUTHA SHASHI PREETHAM', 'Male', 98, 97.4, 8.56, 80.6, 0, '18211a0512@bvrit.ac.in'),
('18211A0513', '', 'CAPGEMINI ANALYST', 'CSE', 'Yes', 'Python', 'Yes', 'No', 'ANANTAPALLI SAI RUTHVIK', 'Male', 96, 93, 7.89, 73.9, 0, '18211a0513@bvrit.ac.in'),
('18211A0514', '', 'LTI LEVEL - 3 & CAPGEMINI ANALYST & ACCENTURE ASE & COGNIZANT GENC ELEVATE & CHEGG', 'CSE', 'Yes', 'AI / ML', 'No', 'Yes', 'ANDE TULASI', 'Female', 96, 97.3, 8.84, 83.4, 0, '18211a0514@bvrit.ac.in'),
('18211A0515', 'TECHNOVERT FSD', 'TECHNOVERT FSD & TCS NINJA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Python, Cloud, UX / UI, Mobile Applications', 'No', 'Yes', 'ANKITH CIRGIR', 'Male', 91, 94.9, 7.99, 74.9, 0, '18211a0515@bvrit.ac.in'),
('18211A0516', '', '', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Mobile Applications', 'No', 'No', 'ANNAVARAM PREETHAM REDDY', 'Male', 87, 87.7, 6.87, 63.7, 0, '18211a0516@bvrit.ac.in'),
('18211A0517', 'OPENTEXT & ZOHO REGULAR', 'ZOHO REGULAR & OPENTEXT', 'CSE', 'Yes', 'AI / ML, Python, Cloud, UX / UI, Mobile Applications, web development', 'No', 'Yes', 'ANUMOLU SRIHARSHA', 'Male', 98, 95.3, 8.32, 78.2, 0, '18211a0517@bvrit.ac.in'),
('18211A0518', 'OPENTEXT', 'OPENTEXT', 'CSE', 'No', 'Python, Mobile Applications', 'No', 'Yes', 'ARJUN ALLURI', 'Male', 92, 94, 8.31, 78.1, 0, '18211a0518@bvrit.ac.in'),
('18211A0519', '', 'WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python', 'No', 'No', 'ARROLLA CHINTU ', 'Male', 80, 90, 6.35, 58.5, 0, '18211a0519@bvrit.ac.in'),
('18211A0520', 'TECHNOVERT SEDA', 'TECHNOVERT SEDA & DBS', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python', 'No', 'No', 'VARSHITHA ARUMALLA ', 'Female', 100, 98, 9.05, 85.5, 0, '18211a0520@bvrit.ac.in'),
('18211A0521', '', '', 'CSE', 'No', 'AI / ML, Cyber Security, IoT, Block Chain, Cloud', 'No', 'No', 'ASHRITH SAI KUKATLA', 'Male', 88, 74, 4.74, 42.4, 14, '18211a0521@bvrit.ac.in'),
('18211A0522', 'AASEYA PEGA', 'AASEYA PEGA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python', 'Yes', 'No', 'AVANTHIKA MAKKENA', 'Female', 88, 89, 7.18, 66.8, 0, '18211a0522@bvrit.ac.in'),
('18211A0523', '', 'ACCENTURE ASE & INCEDO PEGA', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python, Cloud, Mobile Applications', 'Yes', 'No', 'BASUPALLY LAXMAN REDDY', 'Male', 100, 97.8, 6.78, 62.8, 0, '18211a0523@bvrit.ac.in'),
('18211A0525', 'ZEMOSO', 'LTI LEVEL - 3 & ZEMOSO & INFOSYS SE & WIPRO - NTH & COGNIZANT GENC ELEVATE', 'CSE', 'No', 'AI / ML, Cyber Security, Python, Mobile Applications, Networking', 'No', 'No', 'BLESAN PUSHPARAJ BACKIADASS', 'Male', 93, 94, 8.04, 75.4, 0, '18211a0525@bvrit.ac.in'),
('18211A0526', '', '', 'CSE', 'Yes', 'AI / ML, IoT, Python', 'No', 'No', 'BADDAM SHANMUKH REDDY', 'Male', 82, 79, 6.59, 60.9, 0, '18211a0526@bvrit.ac.in'),
('18211A0527', '', 'INFOSYS SE', 'CSE', 'Yes', 'Python', 'No', 'Yes', 'BALIREDDY VISHAL REDDY', 'Male', 92, 88, 8.23, 77.3, 0, '18211a0527@bvrit.ac.in'),
('18211A0528', '', 'CAPGEMINI ANALYST & ACCENTURE ADVANCED ASE & LEGATO PEGA & HCL OFF CAMPUS', 'CSE', 'Yes', 'AI / ML, Python, Web development', 'Yes', 'No', 'BALLA PRANEETH', 'Male', 98, 94.8, 8.81, 83.1, 0, '18211A0528@bvrit.ac.in'),
('18211A0529', 'AASEYA PEGA', 'CAPGEMINI ANALYST & AASEYA PEGA & TCS NINJA & LATENTVIEW & INFOSYS SE & COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'Data Sciences, Cyber Security, IoT, Block Chain, Python, UX / UI, Mobile Applications', 'Yes', 'No', 'BANNARAVURI SRIVIDYA', 'Female', 95, 93.5, 8.09, 75.9, 0, '18211a0529@bvrit.ac.in'),
('18211A0530', 'HARMAN KARDON', 'HARMAN KARDON & LTI LEVEL - 3 & ACCENTURE ASE', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'BEJUGAM SANJANA ', 'Female', 100, 97.5, 8.88, 83.8, 0, '18211a0530@bvrit.ac.in '),
('18211A0531', 'COFORGE PEGA', 'COFORGE PEGA & EAI SYSTEMS PEGA', 'CSE', 'Yes', 'AI / ML, IoT, Python, SQL', 'Yes', 'No', 'BENJARAM MANEESH REDDY', 'Male', 95, 96.9, 7.24, 67.4, 0, '18211a0531@bvrit.ac.in'),
('18211A0532', 'VERIZON PEGA & AASEYA PEGA', 'AASEYA PEGA & VERIZON PEGA & ACCENTURE PEGA', 'CSE', 'Yes', '-', 'Yes', 'No', 'BH JYOTENDRA ASISH VARMA', 'Male', 86, 75.2, 7.65, 71.5, 0, '18211a0532@bvrit.ac.in'),
('18211A0533', '', '', 'CSE', 'No', 'AI / ML, IoT', 'No', 'No', 'BIRU VINEELKUMAR', 'Male', 82, 85.7, 3.99, 34.9, 20, '18211a0533@bvrit.ac.in'),
('18211A0534', 'EAI SYSTEMS PEGA', 'CAPGEMINI ANALYST & HCL PEGA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Python', 'Yes', 'No', 'PARIKSHITH BOGGULA', 'Male', 97, 93.9, 7.53, 70.3, 0, '18211a0534@bvrit.ac.in'),
('18211A0535', '', 'VIRTUSA REGULAR & TCS NINJA & COGNIZANT GENC ELEVATE & DBS', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python, Cloud', 'No', 'Yes', 'BOLISETTI SRIVALLI', 'Female', 98, 96, 8.51, 80.1, 0, '18211a0535@bvrit.ac.in'),
('18211A0536', '', 'TCS TOPPERS NINJA & VIRTUSA GENERAL & LATENTVIEW & WIPRO - NTH & COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Cloud, Mobile Applications', 'No', 'No', 'VAISHNAVI BOLLI ', 'Female', 98, 98.8, 8.9, 84, 0, '18211a0536@bvrit.ac.in '),
('18211A0537', 'KAPTIUS', 'VIRTUSA REGULAR & KAPTIUS & COGNIZANT GENC NEXT & DBS', 'CSE', 'Yes', 'IoT, Python, Cloud, Mobile Applications', 'No', 'Yes', 'BOMPELLIWAR SAHAJA', 'Female', 97, 98, 9.27, 87.7, 0, '18211a0537@bvrit.ac.in'),
('18211A0538', 'DEVATHON & IBM ISL', 'VIRTUSA REGULAR & CAPGEMINI ANALYST & TCS TOPPERS NINJA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Mobile Applications, Django, Maven', 'No', 'Yes', 'BONDALAKUNTA SAI SANJANA', 'Female', 100, 97.4, 9.27, 87.7, 0, '18211a0538@bvrit.ac.in'),
('18211A0539', '', 'COGNIZANT GENC', 'CSE', 'No', 'Python, C language ', 'No', 'No', 'SATHWIK BOORLA', 'Male', 92, 86, 7.5, 70, 0, '18211A0539@bvrit.ac.in'),
('18211A0540', 'AASEYA PEGA', 'AASEYA PEGA', 'CSE', 'Yes', 'IoT, Web Development and Designing ', 'Yes', 'No', 'SAIKA BOPPANA', 'Female', 90, 93.2, 6.94, 64.4, 0, '18211a0540@bvrit.ac.in'),
('18211A0541', 'AASEYA PEGA', 'CAPGEMINI ANALYST & AASEYA PEGA', 'CSE', 'Yes', 'AI / ML, Python', 'Yes', 'No', 'BORA SAIKUMAR ', 'Male', 86, 87.1, 6.75, 62.5, 0, '18211a0541@bvrit.ac.in'),
('18211A0542', '', 'ACCENTURE ASE & TCS NINJA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Python, Cloud, Mobile Applications', 'No', 'Yes', 'BRUNDAVANAM SATYA PREETHI', 'Female', 95, 97.3, 8.46, 79.6, 0, '18211A0542@bvrit.ac.in'),
('18211A0543', '', 'MUSIGMA & VIRTUSA GENERAL', 'CSE', 'Yes', 'Data Sciences, Cyber Security, IoT, Python', 'No', 'Yes', 'BUKKA NUSHRATH ', 'Female', 95, 91, 8.74, 82.4, 0, '18211a0543@bvrit.ac.in'),
('18211A0544', '', 'TCS NINJA & WIPRO - NTH & ACCENTURE ASE & CAPILLARY', 'CSE', 'Yes', 'AI / ML, Python, Mobile Applications', 'No', 'Yes', 'CHADARAJUPALLY CHAYA SAI SREE CHANDANA', 'Female', 98, 96.5, 8.15, 76.5, 0, '18211a0544@bvrit.ac.in'),
('18211A0545', '', 'CAPGEMINI ANALYST', 'CSE', 'Yes', 'Python, Cloud', 'No', 'Yes', 'CHAITANYA K A N V K', 'Male', 88, 91.2, 8.28, 77.8, 0, '18211a0545@bvrit.ac.in'),
('18211A0546', 'MODAK & TEK SYSTEMS', 'MODAK & TEK SYSTEMS & TCS NINJA & MOUNTBLUE TECHNOLOGIES ELITMUS & INFOSYS DSE & BEAUTIFUL CODE', 'CSE', 'Yes', 'Python, Cloud, Web development, Database Management', 'No', 'Yes', 'NAGA NARASIMHA REDDY CHALLA', 'Male', 93, 91.3, 8.02, 75.2, 0, '18211a0546@bvrit.ac.in'),
('18211A0547', 'TECHNOVERT FSD & IBM', 'TECHNOVERT FSD & IBM & TCS TOPPERS DIGITAL', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data, Mobile Applications', 'No', 'Yes', 'CHAMBETI TEJASRI ', 'Female', 100, 98, 9.07, 85.7, 0, '18211A0547@bvrit.ac.in'),
('18211A0548', '', 'VIRTUSA PEGA', 'CSE', 'Yes', 'AI / ML, IoT, Python, Mobile Applications, Java,c', 'Yes', 'No', 'REKHA.CHANDRA PRAKASH', 'Male', 86, 87, 7.14, 66.4, 0, '18211a0548@bvrit.ac.in'),
('18211A0549', 'WILEY - MTHREE - INTERN', 'VIRTUSA REGULAR  & COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python', 'No', 'Yes', 'SNEHITHA CHAVA', 'Female', 100, 98.3, 8.88, 83.8, 0, '18211a0549@bvrit.ac.in'),
('18211A0550', '', 'VIRTUSA REGULAR & LTI LEVEL - 1 & CAPGEMINI ANALYST & X0RIANT NEBULA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Block Chain, Python, Cloud, Mobile Applications, Web Development(HTML,CSS,Java Script)', 'No', 'Yes', 'CHINTA ROHIT SAI KISHORE', 'Male', 95, 94.8, 9.16, 86.6, 0, '18211a0550@bvrit.ac.in'),
('18211A0551', '', '', 'CSE', 'Yes', 'Mobile Applications', 'No', 'No', 'CHINTALA SRAVANTHI', 'Female', 82, 90, 5.47, 49.7, 11, '18211a0551@bvrit.ac.in'),
('18211A0552', '', '', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python, Mobile Applications, Extended Reality (AR / VR)', 'No', 'Yes', 'CHOPPADANDI ARAVIND', 'Male', 88, 93.5, 7.16, 66.6, 0, '18211a0552@bvrit.ac.in'),
('18211A0553', '', 'TCS NINJA & VIRTUSA GENERAL & COGNIZANT GENC ELEVATE & WIPRO - NTH', 'CSE', 'Yes', 'Python, C, Java', 'No', 'Yes', 'CHUKKA SAI USHANTH ARYAN', 'Male', 78, 91.2, 8.15, 76.5, 0, '18211a0553@bvrit.ac.in'),
('18211A0554', '', 'VIRTUSA PEGA', 'CSE', 'Yes', 'AI / ML, IoT, Python', 'Yes', 'No', 'DHARAVATH DEEKSHITH', 'Male', 93, 93, 7.35, 68.5, 0, '18211a0554@bvrit.ac.in'),
('18211A0555', '', 'BOFA PEGA & INFOSYS SE & COGNIZANT GENC', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python', 'Yes', 'No', 'D PAVANI', 'Female', 93, 94, 8.27, 77.7, 0, '18211a0555@bvrit.ac.in'),
('18211A0556', '', 'LTI LEVEL - 2 & CAPGEMINI ANALYST', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, UX / UI, Django', 'No', 'Yes', 'DANDASI RUPESH KUMAR DEO', 'Male', 78, 87.1, 8.06, 75.6, 0, ' 18211a0556@bvrit.ac.in'),
('18211A0557', 'KAAR TECHNOLOGIES', 'VIRTUSA REGULAR & KAAR TECHNOLOGIES & TCS TOPPERS NINJA & LATENTVIEW & MOUNTBLUE TECHNOLOGIES ELITMUS & DBS', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Python, Mobile Applications', 'No', 'Yes', 'DANDU RAJKUMAR', 'Male', 95, 96.8, 8.6, 81, 0, '18211a0557@bvrit.ac.in'),
('18211A0558', '', 'CAPGEMINI ANALYST & ACCENTURE ASE', 'CSE', 'Yes', 'Python, Cloud, C,java,JavaScript', 'No', 'No', 'DARIMIDI VISHNU VARDHAN ', 'Male', 93, 94.9, 8.13, 76.3, 0, '18211a0558@bvrit.ac.in'),
('18211A0559', '', 'VIRTUSA REGULAR & TCS NINJA & WIPRO - NTH & COGNIZANT GENC ELEVATE & WINWIRE TECHNOLOGIES COCUBES', 'CSE', 'Yes', 'AI / ML, Python, Mobile Applications', 'No', 'Yes', 'DARU SRINIJA', 'Female', 97, 96, 8.63, 81.3, 0, '18211a0559@bvrit.ac.in'),
('18211A0560', 'IBM ISL', 'ACCENTURE ASE & WIPRO - NTH & INFOSYS SE & WALMART', 'CSE', 'Yes', 'AI / ML, IoT, Python, Mobile Applications, Web development', 'No', 'Yes', 'DASA PRAHARSHA', 'Female', 98, 97.8, 9.33, 88.3, 0, '18211a0560@bvrit.ac.in'),
('18211A0561', '', 'CAPGEMINI ANALYST & ACCENTURE ASE', 'CSE', 'Yes', 'Cyber Security, Python, Cloud', 'No', 'Yes', 'DATLA ABHIRAM VARMA', 'Male', 98, 97.2, 8.02, 75.2, 0, '18211a0561@bvrit.ac.in'),
('18211A0562', '', 'ZENOTI COCUBES & WIPRO OFF CAMPUS', 'CSE', 'Yes', 'Block Chain, Python, Big Data, Mobile Applications', 'No', 'No', 'DUGYALA YASHWARDHAN ', 'Male', 93, 94.5, 6.69, 61.9, 0, '18211a0562@bvrit.ac.in'),
('18211A0563', 'APTEAN', 'ACCENTURE ASE & TCS NINJA & INFOSYS SE & APTEAN & HCL', 'CSE', 'Yes', 'AI / ML, Python, Mobile Applications, Web technologies', 'No', 'Yes', 'ELPULA PRANITHA', 'Female', 100, 96.9, 8.32, 78.2, 0, '18211a0563@bvrit.ac.in'),
('18211A0564', '', 'CAPGEMINI ANALYST & ACCENTURE PEGA', 'CSE', 'Yes', 'IoT, Python, Web Development', 'Yes', 'No', 'EMPATI BHAVYA', 'Female', 93, 94.7, 8.02, 75.2, 0, '18211A0564@bvrit.ac.in'),
('18211A0565', '', '', 'CSE', 'No', 'Cyber Security, Block Chain, Python', 'No', 'No', 'E.HARISH REDDY', 'Male', 90, 96.6, 6.58, 60.8, 0, '18211a0565@bvrit.ac.in'),
('18211A0566', '', 'TCS NINJA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Mobile Applications', 'No', 'Yes', 'G MANIDEEP', 'Male', 93, 89.9, 7.03, 65.3, 0, '18211a0566@bvrit.ac.in'),
('18211A0567', '', 'MUSIGMA & WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'GUNDARAM SREEVANI ', 'Female', 93, 93, 8.19, 76.9, 0, '18211a0567@bvrit.ac.in'),
('18211A0568', '', '', 'CSE', 'Yes', 'AI / ML, IoT', 'No', 'No', 'G LAASYA REDDY', 'Female', 90, 71, 6.73, 62.3, 0, '18211a0568@bvrit.ac.in'),
('18211A0569', 'ACCOLITE', 'ACCOLITE & LTI LEVEL - 2', 'CSE', 'Yes', 'Cyber Security, IoT, Python, Mobile Applications', 'No', 'Yes', 'GADDAM VARSHAREDDY', 'Female', 95, 98, 8.56, 80.6, 0, '18211A0569@bvrit.ac.in '),
('18211A0570', '', 'VIRTUSA REGULAR & BRANE ENTERPRISES', 'CSE', 'Yes', 'IoT, Big Data', 'Yes', 'No', 'GADILA KALYAN VASANTH REDDY', 'Male', 93, 96.2, 7.95, 74.5, 0, '18211a0570@bvrit.ac.in'),
('18211A0572', '', '', 'CSE', 'Yes', 'Block Chain, Python', 'No', 'No', 'G AKASH VARMA', 'Male', 98, 73, 6.42, 59.2, 0, '18211A0572@bvrit.ac.in'),
('18211A0573', '', 'LTI LEVEL - 3 & INFOSYS SE', 'CSE', 'Yes', 'Python, Mobile Applications', 'No', 'Yes', 'GADIREDDY SOWMYA', 'Female', 98, 96, 8.75, 82.5, 0, '18211a0573@bvrit.ac.in'),
('18211A0574', '', 'WIPRO - NTH', 'CSE', 'Yes', 'IoT', 'No', 'No', 'GAJULA PRAVEEN KUMAR', 'Male', 87, 93.2, 6.93, 64.3, 0, '18211a0574@bvrit.ac.in'),
('18211A0575', '', 'TCS TOPPERS NINJA & WIPRO - NTH & PROLIFICS', 'CSE', 'Yes', 'Python', 'Yes', 'No', 'GANDE SHIVA KRISHNA', 'Male', 88, 95, 7.26, 67.6, 0, '18211a0575@bvrit.ac.in'),
('18211A0576', '', '', 'CSE', 'No', 'IoT, Python', 'No', 'No', 'GANDRA SAI THARUN REDDY', 'Male', 87, 83, 6.8, 63, 0, '18211A0576@bvrit.ac.in'),
('18211A0577', 'OPENTEXT', 'CAPGEMINI ANALYST & OPENTEXT', 'CSE', 'Yes', 'Python', 'No', 'No', 'GARA RAMU', 'Male', 90, 95.7, 7.8, 73, 0, '18211a0577@bvrit.ac.in'),
('18211A0578', '', 'COGNIZANT GENC', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Block Chain, Python, Mobile Applications', 'No', 'No', 'SAURAV GAUNI', 'Male', 92, 91.7, 6.49, 59.9, 0, '18211A0578@bvrit.ac.in'),
('18211A0580', '', 'VIRTUSA REGULAR & COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'AI / ML, Python', 'Yes', 'No', 'GOLLA SURAJ', 'Male', 92, 92, 7.65, 71.5, 0, '18211a0580@bvrit.ac.in'),
('18211A0581', 'MICRON', 'TA DIGITAL & VIRTUSA GENERAL & WIPRO - NTH & MICRON & INFOSYS SE', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Big Data, Mobile Applications, Web technologies', 'No', 'Yes', 'GOSIKE SRIKAR', 'Male', 97, 97.7, 8.53, 80.3, 0, '18211a0581@bvrit.ac.in'),
('18211A0582', 'OPENTEXT', 'OPENTEXT', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Block Chain, Python, Cloud, Big Data, Mobile Applications, Web development', 'No', 'Yes', 'GOTTIPATI VENKATA PHANI KUMAR', 'Male', 100, 98.4, 9.35, 88.5, 0, '18211a0582@bvrit.ac.in'),
('18211A0583', '', 'WIPRO - NTH & COGNIZANT GENC', 'CSE', 'Yes', 'AI / ML, IoT, Block Chain', 'No', 'No', 'GOWTHAM LINGAMPALLI', 'Male', 90, 93.2, 6.98, 64.8, 0, '18211a0583@bvrit.ac.in'),
('18211A0584', '', 'LTI LEVEL - 2 & CAPGEMINI ANALYST & TCS NINJA', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'PRUTHVI GUDLA', 'Male', 97, 94.6, 8.48, 79.8, 0, '18211a0584@bvrit.ac.in'),
('18211A0585', '', 'CAPGEMINI ANALYST', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python, Mobile Applications, Extended Reality (AR / VR)', 'No', 'No', 'GULLAPALLY RUPAK VARDHAN', 'Male', 100, 97, 6.69, 61.9, 0, '18211a0585@bvrit.ac.in'),
('18211A0586', '', 'CAPGEMINI ANALYST', 'CSE', 'Yes', 'Cyber Security, IoT, Python, Mobile Applications', 'No', 'No', 'GUMMADI KRISHNAVAMSHI ', 'Male', 80, 92, 7.12, 66.2, 0, '18211a0586@bvrit.ac.in'),
('18211A0587', '', '', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data', 'No', 'Yes', 'GUMMI REDDY JAGADEESWARA REDDY', 'Male', 96, 91.6, 7.69, 71.9, 0, '18211A0587@bvrit.ac.in'),
('18211A0588', '', 'HEXAWARE - GET & WIPRO - NTH & COGNIZANT GENC & TEACHNOOK', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT', 'No', 'No', 'GUNDA SAI TEJA', 'Male', 80, 92, 7.03, 65.3, 0, '18211a0588@bvrit.ac.in'),
('18211A0589', 'TECHNOVERT FSD', 'TECHNOVERT FSD & DBS & COGNIZANT GENC NEXT', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Block Chain, Python, Cloud, Big Data, UX / UI, Mobile Applications, Extended Reality (AR / VR)', 'No', 'Yes', 'GUNDA VENKATA SAI PRAVEEN', 'Male', 97, 96.9, 9.2, 87, 0, '18211a0589@bvrit.ac.in'),
('18211A0590', 'OPENTEXT', 'OPENTEXT', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Cloud, UX / UI, Mobile Applications', 'No', 'Yes', 'SITA VAIBHAVI GUNTURI', 'Female', 87, 92.8, 8.55, 80.5, 0, '18211A0590@bvrit.ac.in'),
('18211A0591', '', 'WIPRO OFF CAMPUS', 'CSE', 'Yes', 'Python', 'No', 'No', 'GURRAM MEGHADEEP ', 'Male', 85, 75, 7.01, 65.1, 0, '18211a0591@bvrit.ac.in'),
('18211A0592', '', 'TCS NINJA & WIPRO - NTH & COGNIZANT GENC & BIRLA SOFT', 'CSE', 'Yes', 'AI / ML, Cyber Security, Block Chain, Python, Mobile Applications', 'No', 'No', 'GURUMALSAIDHEERAJ', 'Male', 90, 89.98, 7.52, 70.2, 0, '18211a0592@bvrit.ac.in'),
('18211A0593', '', 'TCS NINJA', 'CSE', 'Yes', 'Cyber Security, IoT, Python, Mobile Applications', 'No', 'No', 'HEMANTH SAI RAM VARMA P', 'Male', 96, 91, 7.31, 68.1, 0, '18211a0593@bvrit.ac.in'),
('18211A0594', '', 'COGNIZANT GENC', 'CSE', 'No', 'Cyber Security', 'No', 'No', 'J BHEESHMA RAO ', 'Male', 85, 89, 7.11, 66.1, 0, '18211a0594@bvrit.ac.in'),
('18211A0595', '', '', 'CSE', 'Yes', 'AI / ML, IoT, Python', 'No', 'No', 'JAGABATHUNI SAI MOKSHITH', 'Male', 95, 56, 6.88, 63.8, 0, '18211a0595@bvrit.ac.in'),
('18211A0596', '', 'VIRTUSA REGULAR & TCS NINJA & COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'JAJAM NAGA SREEJA', 'Female', 98, 97.9, 8.9, 84, 0, '18211a0596@bvrit.ac.in'),
('18211A0597', 'STATESTREET', 'STATESTREET & WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Python, web technologies', 'No', 'Yes', 'JAKKANNAGARI MADHAN GOUD', 'Male', 92, 97, 8.55, 80.5, 0, '18211a0597@bvrit.ac.in'),
('18211A0598', '', 'CAPGEMINI SR ANALYST & ACCENTURE ADVANCED ASE', 'CSE', 'Yes', 'AI / ML', 'No', 'Yes', 'JALAGAM DINESH', 'Male', 97, 96.5, 8.68, 81.8, 0, '18211a0598@bvrit.ac.in'),
('18211A0599', '', 'BROADRIDGE & WIPRO - NTH & VIRTUSA GENERAL & COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'Python, C', 'No', 'No', 'JANGALI INDUJA', 'Female', 83, 91, 7.95, 74.5, 0, '18211A0599@bvrit.ac.in'),
('18211A05A0', '', 'TCS NINJA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Python, Cloud', 'No', 'No', 'JORIGE UJWAL SAI SATYA', 'Male', 82, 83.8, 7.21, 67.1, 0, '18211A05A0@bvrit.ac.in'),
('18211A05A1', 'DEVATHON & ZAGGLE & KAPTIUS', 'ACCENTURE ASE & KAPTIUS & WIPRO - NTH & TA DIGITAL & ZAGGLE', 'CSE', 'Yes', 'Data Sciences, Python, Big Data, UX / UI, Web development,SQL', 'No', 'Yes', 'JULURU SAITEJA', 'Male', 97, 95.9, 8.81, 83.1, 0, '18211a05a1@bvrit.ac.in'),
('18211A05A2', 'OPENTEXT', 'ACCENTURE ASE & COGNIZANT GENC NEXT & DBS', 'CSE', 'Yes', 'Data Sciences, Python, Big Data, Web application', 'No', 'No', 'K VINAY KUMAR', 'Male', 95, 96, 8.48, 79.8, 0, '18211a05a2@bvrit.ac.in'),
('18211A05A3', '', 'CAPGEMINI ANALYST', 'CSE', 'Yes', 'AI / ML, Block Chain, Python, Mobile Applications', 'No', 'No', 'KOSARAJU SAAKETH', 'Male', 84, 91.2, 8.19, 76.9, 0, '18211a05a3@bvrit.ac.in'),
('18211A05A4', 'OPENTEXT & TECHNOVERT FSD', 'TECHNOVERT FSD', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Block Chain, Python, Cloud, UX / UI, Mobile Applications, Extended Reality (AR / VR), Web Development, Full stack', 'No', 'Yes', 'VIJITH KUSUMBA', 'Male', 95, 93.7, 8.04, 75.4, 0, '18211a05a4@bvrit.ac.in'),
('18211A05A6', 'OPENTEXT & TECHNOVERT FSD', 'TECHNOVERT FSD & TEJAS NETWORKS', 'CSE', 'Yes', 'Data Sciences, Block Chain, Python, Cloud, Big Data, UX / UI, Mobile Applications', 'No', 'Yes', 'MOHITH ABHIRAM KAKUMANU', 'Male', 98, 97.8, 8.93, 84.3, 0, '18211a05a6@bvrit.ac.in'),
('18211A05A7', 'AASEYA PEGA', 'AASEYA PEGA & ACCENTURE ASE', 'CSE', 'Yes', 'Cyber Security, IoT, Python, Mobile Applications, Database management(Oracle, SQL)', 'Yes', 'No', 'KALAPALA SATHVIKA', 'Female', 90, 93.1, 7.38, 68.8, 0, '18211a05a7@bvrit.ac.in'),
('18211A05A8', 'IBM ISL & KAPTIUS', 'LTI LEVEL - 2 & ACCENTURE ASE & KAPTIUS & COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'Python, Mobile Applications, Web technologies', 'No', 'Yes', 'SANJANA KALEWAR', 'Female', 97, 98, 9.01, 85.1, 0, '18211a05a8@bvrit.ac.in'),
('18211A05A9', '', '', 'CSE', 'Yes', 'AI / ML', 'No', 'No', 'VISHNU KALUVAKUNTLA', 'Male', 95, 86, 6.77, 62.7, 0, '18211a05a9@bvrit.ac.in'),
('18211A05B0', '', 'VIRTUSA REGULAR & TCS NINJA', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Block Chain, Python, java,c,cpp,sql', 'No', 'Yes', 'KALWAKOLU VIKITHA', 'Female', 85, 79.1, 7.94, 74.4, 0, '18211A05B0@bvrit.ac.in'),
('18211A05B1', 'MICRON', 'TA DIGITAL & LATENTVIEW & MICRON & INFOSYS SE', 'CSE', 'Yes', 'AI / ML, Python, Cloud, UX / UI, Mobile Applications, web applications: Django, NodeJS', 'No', 'Yes', 'KANCHI MANIKANTHA', 'Male', 80, 77.4, 7.93, 74.3, 0, '18211A05B1@bvrit.ac.in'),
('18211A05B2', '', 'VIRTUSA GENERAL & WIPRO - NTH', 'CSE', 'Yes', 'Block Chain, Python, Cloud', 'No', 'Yes', 'KANDREGULA CHARAN SIDDHARTH', 'Male', 92, 88.6, 7.26, 67.6, 0, '18211A05B2@bvrit.ac.in'),
('18211A05B3', '', '', 'CSE', 'Yes', 'AI / ML, Cyber Security, Python, Mobile Applications', 'No', 'No', 'KANKANALA SAI PRANEETH', 'Male', 82, 90, 6.71, 62.1, 0, '18211a05b3@bvrit.ac.in'),
('18211A05B4', '', '', 'CSE', 'Yes', 'Data Sciences, Python, Cloud, Big Data, Mobile Applications, C', 'No', 'Yes', 'KAREM SHARON PSALM', 'Female', 92, 79, 6.56, 60.6, 0, '18211a05b4@bvrit.ac.in '),
('18211A05B5', 'APTEAN', 'HEXAWARE - GET & WIPRO - NTH & VIRTUSA GENERAL & LATENTVIEW & APTEAN & COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'Data Sciences, Cyber Security, IoT, Python, Mobile Applications, Java,c', 'No', 'No', 'KARIDAS MAHESH KUMAR', 'Male', 97, 97.9, 8.22, 77.2, 0, '18211a05b5@bvrit.ac.in'),
('18211A05B6', '', 'WIPRO - NTH & WIPRO OFF CAMPUS', 'CSE', 'Yes', 'AI / ML, IoT, Block Chain, Python', 'No', 'No', 'KARKAM PRASHANTH', 'Male', 92, 96, 7.44, 69.4, 0, '18211a05b6@bvrit.ac.in'),
('18211A05B7', '', 'INFOSYS SE & LTI LEVEL - 3 & CAPGEMINI ANALYST', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Block Chain, Python, JAVA,C++,C', 'No', 'Yes', 'KARRI THANOOSHA NAIDU', 'Female', 100, 97.3, 8.75, 82.5, 0, '18211A05B7@bvrit.ac.in'),
('18211A05B8', '', 'LTI LEVEL - 2', 'CSE', 'Yes', 'AI / ML, Cyber Security, Block Chain, Python, Mobile Applications', 'No', 'No', 'KARUMANCHI VENKATA MOULI', 'Male', 98, 93, 7.51, 70.1, 0, '18211A05b8@bvrit.ac.in'),
('18211A05B9', 'ARETEANS PEGA & VERIZON PEGA', 'ARETEANS PEGA & CAPGEMINI ANALYST & BOFA PEGA & TCS NINJA & VERIZON PEGA', 'CSE', 'Yes', 'Cyber Security, IoT, Python, Mobile Applications, Database Management(Oracle SQL)', 'Yes', 'No', 'KATRAGADDA SAI PRANEETHA ', 'Female', 98, 98.3, 9.26, 87.6, 0, '18211a05b9@bvrit.ac.in'),
('18211A05C0', 'OPENTEXT', 'OPENTEXT', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, UX / UI, Web developement', 'No', 'Yes', 'KATTUKOLU SRISRI REDDY', 'Male', 98, 95.9, 8.61, 81.1, 0, '18211a05c0@bvrit.ac.in'),
('18211A05C1', 'OPENTEXT', 'INFOSYS SE & OPENTEXT', 'CSE', 'Yes', 'AI / ML, Python, Cloud, Mobile Applications, Web Development(Backend Developer),Database Management(Oracle SQL)', 'No', 'Yes', 'KAUSHIK PATTIPATI', 'Male', 96, 95.2, 8.33, 78.3, 0, '18211a05c1@bvrit.ac.in'),
('18211A05C2', 'APTEAN', 'INFOSYS SE & ACCENTURE ADVANCED ASE & TA DIGITAL & APTEAN', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Cloud, UX / UI, Mobile Applications', 'No', 'Yes', 'VAMSHI KEELA', 'Male', 87, 95.9, 8.21, 77.1, 0, '18211a05c2@bvrit.ac.in'),
('18211A05C3', '', 'SKOLAR', 'CSE', 'No', 'Cyber Security, IoT, Python', 'No', 'No', 'KODALI NANDINI ', 'Female', 90, 82.4, 7.02, 65.2, 0, '18211a05c3@bvrit.ac.in '),
('18211A05C4', '', '', 'CSE', 'No', 'Python, C,web application', 'No', 'No', 'REVANTH KOGANTI', 'Male', 83, 89, 6.35, 58.5, 0, '18211a05c4@bvrit.ac.in'),
('18211A05C5', 'AMAZON NON SDE PROGRAMMER ANALYST', 'LTI LEVEL - 1 & CAPGEMINI ANALYST & ACCENTURE ASE & ALTIMETRIK & AMAZON NON SDE PROGRAMMER ANALYST', 'CSE', 'Yes', 'Data Sciences, Cyber Security, Python, Cloud, Mobile Applications', 'No', 'Yes', 'KOKA PRANATI SANJANA ', 'Female', 97, 96.7, 8.63, 81.3, 0, '18211a05c5@bvrit.ac.in '),
('18211A05C6', 'ARETEANS PEGA', 'ARETEANS PEGA & LTI LEVEL - 2 & WIPRO - NTH', 'CSE', 'No', 'AI / ML, IoT, Python, Cloud, Mobile Applications', 'Yes', 'No', 'KONDAKALLA VIKAS REDDY ', 'Male', 92, 96, 8.33, 78.3, 0, '18211A05C6@bvrit.ac.in'),
('18211A05C7', 'ARETEANS PEGA', 'ARETEANS PEGA', 'CSE', 'Yes', 'AI / ML, IoT, Python', 'Yes', 'No', 'AKHILA KONDAPARTHI', 'Female', 100, 98.6, 8.08, 75.8, 0, '18211a05c7@bvrit.ac.in'),
('18211A05C8', '', 'MPHASIS', 'CSE', 'No', 'Python, C ,  web application', 'No', 'No', 'KONDI BOYINA DILIP', 'Male', 90, 93, 6.72, 62.2, 0, '18211a05c8@bvrit.ac.in'),
('18211A05C9', '', '', 'CSE', 'No', 'IoT, Python', 'No', 'No', 'KONJARLA LOHITH', 'Male', 90, 88.2, 6.41, 59.1, 0, '18211a05c9@bvrit.ac.in'),
('18211A05D0', 'OPENTEXT', 'CAPGEMINI ANALYST & INFOSYS SE', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Mobile Applications, C,JAVA', 'No', 'Yes', 'KONREDDY SHREYA', 'Female', 100, 98.7, 9.07, 85.7, 0, '18211a05d0@bvrit.ac.in'),
('18211A05D1', '', 'INFOSYS SE & ACCENTURE ADVANCED ASE', 'CSE', 'No', 'AI / ML, Python, Cloud, UX / UI, Mobile Applications', 'No', 'Yes', 'KONURI SAI PRANEETH', 'Male', 93, 98.5, 9.15, 86.5, 0, '18211a05d1@bvrit.ac.in'),
('18211A05D2', '', '', 'CSE', 'Yes', 'AI / ML, IoT', 'No', 'No', 'KOTAPATI VISHNU VARDHAN', 'Male', 92, 98, 6.73, 62.3, 0, '18211A05D2@bvrit.ac.in'),
('18211A05D3', '', 'CAPGEMINI ANALYST', 'CSE', 'Yes', 'AI / ML, IoT, Python', 'No', 'No', 'KOTAGIRI RAHUL', 'Male', 92, 95.6, 7.58, 70.8, 0, '18211a05d3@bvrit.ac.in'),
('18211a05D4', 'AMAZON NON SDE DATA ENGINEER & KAPTIUS', 'VIRTUSA REGULAR & KAPTIUS & ALTIMETRIK', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Python, Cloud, Big Data, UX / UI, Mobile Applications, Web Design and Applications, Robotic Process Automation', 'No', 'Yes', 'KOTA VIKRAMDEV', 'Male', 98, 97.7, 9.32, 88.2, 0, '18211a05d4@bvrit.ac.in'),
('18211A05D5', 'OPENTEXT & AMAZON NON SDE PROGRAMMER ANALYST', 'OPENTEXT & WALMART & AMAZON NON SDE PROGRAMMER ANALYST', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'KOTHAPALLI SRI LAKSHMI POOJITHA', 'Female', 97, 97.9, 9.22, 87.2, 0, '18211a05d5@bvrit.ac.in'),
('18211A05D6', '', 'MUSIGMA & COGNIZANT GENC', 'CSE', 'No', 'Cyber Security, Python, Cloud', 'Yes', 'No', 'RASHMIKA KOTHAPALLY', 'Female', 93, 96, 7.56, 70.6, 0, '18211a05d6@bvrit.ac.in'),
('18211A05D7', 'ZEMOSO & JUPITER & AMAZON SDE-FULL TIME & ACCOLITE', 'INFOSYS DSE & ZEMOSO & ACCOLITE & AMAZON SDE-FULL TIME', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Block Chain, Python, Cloud, Big Data, UX / UI, Mobile Applications, Web development', 'No', 'Yes', 'KOTTA PAVANTEJA', 'Male', 88, 98.8, 9.11, 86.1, 0, '18211A05D7@bvrit.ac.in'),
('18211A05D8', '', '', 'CSE', 'Yes', 'Data Sciences, Cyber Security, Python, Mobile Applications', 'No', 'No', 'SAI SATHWIK KOTTAPALLY', 'Male', 88, 82.5, 6.64, 61.4, 0, '18211A05D8@bvrit.ac.in'),
('18211A05D9', 'AASEYA PEGA', 'VIRTUSA REGULAR & AASEYA PEGA', 'CSE', 'Yes', 'AI / ML, Python', 'Yes', 'No', 'KOUKUNTLA SAHITYA REDDY', 'Female', 96, 90.5, 7.26, 67.6, 0, '18211A05D9@bvrit.ac.in'),
('18211A05E0', '', 'LTI LEVEL - 2 & COGNIZANT GENC NEXT', 'CSE', 'Yes', 'Cyber Security, Python, Mobile Applications', 'No', 'Yes', 'KUCHAN PRIYANKA', 'Female', 97, 97.5, 8.71, 82.1, 0, '18211a05e0@bvrit.ac.in'),
('18211A05E1', '', 'LTI LEVEL - 2 & COGNIZANT GENC & RECRUIT CRM', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'KURELLA HARIKA', 'Female', 93, 98.4, 8.83, 83.3, 0, '18211a05e1@bvrit.ac.in'),
('18211A05E2', '', 'TCS PEGA & ACCENTURE ASE', 'CSE', 'Yes', 'Data Sciences, Cyber Security, Block Chain, Python, Cloud, Big Data, Mobile Applications', 'Yes', 'No', 'MOUNIKA KURICHETI ', 'Female', 87, 96, 7.72, 72.2, 0, '18211a05e2@bvrit.ac.in'),
('18211A05E3', '', 'VIRTUSA PEGA & LEGATO PEGA', 'CSE', 'Yes', 'IoT, Python', 'Yes', 'No', 'KURTHY PALLAVI', 'Female', 98, 90, 7.97, 74.7, 0, '18211a05e3@bvrit.ac.in'),
('18211A05E4', 'ZEMOSO', 'LTI LEVEL - 2 & ZEMOSO', 'CSE', 'Yes', 'Data Sciences, Python, Mobile Applications', 'No', 'Yes', 'LOKANI AVINASH VARDHAN', 'Male', 92, 94, 8.23, 77.3, 0, '18211a05e4@bvrit.ac.in'),
('18211A05E5', '', 'WIPRO - NTH & COGNIZANT GENC', 'CSE', 'Yes', 'Data Sciences, Cyber Security, IoT, Python, Cloud', 'No', 'Yes', 'M RAJESH NAYAK', 'Male', 92, 94.4, 7.91, 74.1, 0, '18211a05e5@bvrit.ac.in'),
('18211A05E6', '', 'VIRTUSA DIFFERENTIAL & INFOSYS DSE & DBS & WELLS FARGO OFF CAMPUS', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'LIKITHA MADDIKARA ', 'Female', 100, 96, 8.92, 84.2, 0, '18211a05e6@bvrit.ac.in'),
('18211A05E7', '', 'VIRTUSA PEGA & LEGATO PEGA', 'CSE', 'Yes', 'Data Sciences, Cyber Security, IoT, Python, Cloud, Big Data, UX / UI, Mobile Applications, Webdesign and applications,Pega', 'Yes', 'No', 'MADIREDDY VENKATA TANUJA', 'Female', 97, 98, 8.56, 80.6, 0, '18211a05e7@bvrit.ac.in'),
('18211A05E8', '', '', 'CSE', 'No', 'Data Sciences', 'Yes', 'Yes', 'MADRI HEMA DEVI ', 'Female', 87, 89, 6.82, 63.2, 0, '18211a05e8@bvrit.ac.in'),
('18211A05E9', '', 'MUSIGMA & WIPRO - NTH & LEGATO PEGA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Mobile Applications', 'Yes', 'No', 'MAHANKALI SHAILAJA', 'Female', 93, 92, 7.82, 73.2, 0, '18211a05e9@bvrit.ac.in'),
('18211A05F0', '', 'VIRTUSA REGULAR & LTI LEVEL - 2', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Block Chain, Python, Cloud, Big Data, UX / UI, Mobile Applications, Web Technology', 'No', 'Yes', 'MALLADI KARTHIK', 'Male', 95, 96.2, 8.65, 81.5, 0, '18211a05f0@bvrit.ac.in'),
('18211A05F1', '', 'INFOSYS SE & VIRTUSA GENERAL & WIPRO - NTH & COGNIZANT GENC ELEVATE', 'CSE', 'No', 'IoT, Block Chain, Python, Mobile Applications', 'No', 'Yes', 'MALLEPALLY SANDEEP GOUD', 'Male', 95, 94, 7.73, 72.3, 0, '18211a05f1@bvrit.ac.in'),
('18211A05F2', '', 'TCS NINJA & WIPRO - NTH & VIRTUSA GENERAL & DBS & COGNIZANT GENC', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python, Big Data, Mobile Applications', 'No', 'No', 'MALOTH RAJU', 'Male', 88, 94, 8.4, 79, 0, '18211a05f2@bvrit.ac.in'),
('18211A05F3', 'MODAK', 'MODAK & CAPGEMINI ANALYST & ALTIMETRIK & COGNIZANT GENC ELEVATE & DBS', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'MANDAPALLI VARSHITHA', 'Female', 100, 98.5, 9.08, 85.8, 0, '18211a05f3@bvrit.ac.in'),
('18211A05F4', '', 'ACCENTURE ASE & MUSIGMA & VIRTUSA GENERAL & SKOLAR\n', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Block Chain, Python, Cloud, Big Data, Mobile Applications', 'No', 'No', 'MANDEEP KAUR', 'Female', 90, 94, 8.13, 76.3, 0, '18211a05f4@bvrit.ac.in'),
('18211A05F5', 'PRAMATI', 'WIPRO - NTH & VIRTUSA GENERAL & PRAMATI', 'CSE', 'Yes', 'Data Sciences, Python', 'No', 'No', 'MANGALI PRASHANTH', 'Male', 92, 97, 7.91, 74.1, 0, '18211a05f5@bvrit.ac.in'),
('18211A05F6', '', 'VIRTUSA GENERAL & WIPRO OFF CAMPUS', 'CSE', 'Yes', 'Cyber Security, Python', 'Yes', 'No', 'MANNAM SARAN', 'Male', 93, 88.3, 7.34, 68.4, 0, '18211a05f6@bvrit.ac.in'),
('18211A05F7', '', 'VIRTUSA REGULAR & LTI LEVEL - 2', 'CSE', 'Yes', 'AI / ML, IoT, Python, Cloud, UX / UI, Mobile Applications', 'No', 'Yes', 'MANOJ DATTATREYA MYNENI', 'Male', 93, 95.6, 8.49, 79.9, 0, '18211a05f7@bvrit.ac.in'),
('18211A05F8', 'ZESSTA', 'INFOSYS SE & ZESSTA', 'CSE', 'Yes', 'IoT, Python, Cloud, Big Data', 'No', 'No', 'SHASHIDHAR MARUPAKA', 'Male', 85, 96.4, 7.94, 74.4, 0, '18211a05f8@bvrit.ac.in'),
('18211A05F9', '', 'WIPRO - NTH', 'CSE', 'No', 'Cyber Security, Block Chain, Python, Cloud, Mobile Applications, Java, C', 'No', 'No', 'VENKATA VINDU KUMAR MARUPUDI', 'Male', 92, 87, 6.81, 63.1, 0, '18211a05f9@bvrit.ac.in'),
('18211A05G0', '', 'TCS TOPPERS NINJA & VIRTUSA GENERAL', 'CSE', 'Yes', 'Cyber Security, IoT, Block Chain, Python, Cloud, Mobile Applications, C, Java, SQL,HTML5', 'No', 'Yes', 'MD ABDUL SUBOORUDDIN ', 'Male', 93, 98.2, 8.24, 77.4, 0, '18211a05g0@bvrit.ac.in'),
('18211A05G1', '', 'LTI LEVEL - 3 & CAPGEMINI ANALYST', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Cloud', 'No', 'No', 'MEDARA PRUTHVIRAJ', 'Male', 97, 95.2, 7.03, 65.3, 0, '18211a05g1@bvrit.ac.in'),
('18211A05G2', 'OPENTEXT', '', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Cloud, UX / UI, Mobile Applications, Extended Reality (AR / VR), Web Applications', 'No', 'Yes', 'MEESALA JAYAWARDHAN', 'Male', 92, 81.7, 8.38, 78.8, 0, '18211a05g2@bvrit.ac.in'),
('18211A05G3', '', 'WIPRO - NTH & LEGATO PEGA', 'CSE', 'Yes', 'AI / ML, Python', 'Yes', 'No', 'MERIGALA MAHIMA DEEPTHI', 'Female', 90, 85.1, 7.3, 68, 0, '18211a05g3@bvrit.ac.in'),
('18211A05G4', '', 'VIRTUSA REGULAR & LTI LEVEL - 2 & TCS NINJA & DBS', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'METTALA ANUSRI', 'Female', 97, 98.2, 9.03, 85.3, 0, '18211a05g4@bvrit.ac.in'),
('18211A05G5', '', 'VIRTUSA REGULAR & ALTIMETRIK & COGNIZANT GENC ELEVATE & DBS', 'CSE', 'Yes', 'IoT, Python, Cloud, Mobile Applications', 'No', 'Yes', 'MIRGUDE SAMEEKSHA', 'Female', 93, 97.4, 8.7, 82, 0, '18211a05g5@bvrit.ac.in'),
('18211A05G6', 'OPENTEXT', '', 'CSE', 'Yes', 'Data Sciences, Cyber Security, Block Chain, Python, Big Data, Mobile Applications, Extended Reality (AR / VR)', 'Yes', 'No', 'MOHAMMED ABUBAKAR', 'Male', 93, 91.5, 7.95, 74.5, 0, '18211a05g6@bvrit.ac.in'),
('18211A05G7', '', 'MPHASIS', 'CSE', 'No', 'AI / ML, Data Sciences, Cyber Security, Python, Mobile Applications', 'No', 'No', 'MOLIGERI PRADEEP KUMAR', 'Male', 90, 97, 6.99, 64.9, 0, '18211a05g7@bvrit.ac.in'),
('18211A05G8', '', 'ACCENTURE ASE & TCS NINJA', 'CSE', 'Yes', 'Cyber Security, IoT, Block Chain, Cloud, Mobile Applications, Html,C', 'No', 'Yes', 'MOHAMMED AYAAN AHMED', 'Male', 97, 96, 8.23, 77.3, 0, '18211a05g8@bvrit.ac.in'),
('18211A05G9', '', 'PACKETPREP', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python, Cloud, Big Data, UX / UI, Mobile Applications, Java programming', 'Yes', 'No', 'MUNDRU LEELA KRISHNA MOHAN', 'Male', 90, 88.1, 6.9, 64, 0, '18211A05G9@bvrit.ac.in'),
('18211A05H0', 'HARMAN COCUBES', 'SUNERA TECH & ZENSAR & INFOSYS SE & HARMAN COCUBES', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Block Chain, Python, Cloud, Mobile Applications, C,JAVA,SQL,HTML 5', 'No', 'Yes', 'MOHAMMED IMROZE', 'Male', 92, 96.4, 7.78, 72.8, 0, '18211a05h0@bvrit.ac.in'),
('18211A05H1', '', '', 'CSE', 'No', 'AI / ML, Mobile Applications', 'No', 'No', 'JAYANTH MUTHYAPAGA', 'Male', 85, 78, 5.44, 49.4, 6, '1821a05h1@bvrit.ac.in'),
('18211A05H2', 'MODAK', 'MODAK & TCS TOPPERS DIGITAL & INFOSYS SE', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Block Chain, Python, Cloud, Mobile Applications', 'Yes', 'No', 'SUDHEER CHARAN MOPURI', 'Male', 98, 97.6, 8.31, 78.1, 0, '18211a05h2@bvrit.ac.in'),
('18211A05H3', '', '', 'CSE', 'No', 'Mobile Applications', 'No', 'No', 'MOHAMMED TAQIMAAZ', 'Male', 78, 67, 5.44, 49.4, 7, '18211a05h3@bvrit.ac.in'),
('18211A05H4', '', '', 'CSE', 'Yes', 'Data Sciences, Cyber Security, Cloud, Mobile Applications', 'No', 'No', 'ANAND VARMA KALIDINDI', 'Male', 81, 83, 5.72, 52.2, 5, '18211A05H4@bvrit.ac.in'),
('18211A05H5', 'VIRTUSA NEURALHACK', 'VIRTUSA REGULAR & VIRTUSA NEURALHACK & TCS TOPPERS NINJA & TA DIGITAL & PERSISTENT VIVEKA', 'CSE', 'No', 'Cyber Security, Mobile Applications', 'No', 'Yes', 'MOHAMMED FAROOQ AHMED', 'Male', 97, 92.8, 7.33, 68.3, 0, '18211a05h5@bvrit.ac.in'),
('18211A05H6', '', '', 'CSE', 'No', 'Cyber Security, Cloud', 'No', 'No', 'MUTHKANI AKHIL KUMAR', 'Male', 100, 94.5, 7.31, 68.1, 0, '18211a05h6@bvrit.ac.in'),
('18211A05H7', '', 'INFOSYS SE', 'CSE', 'No', 'AI / ML, IoT, Python, Mobile Applications', 'No', 'No', 'MOHAMMED RIYAZ UDDIN', 'Male', 95, 93.3, 7.67, 71.7, 0, '18211a05h7@bvrit.ac.in'),
('18211A05H8', '', 'LTI LEVEL - 2 & CAPGEMINI ANALYST & ACCENTURE ADVANCED ASE & COGNIZANT GENC ELEVATE & SKOLAR', 'CSE', 'Yes', 'Data Sciences, Cyber Security, Python, Extended Reality (AR / VR)', 'Yes', 'No', 'NALLASIVAKUMARREDDY', 'Male', 92, 91.7, 8.01, 75.1, 0, '18211a05h8@bvrit.ac.in'),
('18211A05H9', '', 'TCS NINJA & WIPRO - NTH', 'CSE', 'No', 'AI / ML, IoT, Python, Cloud, Mobile Applications', 'No', 'Yes', 'MANISHANKAR NAGARJUNA ', 'Male', 88, 95.9, 7.34, 68.4, 0, '18211a05h9@bvrit.ac.in '),
('18211A05J0', '', '', 'CSE', 'No', 'Data Sciences, Cyber Security, Python, Big Data, Extended Reality (AR / VR)', 'No', 'No', 'NAGILLA PRANAV KALYAN', 'Male', 78, 72, 6.41, 59.1, 0, '18211A05J0@bvrit.ac.in'),
('18211A05J1', '', 'MUSIGMA & ACCENTURE ASE & COGNIZANT GENC', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python, Mobile Applications', 'No', 'No', 'NALLA GANGA BHAVANI', 'Female', 90, 97, 7.56, 70.6, 0, '18211a05j1@bvrit.ac.in'),
('18211A05J2', '', 'VIRTUSA REGULAR & TA DIGITAL', 'CSE', 'Yes', 'AI / ML, IoT, Python, WEB DEVELOPMENT', 'No', 'Yes', 'NALLAPU VENU', 'Male', 78, 92.5, 8.43, 79.3, 0, '18211a05j2@bvrit.ac.in'),
('18211A05J3', '', 'MUSIGMA & COGNIZANT GENC ELEVATE & HEXAWARE - GET', 'CSE', 'Yes', 'AI / ML, Cyber Security, Python', 'No', 'Yes', 'NARAHARI SHREYA REDDY', 'Female', 92, 96.2, 8.03, 75.3, 0, '18211A05J3@bvrit.ac.in'),
('18211A05J4', 'ACADEMOR', 'CAPGEMINI ANALYST', 'CSE', 'Yes', 'AI / ML, IoT, Python, Mobile Applications, Web development', 'No', 'No', 'NAROLLA VINAY KUMAR', 'Male', 97, 97.4, 8.35, 78.5, 0, '18211a05j4@bvrit.ac.in'),
('18211A05J5', '', 'WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python, Mobile Applications', 'No', 'Yes', 'NENAVATH SATISH', 'Male', 88, 91, 6.56, 60.6, 0, '18211a05j5@bvrit.ac.in'),
('18211A05J6', 'STATESTREET', 'ACCENTURE ASE & STATESTREET', 'CSE', 'Yes', 'IoT, Python, Mobile Applications, Web development', 'Yes', 'No', 'NENAVATH VISHAL RATHOD', 'Male', 93, 93.9, 7.82, 73.2, 0, '18211a05j6@bvrit.ac.in'),
('18211A05J7', 'IBM & AMAZON SDE-FULL TIME & INFOEDGE', 'INFOEDGE & IBM & AMAZON SDE-FULL TIME', 'CSE', 'Yes', 'Data Sciences, Cyber Security, IoT, Python, Big Data, Mobile Applications', 'No', 'Yes', 'N. KEERTHI REDDY', 'Female', 100, 98.8, 9.4, 89, 0, '18211A05J7@bvrit.ac.in'),
('18211A05J8', '', 'COGNIZANT GENC ELEVATE', 'CSE', 'No', 'AI / ML, Mobile Applications', 'No', 'No', 'NETHI SAI CHARAN', 'Male', 98, 87, 6.35, 58.5, 0, '18211a05j8@bvrit.ac.in'),
('18211A05J9', '', '', 'CSE', 'Yes', 'Data Sciences, Block Chain, Python, Big Data', 'No', 'No', 'NIHAL ROMAHARSHANA KOTHURI', 'Male', 74.5, 81.6, 6.45, 59.5, 0, '18211A05J9@bvrit.ac.in'),
('18211A05K0', '', 'CAPGEMINI ANALYST & ACCENTURE ASE', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python, Cloud, Mobile Applications', 'No', 'Yes', 'NIMMA SAI VINITH REDDY', 'Male', 88, 94.5, 7.42, 69.2, 0, '18211A05K0@bvrit.ac.in'),
('18211A05K1', '', 'WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, IoT, Python', 'No', 'Yes', 'NIMMAGADDA THRINADH SAI', 'Male', 85, 93.3, 7.15, 66.5, 0, '18211a05k1@bvrit.ac.in'),
('18211A05K2', 'HARMAN COCUBES', 'HARMAN COCUBES & WIPRO OFF CAMPUS', 'CSE', 'Yes', 'AI / ML, IoT, Python, web development', 'No', 'Yes', 'AITHA NISHANTH RAGHAVA', 'Male', 93, 81.3, 7.14, 66.4, 0, '18211a05k2@bvrit.ac.in'),
('18211A05K3', 'ARETEANS PEGA', 'ARETEANS PEGA & BOFA PEGA', 'CSE', 'Yes', 'AI / ML, Python, Mobile Applications', 'Yes', 'Yes', 'NIZAMPURAM PARIMALA', 'Female', 92, 89.9, 8.71, 82.1, 0, '18211a05k3@bvrit.ac.in'),
('18211A05K4', 'OPENTEXT & IBM', 'INFOSYS PP & IBM & OPENTEXT & PLAYSIMPLEGAMES', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data, Mobile Applications, Web development', 'No', 'Yes', 'NOMULA ABHIGNYA', 'Female', 98, 97.9, 8.95, 84.5, 0, '18211a05k4@bvrit.ac.in'),
('18211A05K6', '', 'INFOSYS SE & LTI LEVEL - 3', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Python, Cloud, Big Data, Mobile Applications', 'No', 'Yes', 'VIVEK OLLADAPU', 'Male', 100, 96.4, 8.37, 78.7, 0, '18211A05K6@bvrit.ac.in'),
('18211A05K7', '', 'VIRTUSA PEGA', 'CSE', 'Yes', 'Cyber Security, IoT, Python, Mobile Applications', 'Yes', 'Yes', 'SREELEKHA ONTEDDU ', 'Female', 95, 87, 7.96, 74.6, 0, '18211A05K7@bvrit.ac.in'),
('18211A05K8', 'TECHNOVERT SEDA & ATHENAHEALTH', 'TECHNOVERT SEDA & INFOSYS SE', 'CSE', 'Yes', 'AI / ML, Python, Mobile Applications', 'Yes', 'Yes', 'GORUGANTHU SAI KEERTHANA ', 'Female', 100, 98.5, 9.63, 91.3, 0, '18211A05K8@bvrit.ac.in'),
('18211A05K9', '', 'LTI LEVEL - 2 & CAPGEMINI ANALYST & TCS NINJA & ACCENTURE ADVANCED ASE & INFOSYS SE', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Python', 'No', 'No', 'P HRUSHIKESH', 'Male', 95, 97.4, 8.54, 80.4, 0, '18211a05k9@bvrit.ac.in'),
('18211A05L0', '', 'VIRTUSA REGULAR & DBS', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, languages:Java,C ', 'No', 'Yes', 'PALACHERLA HARSHIT BHARGAVA', 'Male', 97, 95, 8.14, 76.4, 0, '18211A05L0@bvrit.ac.in'),
('18211A05L1', 'AASEYA PEGA', 'AASEYA PEGA & TEACHNOOK', 'CSE', 'Yes', 'IoT, UX / UI, Mobile Applications', 'Yes', 'No', 'PALEPU SRIKAR', 'Male', 93, 81.5, 6.83, 63.3, 0, '18211a05l1@bvrit.ac.in'),
('18211A05L2', '', 'TCS PEGA & INCEDO PEGA', 'CSE', 'Yes', 'IoT, Python, Mobile Applications', 'Yes', 'No', 'SPANDANA PALLEMIDI', 'Female', 95, 94.8, 7.88, 73.8, 0, '18211a05l2@bvrit.ac.in'),
('18211A05L3', '', '', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python', 'No', 'No', 'PARNE SRIVASTHAV REDDY', 'Male', 88, 81, 6.66, 61.6, 0, '18211a05l3@bvrit.ac.in'),
('18211A05L4', 'MICRON', 'MICRON', 'CSE', 'Yes', 'Python, Big Data, C , introduction to associate analytics ', 'No', 'Yes', 'PATI TANYA SRI', 'Female', 100, 96, 8.61, 81.1, 0, '18211a05l4@bvrit.ac.in '),
('18211A05L5', '', 'COGNIZANT GENC NEXT & ZENSAR ', 'CSE', 'Yes', 'Data Sciences, Cyber Security, Python, Mobile Applications', 'No', 'No', 'PATLOLLA KARTHIK REDDY', 'Male', 98, 95, 7.43, 69.3, 0, '18211a05l5@bvrit.ac.in'),
('18211A05L6', '', 'DBS', 'CSE', 'Yes', 'Data Sciences, Python', 'No', 'No', 'PATLOLLA SHRAVALIKA', 'Female', 92, 84.4, 7.43, 69.3, 0, '18211a05l6@bvrit.ac.in'),
('18211A05L7', '', 'WIPRO - NTH', 'CSE', 'No', 'AI / ML, Python', 'No', 'No', 'PEDDI MAHI CHARAN TEJA', 'Male', 85, 90, 6.74, 62.4, 0, '18211a05l7@bvrit.ac.in'),
('18211A05L8', '', 'CAPGEMINI ANALYST & WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Cloud, Big Data', 'No', 'No', 'PENMETSA SHREYAS VARMA', 'Male', 96, 91.7, 6.57, 60.7, 0, '18211a05l8@bvrit.ac.in'),
('18211A05L9', '', 'ACCENTURE ASE', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'No', 'PENNA JAYANTH', 'Male', 97, 98, 7.69, 71.9, 0, '18211a05l9@bvrit.ac.in'),
('18211A05M0', '', 'MOUNTBLUE TECHNOLOGIES OFF CAMPUS', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Block Chain, Python', 'No', 'No', 'PENUMAKA VENKATA DURGA ABHINAV', 'Male', 80, 62.8, 6.55, 60.5, 2, '18211a05m0@bvrit.ac.in'),
('18211A05M1', '', 'LTI LEVEL - 3 & CAPGEMINI ANALYST', 'CSE', 'No', 'Cyber Security, Python, Cloud', 'No', 'No', 'PESALA SAI SUCHITH', 'Male', 95, 91, 8.04, 75.4, 0, '18211a05m1@bvrit.ac.in'),
('18211A05M2', 'BYTES INDIA', 'BYTES INDIA & WIPRO - NTH & INFOSYS SE & INTELLIPAAT-BDT', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python', 'No', 'No', 'PITLA DHAMODHAR', 'Male', 95, 95.7, 7.69, 71.9, 0, '18211a05m2@bvrit.ac.in'),
('18211A05M3', '', 'TCS TOPPERS NINJA & WIPRO - NTH & PERSISTENT NAVAYUGA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Python', 'No', 'No', 'POOJARI VYSHNAV', 'Male', 90, 89, 7.03, 65.3, 0, '18211a05m3@bvrit.ac.in'),
('18211A05M4', 'OPENTEXT', 'INFOSYS SE & OPENTEXT', 'CSE', 'Yes', 'AI / ML, Python, Web applications ', 'No', 'No', 'HARISH POTHARAJ', 'Male', 92, 92, 7.98, 74.8, 0, '18211a05m4@bvrit.ac.in'),
('18211A05M5', '', 'LTI LEVEL - 2', 'CSE', 'Yes', 'IoT, Python, Cloud', 'Yes', 'No', 'PRANEETH KANDRU ', 'Male', 81, 82, 6.93, 64.3, 0, '18211a05m5@bvrit.ac.in'),
('18211A05M6', '', '', 'CSE', 'Yes', 'Data Sciences, Cyber Security, Python, Cloud', 'No', 'No', 'PUJARI  SAI KIRAN', 'Male', 83, 90, 6.37, 58.7, 0, '18211a05m6@bvrit.ac.in'),
('18211A05M7', '', 'WIPRO - NTH & ACCENTURE ADVANCED ASE', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Python', 'No', 'No', 'PUPPALA DAYA SAI NIKHILESH', 'Male', 88, 89, 6.9, 64, 0, '18211a05m7@bvrit.ac.in'),
('18211A05M8', '', 'X0RIANT SUPERNOVA & INFOSYS DSE', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'No', 'PURALASETTY VENKATESH', 'Male', 97, 97, 8.41, 79.1, 0, '18211a05m8@bvrit.ac.in'),
('18211A05M9', '', 'HIGHER STUDIES', 'CSE', 'No', 'Python, Java', 'No', 'No', 'PYDIMARRY VARUNSAI', 'Male', 88, 94.9, 7.03, 65.3, 0, '18211A05M9@bvrit.ac.in'),
('18211A05N0', '', 'CAPGEMINI ANALYST & TCS NINJA & ACCENTURE ADVANCED ASE & COGNIZANT GENC ELEVATE & BRANE ENTERPRISES', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data, Mobile Applications', 'No', 'Yes', 'RACHAKONDA PAVANKALYAN', 'Male', 90, 89.4, 8.01, 75.1, 0, '18211a05n0@bvrit.ac.in'),
('18211A05N1', '', 'TCS NINJA & WIPRO - NTH & TA DIGITAL', 'CSE', 'No', 'AI / ML, Data Sciences, Python', 'No', 'Yes', 'RAHUL SAI JANGILI', 'Male', 100, 96.5, 8.28, 77.8, 0, '18211A05N1@bvrit.ac.in'),
('18211A05N2', '', 'CAPGEMINI ANALYST & INFOSYS SE', 'CSE', 'Yes', 'AI / ML, Python, Mobile Applications, Web Development', 'No', 'Yes', 'RAHUL C', 'Male', 94, 80, 7.89, 73.9, 0, '18211a05n2@bvrit.ac.in'),
('18211A05N3', '', 'WIPRO - NTH & VIRTUSA GENERAL', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python', 'No', 'No', 'DOSALA RAKESH', 'Male', 88, 75, 7.51, 70.1, 0, '18211a05n3@bvrit.ac.in'),
('18211A05N4', '', 'ACCENTURE ASE & HEXAWARE - PGET', 'CSE', 'Yes', 'AI / ML, IoT, Python, Mobile Applications', 'No', 'No', 'RAMA AASISH VARMA DANTULURI', 'Male', 96, 93.8, 7.42, 69.2, 0, '18211a05n4@bvrit.ac.in'),
('18211A05N5', '', '', 'CSE', 'Yes', 'IoT', 'No', 'No', 'RAMRAJ PHANINDRA', 'Male', 90, 79, 6.73, 62.3, 0, '18211a05n5@bvrit.ac.in'),
('18211A05N6', 'OPENTEXT & APTEAN', 'ACCENTURE ASE & WIPRO - NTH & APTEAN & COGNIZANT GENC NEXT', 'CSE', 'Yes', 'Python', 'No', 'Yes', 'RAPURI PAVAN KUMAR ', 'Male', 90, 95.2, 7.83, 73.3, 0, '18211a05n6@bvrit.ac.in'),
('18211A05N7', '', 'TA DIGITAL & ACCENTURE ADVANCED ASE & ZENSAR & WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, Block Chain, Python, Mobile Applications', 'No', 'Yes', 'RATHOD SAIRAM NAYAK', 'Male', 82, 91, 7.33, 68.3, 0, '18211a05n7@bvrit.ac.in'),
('18211A05N8', '', 'MUSIGMA & WIPRO - NTH', 'CSE', 'Yes', 'No', 'Yes', 'No', 'RATHOD SUSHMA', 'Female', 97, 96, 7.56, 70.6, 0, '18211a05n8@bvrit.ac.in'),
('18211A05N9', 'PROVIDENCE SERVICE ENGINEER', 'PROVIDENCE SERVICE ENGINEER', 'CSE', 'Yes', 'AI / ML, Python, Big Data', 'No', 'Yes', 'SANANDA RAVVA', 'Female', 100, 96, 8.93, 84.3, 0, '18211A05N9@bvrit.ac.in'),
('18211A05P0', '', '', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Big Data, Mobile Applications', 'No', 'No', 'ADITYA SAI TARUN REESU', 'Male', 76, 83, 6.78, 62.8, 0, '18211a05p0@bvrit.ac.in'),
('18211A05P1', '', 'HIGHER STUDIES', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Big Data', 'No', 'No', 'RUCHITHA MADISHETTY', 'Female', 98, 96, 8.03, 75.3, 0, '18211a05p1@bvrit.ac.in'),
('18211A05P2', '', 'WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, IoT, Python, Cloud, Mobile Applications', 'No', 'No', 'RUDDARRAJU GANESH SAI SUBRAMANYA VARMA', 'Male', 92, 77, 7.53, 70.3, 0, '18211a05p2@bvrit.ac.in');
INSERT INTO `studentdata` (`rollnumber`, `internship`, `jobs`, `branch`, `task`, `specialtraining`, `pega`, `apt`, `name`, `gender`, `10th%`, `Inter`, `btechcgpa`, `btech`, `backlogs`, `email`) VALUES
('18211A05P3', '', '', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Python', 'No', 'No', 'S JAGAN', 'Male', 98, 87, 6.49, 59.9, 0, '18211a05p3@bvrit.ac.in'),
('18211A05P4', '', 'VIRTUSA PEGA & TCS PEGA', 'CSE', 'Yes', 'Web development ', 'Yes', 'No', 'S NITIN SAI', 'Male', 84, 86.5, 7.59, 70.9, 0, '18211a05p4@bvrit.ac.in '),
('18211A05P5', 'MICRON', 'CAPGEMINI ANALYST & MICRON & DBS', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'S P PRAYAG SAGAR', 'Male', 100, 88.5, 8.51, 80.1, 0, '18211a05p5@bvrit.ac.in'),
('18211A05P6', 'INFOEDGE', 'INFOEDGE', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python, Cloud', 'No', 'Yes', 'S SUNIL CHANDRA', 'Male', 96, 97.4, 8.67, 81.7, 0, '18211a05p6@bvrit.ac.in'),
('18211A05P7', '', 'CAPGEMINI ANALYST & TCS NINJA & ACCENTURE ASE & WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Block Chain, Python, Big Data, Mobile Applications', 'No', 'Yes', 'SABBANI RAKESH', 'Male', 98, 95.7, 8.71, 82.1, 0, '18211A05P7@bvrit.ac.in'),
('18211A05P8', '', 'WIPRO - NTH & ACCENTURE ASE', 'CSE', 'Yes', 'AI / ML, IoT, Python, Cloud, Mobile Applications', 'No', 'No', 'SAGI SHIVA RAMA VARMA', 'Male', 83, 86, 7.47, 69.7, 0, '18211a05p8@bvrit.ac.in'),
('18211A05P9', '', '', 'CSE', 'Yes', 'AI / ML', 'No', 'No', 'SAHITH AILNENI ', 'Male', 70, 78, 6.35, 58.5, 0, '18211A05P9@bvrit.ac.in'),
('18211A05Q0', 'OPENTEXT & ZOHO REGULAR', 'INFOSYS SE & ZOHO REGULAR & AMAZON SDE - SYSTEM ENGINEER', 'CSE', 'Yes', 'Data Sciences, Cyber Security, Python, Big Data, Mobile Applications', 'No', 'Yes', 'SAI PREETHI GADE', 'Female', 88, 98.3, 8.84, 83.4, 0, '18211a05q0@bvrit.ac.in'),
('18211A05Q1', 'ZOHO REGULAR', 'LTI LEVEL - 1 & ZOHO REGULAR & TCS NINJA & DBS', 'CSE', 'Yes', 'AI / ML, Block Chain, Python, Cloud, Web Development', 'No', 'Yes', 'SAI SMRUTIK TRIPATHY', 'Male', 95, 98, 8.89, 83.9, 0, '18211a05q1@bvrit.ac.in'),
('18211A05Q2', 'OPENTEXT & ARETEANS PEGA', 'ARETEANS PEGA', 'CSE', 'Yes', 'Cyber Security, IoT, Python, Mobile Applications', 'Yes', 'No', 'SAIKRISHNA SIRIKONDA', 'Male', 94, 96, 8.09, 75.9, 0, '18211A05Q2@bvrit.ac.in'),
('18211A05Q3', '', 'WIPRO - NTH & COGNIZANT GENC & WIPRO OFF CAMPUS', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Mobile Applications', 'No', 'No', 'SANDANA AKHILA', 'Female', 92, 85.6, 6.79, 62.9, 0, '18211a05q3@bvrit.ac.in'),
('18211A05Q4', 'HARMAN KARDON', 'HARMAN KARDON & LTI LEVEL - 2 & COGNIZANT GENC ELEVATE & DBS', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data, Mobile Applications, Java', 'No', 'Yes', 'SARELLA SUJITHA', 'Female', 98, 92.7, 7.78, 72.8, 0, '18211a05q4@bvrit.ac.in'),
('18211A05Q5', '', 'SKOLAR', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'SARIPALLI ADITYA SAI VARMA', 'Male', 97, 96.4, 8.1, 76, 0, '18211a05q5@bvrit.ac.in'),
('18211A05Q6', 'KAPTIUS', 'VIRTUSA DIFFERENTIAL & LTI LEVEL - 1 & KAPTIUS', 'CSE', 'Yes', 'AI / ML, Block Chain, Python, Cloud, Mobile Applications', 'No', 'Yes', 'SHWETHA SHENOY ', 'Female', 100, 95.3, 8.83, 83.3, 0, '18211a05q6@bvrit.ac.in '),
('18211A05Q7', '', 'CAPGEMINI ANALYST & ACCENTURE ASE & WIPRO - NTH & SKOLAR', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Big Data, Mobile Applications, Java', 'No', 'Yes', 'SILIVERI BHAVYA SHREYA ', 'Female', 98, 94.7, 7.33, 68.3, 0, '18211a05q7@bvrit.ac.in'),
('18211A05Q8', '', 'ACCENTURE ASE & WIPRO - NTH & DBS', 'CSE', 'Yes', 'Cyber Security, Web development', 'No', 'Yes', 'SIMRAN MEHBOOB', 'Female', 92, 95.6, 8, 75, 0, '18211a05q8@bvrit.ac.in'),
('18211A05Q9', '', 'WIPRO - NTH & VIRTUSA GENERAL', 'CSE', 'Yes', 'Cyber Security, Python', 'No', 'No', 'S.VANDANA LAXMI', 'Female', 73, 79, 7.7, 72, 0, '18211A05Q9@bvrit.ac.in'),
('18211A05R0', '', 'HIGHER STUDIES', 'CSE', 'Yes', 'Python', 'No', 'No', 'SIRIPURAM AJAY KUMAR', 'Male', 100, 98.7, 8.83, 83.3, 0, '18211a05r0@bvrit.ac.in'),
('18211A05R1', 'ENH ISECURE', 'VIRTUSA REGULAR & ENH ISECURE & CAPGEMINI ANALYST & DBS', 'CSE', 'Yes', 'Cyber Security', 'No', 'Yes', 'SOWMYA KOVORI', 'Female', 100, 97.6, 9.02, 85.2, 0, '18211a05r1@bvrit.ac.in'),
('18211A05R3', 'OPENTEXT', 'OPENTEXT', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python, Cloud, Big Data, Mobile Applications', 'No', 'Yes', 'SRI VIKAS PRATHANAPU', 'Male', 100, 97.6, 8.52, 80.2, 0, '18211a05r3@bvrit.ac.in'),
('18211A05R4', 'HARMAN KARDON', 'HARMAN KARDON & LTI LEVEL - 1 & ACCENTURE ADVANCED ASE', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python, Cloud, Big Data, Mobile Applications', 'No', 'Yes', 'SRIPURAM ASHRITA', 'Female', 98, 93.2, 8.25, 77.5, 0, '18211a05r4@bvrit.ac.in'),
('18211A05R5', 'OPENTEXT & ZOHO DIFFERENTIAL', 'INFOSYS SE & OPENTEXT & ZOHO DIFFERENTIAL & JPMC', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python, Cloud, UX / UI, Mobile Applications, Web Developement', 'No', 'Yes', 'SUBHAM SURMARA', 'Male', 95, 98.6, 9.1, 86, 0, '18211a05r5@bvrit.ac.in'),
('18211A05R6', '', 'WIPRO - NTH & ACCENTURE ASE', 'CSE', 'Yes', 'AI / ML', 'Yes', 'No', 'SUKHAVASI NITHIN BABU', 'Male', 82, 83, 7.39, 68.9, 0, '18211a05r6@bvrit.ac.in'),
('18211A05R7', '', 'WIPRO - NTH & COGNIZANT GENC PRO', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Mobile Applications, Extended Reality (AR / VR)', 'No', 'No', 'SUMANATH BEKU ', 'Male', 96, 92.1, 7.49, 69.9, 0, '18211a05r7@bvrit.ac.in'),
('18211A05R8', '', 'MUSIGMA & GEP & SUNERA TECH & WIPRO - NTH & COGNIZANT GENC', 'CSE', 'Yes', 'AI / ML, Python, Big Data, Mobile Applications, Extended Reality (AR / VR)', 'No', 'No', 'SUNAINA TABASSUM', 'Female', 92, 95.7, 8.27, 77.7, 0, '18211a05r8@bvrit.ac.in'),
('18211A05R9', '', 'VIRTUSA REGULAR', 'CSE', 'Yes', 'AI / ML, IoT, Python', 'No', 'No', 'SUNKISHELA UDAY KIRAN RAO', 'Male', 83, 72, 7.6, 71, 0, '18211a05r9@bvrit.ac.in'),
('18211A05T0', '', 'CAPGEMINI ANALYST', 'CSE', 'Yes', 'AI / ML, Python', 'No', 'No', 'SURAKANTI SAIKIRAN REDDY', 'Male', 92, 83, 6.88, 63.8, 0, '18211A05T0@bvrit.ac.in'),
('18211A05T1', '', 'TCS PEGA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Python, Mobile Applications', 'Yes', 'No', 'MANI CHANDRA TADAPALLY', 'Male', 93, 96, 7.78, 72.8, 0, '18211a05t1@bvrit.ac.in'),
('18211A05T2', '', 'ACCENTURE ASE & TCS NINJA & SKOLAR', 'CSE', 'Yes', 'AI / ML, Cyber Security, IoT, Python', 'Yes', 'No', 'TANKALA JEEVAN KUMAR', 'Male', 95, 96.3, 7.88, 73.8, 0, '18211a05t2@bvrit.ac.in'),
('18211A05T3', 'ENH ISECURE & IBM ISL & EXPERIAN', 'VIRTUSA REGULAR & ENH ISECURE & LTI LEVEL - 1 & WIPRO - NTH & DBS', 'CSE', 'Yes', 'Python, Big Data, Mobile Applications', 'No', 'Yes', 'TANNERU JAYASREE', 'Female', 93, 95, 9.09, 85.9, 0, '18211A05T3@bvrit.ac.in'),
('18211A05T4', '', 'WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python, UX / UI, Mobile Applications', 'Yes', 'No', 'TATI SIVA NEERAJ', 'Male', 96, 89.6, 7.53, 70.3, 0, '18211a05t4@bvrit.ac.in'),
('18211A05T5', 'MODAK', 'MODAK & INFOSYS SE & TCS TOPPERS NINJA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data', 'No', 'Yes', 'TATIKONDA MAHESH BABU', 'Male', 93, 97.7, 8.6, 81, 0, '18211a05t5@bvrit.ac.in'),
('18211A05T6', '', 'COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'Data Sciences, Python, Java, R', 'No', 'Yes', 'THATIPELLI ASHISH', 'Male', 98, 96, 7.78, 72.8, 0, '18211a05t6@bvrit.ac.in'),
('18211A05T7', 'ENH ISECURE', 'ENH ISECURE & LTI LEVEL - 1 & CAPGEMINI ANALYST', 'CSE', 'No', 'Python', 'No', 'No', 'THONDAMNATI HARSHITH', 'Male', 98, 98.7, 9.1, 86, 0, '18211a05t7@bvrit.ac.in'),
('18211A05T8', 'OPENTEXT', 'LTI LEVEL - 3', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python, Big Data, Mobile Applications', 'No', 'Yes', 'THOTA . VAISHNAVI', 'Female', 93, 96.5, 8.68, 81.8, 0, '18211a05t8@bvrit.ac.in'),
('18211A05T9', '', 'HIGHER STUDIES', 'CSE', 'Yes', 'Python', 'No', 'No', 'THOTAKURA SRAVANTHI', 'Female', 93, 86, 7.93, 74.3, 0, '18211A05T9@bvrit.ac.in'),
('18211A05U0', '', 'VIRTUSA REGULAR & WIPRO OFF CAMPUS', 'CSE', 'Yes', 'AI / ML, Block Chain, Python, Big Data', 'No', 'Yes', 'TULLURI RAHUL', 'Male', 100, 97.1, 8.72, 82.2, 0, '18211a05u0@bvrit.ac.in'),
('18211A05U1', 'ZEMOSO & WILEY - MTHREE', 'LTI LEVEL - 2 & ZEMOSO & INFOSYS SE & TCS NINJA & WILEY - MTHREE & DBS', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Cloud, Big Data', 'No', 'Yes', 'TUMMALAPALLI KAUSHIK', 'Male', 93, 88, 8.37, 78.7, 0, '18211a05u1@bvrit.ac.in'),
('18211A05U2', 'MODAK & EPAM & ZAGGLE', 'MODAK & INFOSYS SE & EPAM & ZAGGLE', 'CSE', 'Yes', 'AI / ML, Python, Big Data, Mobile Applications', 'No', 'Yes', 'TUMUKUNTA KISHAN RAHUL', 'Male', 88, 95.3, 8.18, 76.8, 0, '18211A05U2@bvrit.ac.in'),
('18211A05U3', 'COFORGE PEGA', 'COFORGE PEGA & COGNIZANT GENC PRO & EAI SYSTEMS PEGA\n', 'CSE', 'No', 'Python', 'Yes', 'No', 'TUMULURI VAASHISTA VIVEK ', 'Male', 93, 90, 7.5, 70, 0, '18211a05u3@bvrit.ac.in'),
('18211A05U4', '', 'CAPGEMINI ANALYST & ACCENTURE ASE', 'CSE', 'Yes', 'AI / ML', 'No', 'No', 'ULLURI NISSI PRIYA', 'Female', 95, 92.2, 8.41, 79.1, 0, '18211a05u4@bvrit.ac.in'),
('18211A05U5', 'ACADEMOR', 'WIPRO - NTH & INFOSYS SE & COGNIZANT GENC & SKOLAR', 'CSE', 'Yes', 'Python, Big Data', 'No', 'Yes', 'BHUVANA TEJA', 'Male', 80, 86.1, 7.06, 65.6, 0, '18211a05u5@bvrit.ac.in '),
('18211A05U6', '', 'COGNIZANT GENC', 'CSE', 'Yes', 'Data Sciences, IoT, Python, Big Data, Mobile Applications', 'No', 'No', 'PRIYANKA VADTHYA ', 'Female', 66, 82.3, 7.19, 66.9, 0, '18211a05u6@bvrit.ac.in'),
('18211A05U7', '', '', 'CSE', 'No', 'Big Data', 'No', 'No', 'VADDI VENKATESHWAR REDDY', 'Male', 82, 82.7, 6.59, 60.9, 0, '18211a05u7@bvrit.ac.in'),
('18211A05U8', '', 'LTI LEVEL - 1', 'CSE', 'Yes', 'IoT, Python, Big Data, Java,C', 'No', 'No', 'VAKA SAI JASWANTH REDDY', 'Male', 90, 94, 7.09, 65.9, 0, '18211a05u8@bvrit.ac.in'),
('18211A05U9', '', '', 'CSE', 'Yes', 'Python, Mobile Applications', 'No', 'No', 'VAKATI SURYA BALAJI', 'Male', 86, 86, 6.19, 56.9, 3, '18211a05u9@bvrit.ac.in'),
('18211A05V0', '', 'LTI LEVEL - 1 & CAPGEMINI ANALYST & COGNIZANT GENC NEXT', 'CSE', 'Yes', 'Python, Cloud, UX / UI', 'No', 'No', 'VALABOJU VIDVANTH', 'Male', 94, 96.4, 7.31, 68.1, 0, '18211a05v0@bvrit.ac.in'),
('18211A05V1', '', 'TCS NINJA & COGNIZANT GENC NEXT & DBS & ZENOTI COCUBES - PHASE 2', 'CSE', 'No', 'Cyber Security, Python, Mobile Applications', 'No', 'Yes', 'VAMBARAVELLI VIMAL', 'Male', 97, 98, 7.93, 74.3, 0, '18211a05v1@bvrit.ac.in'),
('18211A05V2', '', 'WIPRO - NTH & VIRTUSA GENERAL', 'CSE', 'Yes', 'AI / ML, Block Chain, Python, Big Data, Mobile Applications, Web development', 'No', 'Yes', 'VANTERU ROHITH REDDY', 'Male', 87, 87.1, 7.91, 74.1, 0, '18211a05v2@bvrit.ac.in'),
('18211A05V3', '', 'TCS TOPPERS NINJA & COGNIZANT GENC ELEVATE', 'CSE', 'No', 'AI / ML, Data Sciences, Block Chain, Python, Big Data', 'No', 'Yes', 'VARA MOHIT SAI', 'Male', 75, 84, 7.36, 68.6, 0, '18211a05v3@bvrit.ac.in'),
('18211A05V4', '', '', 'CSE', 'Yes', 'AI / ML', 'No', 'Yes', 'VARSHAPALLI VEDA VYAS', 'Male', 97, 70, 5.32, 48.2, 9, '18211a05v4@bvrit.ac.in'),
('18211A05V5', 'ACCOLITE', 'ACCOLITE & HYAUTO OFF CAMPUS', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data, Mobile Applications', 'No', 'Yes', 'VEDUNURI SUJITH', 'Male', 97, 96.1, 8.81, 83.1, 0, '18211a05v5@bvrit.ac.in'),
('18211A05V6', 'IBM & HARMAN KARDON', 'IBM & HARMAN KARDON & LTI LEVEL - 2', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python, Big Data, Mobile Applications', 'No', 'Yes', 'SUMAPRIYA VEERAMALLI ', 'Female', 98, 98.2, 8.71, 82.1, 0, '18211a05v6@bvrit.ac.in'),
('18211A05V7', '', 'WIPRO - NTH', 'CSE', 'Yes', 'AI / ML, Data Sciences, Block Chain, Python, Big Data', 'No', 'No', 'VEGESNA MANEESH VARMA', 'Male', 93, 71, 6.8, 63, 0, '18211a05v7@bvrit.ac.in'),
('18211A05V8', 'OPENTEXT', 'OPENTEXT', 'CSE', 'Yes', 'Data Sciences, Python', 'No', 'Yes', 'VEMULA DAYAKAR ', 'Male', 93, 97.8, 8.5, 80, 0, '18211a05v8@bvrit.ac.in'),
('18211A05V9', '', 'CAPGEMINI ANALYST & ACCENTURE ASE', 'CSE', 'Yes', 'Cyber Security, Python, Cloud', 'No', 'No', 'VENKATA SAI SATHWIK REDDY PASHAM', 'Male', 95, 75, 7.06, 65.6, 0, '18211a05v9@bvrit.ac.in'),
('18211A05W0', '', 'CAPGEMINI ANALYST & TCS NINJA & WIPRO - NTH', 'CSE', 'Yes', 'Data Sciences, Python', 'No', 'Yes', 'VUKKISA JAYANTH', 'Male', 95, 94, 8.18, 76.8, 0, '18211A05W0@bvrit.ac.in'),
('18211A05W1', '', 'CAPGEMINI ANALYST & TCS NINJA', 'CSE', 'Yes', 'AI / ML, Cyber Security, Python, Web Development,Java', 'No', 'Yes', 'VUNNAM NAGA VENKATA SAI', 'Male', 92, 95.1, 8.5, 80, 0, '18211a05w1@bvrit.ac.in'),
('18211A05W2', '', 'LTI LEVEL - 1 & WIPRO - NTH & INFOSYS SE & DBS', 'CSE', 'Yes', 'Data Sciences, IoT, Python, Big Data, Mobile Applications', 'No', 'Yes', 'YALAMANCHILI JOTSNA SRI', 'Female', 86, 87.1, 7.77, 72.7, 0, '18211a05w2@bvrit.ac.in'),
('18211A05W3', '', '', 'CSE', 'Yes', 'Data Sciences, Python, Big Data', 'No', 'No', 'Y SAI DEEPIKA', 'Female', 93, 93, 8.27, 77.7, 0, '18211a05w3@bvrit.ac.in'),
('18211A05W4', '', 'TCS NINJA & TA DIGITAL & COGNIZANT GENC NEXT', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data', 'No', 'Yes', 'Y SANDEEP ', 'Male', 82, 88, 7.09, 65.9, 0, '18211a05w4@bvrit.ac.in'),
('18211A05W5', '', '', 'CSE', 'Yes', 'Python, Cloud, Financial analysts (workday)', 'No', 'No', 'YADURI SAI CHARAN REDDY', 'Male', 82, 74, 7.02, 65.2, 0, '18211A05W5@bvrit.ac.in'),
('18211A05W6', 'TECHNOVERT SEDA', 'TECHNOVERT SEDA & CAPGEMINI SR ANALYST & TCS TOPPERS NINJA', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Big Data, Mobile Applications', 'No', 'Yes', 'YALAMANCHILI TAPAN DATTA', 'Male', 92, 87, 8.66, 81.6, 0, '18211a05w6@bvrit.ac.in'),
('18211A05W7', 'MODAK', 'MODAK & INFOSYS SE', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data, Mobile Applications', 'No', 'Yes', 'YAROJU RAJ KUMAR', 'Male', 100, 96.7, 8.54, 80.4, 0, '18211a05w7@bvrit.ac.in'),
('18211A05W8', '', '', 'CSE', 'No', 'AI / ML, Data Sciences', 'No', 'No', 'Y.SAI KRISHNA', 'Male', 88, 87, 6.04, 55.4, 0, '18211a05w8@bvrit.ac.in '),
('18211A05W9', 'MODAK', 'MODAK & CAPGEMINI ANALYST & TCS NINJA', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, Big Data', 'No', 'No', 'YERRAVARAPU NAVEEN KUMAR', 'Male', 93, 96.5, 7.85, 73.5, 0, '18211a05w9@bvrit.ac.in'),
('18211A05X0', 'TAKNEVIT', 'LTI LEVEL - 1 & COGNIZANT GENC NEW & TAKNEVIT', 'CSE', 'Yes', 'AI / ML, Python, Big Data, Mobile Applications', 'No', 'Yes', 'YERVALA VAMSHIKRISHNA REDDY', 'Male', 95, 96.7, 7.73, 72.3, 0, '18211a05x0@bvrit.ac.in'),
('18211A1201', 'VERIZON PEGA', 'VIRTUSA PEGA & ACCENTURE ASE & VERIZON PEGA & TCS TOPPERS NINJA', 'IT', 'Yes', 'Data Sciences, Python, Big Data', 'Yes', 'No', 'THARUN KUMAR ABBURI', 'Male', 97, 94.9, 8.98, 84.8, 0, '18211a1201@bvrit.ac.in'),
('18211A1202', '', 'LTI LEVEL - 2 & CAPGEMINI ANALYST & ACCENTURE ASE', 'IT', 'Yes', 'Python, Big Data', 'No', 'Yes', 'ALETI SHREYA REDDY ', 'Female', 97, 95, 8.49, 79.9, 0, '18211a1202@bvrit.ac.in'),
('18211A1203', 'OPENTEXT', 'LTI LEVEL - 2 & CAPGEMINI ANALYST & ACCENTURE ASE & TCS NINJA', 'IT', 'Yes', 'Data Sciences, Python, UX / UI', 'No', 'Yes', 'SAIVYSHNAV ANANTHULA ', 'Male', 98, 96.8, 8.71, 82.1, 0, '18211a1203@bvrit.ac.in'),
('18211A1204', '', 'CAPGEMINI ANALYST & ACCENTURE ASE', 'IT', 'Yes', 'Python, Web Development', 'No', 'No', 'ANUDEEP REDDY VENNAVARAM', 'Male', 90, 88.7, 7.09, 65.9, 0, '18211a1204@bvrit.ac.in'),
('18211A1205', '', 'CAPGEMINI ANALYST & ACCENTURE ASE & TCS TOPPERS NINJA', 'IT', 'Yes', 'Python', 'No', 'No', 'ARKIT AKSHATHA', 'Female', 98, 96.7, 7.78, 72.8, 0, '18211a1205@bvrit.ac.in'),
('18211A1206', '', 'ACCENTURE ASE & WIPRO - NTH', 'IT', 'Yes', 'Python, Big Data, UX / UI', 'No', 'No', 'ASMA ANJUM', 'Female', 97, 95.6, 7.78, 72.8, 0, '18211a1206@bvrit.ac.in'),
('18211A1207', '', 'CAPGEMINI SR ANALYST', 'IT', 'No', 'Python, Big Data, UX / UI', 'No', 'Yes', 'AVADHOOTHA SANDHYA', 'Female', 93, 96, 7.77, 72.7, 0, '18211a1207@bvrit.ac.in'),
('18211A1208', 'ARETEANS PEGA & VERIZON PEGA', 'ARETEANS PEGA & VERIZON PEGA', 'IT', 'Yes', 'Data Sciences, Cyber Security, Block Chain, Python, Big Data', 'Yes', 'Yes', 'AYUSHMAN SHARMA', 'Male', 98, 92.7, 7.9, 74, 0, '18211a1208@bvrit.ac.in'),
('18211A1210', '', 'COGNIZANT GENC', 'IT', 'No', 'Cyber Security, Python', 'No', 'No', 'AJAY KUMAR BANOTH', 'Male', 88, 91.2, 6.55, 60.5, 0, '18211a1210@bvrit.ac.in'),
('18211A1211', 'ATHENAHEALTH', 'VIRTUSA REGULAR & INFOSYS SE & TCS TOPPERS NINJA', 'IT', 'Yes', 'Python, Big Data, UX / UI, Mobile Applications', 'No', 'Yes', 'BATHINI PRAJWALA GOUD', 'Female', 95, 98.9, 8.99, 84.9, 0, '18211a1211@bvrit.ac.in'),
('18211A1213', 'OPENTEXT', 'VIRTUSA REGULAR & TCS NINJA', 'IT', 'Yes', 'Python, Mobile Applications, Web applications', 'No', 'Yes', 'BELDE HARIKA ', 'Female', 100, 94.5, 8.7, 82, 0, '18211a1213@bvrit.ac.in'),
('18211A1214', '', 'COGNIZANT GENC', 'IT', 'Yes', 'Python, Full stack development', 'No', 'No', 'BS ARUN KUMAR', 'Male', 87, 79, 7.19, 66.9, 0, '18211A1214@bvrit.ac.in'),
('18211A1215', '', 'VIRTUSA REGULAR & CAPGEMINI ANALYST', 'IT', 'No', 'AI / ML, Data Sciences, Python, Big Data, Web App', 'No', 'Yes', 'BHIMAVARAPU LIKITHA', 'Female', 95, 97.3, 8.68, 81.8, 0, '18211a1215@bvrit.ac.in'),
('18211A1216', 'PRAMATI', 'LTI LEVEL - 1 & PRAMATI & BRANE ENTERPRISES', 'IT', 'Yes', 'Cyber Security, Python, Mobile Applications', 'No', 'No', 'BHOOMSHETTY SHOBHA', 'Female', 95, 94.7, 8.34, 78.4, 0, '18211a1216@bvrit.ac.in'),
('18211A1217', 'TAKNEVIT', 'ACCENTURE ASE & WIPRO - NTH & TAKNEVIT', 'IT', 'No', 'AI / ML, Mobile Applications, WEB DEVELOPMENT', 'No', 'No', 'BISATI NAGESHWARA REDDY', 'Male', 97, 97.9, 8.25, 77.5, 0, '18211a1217@bvrit.ac.in'),
('18211A1218', 'ARETEANS PEGA', 'ARETEANS PEGA', 'IT', 'Yes', 'Cyber Security, Python, Cloud, Mobile Applications', 'Yes', 'No', 'BITUKUNTI MADHULIKA ', 'Female', 97, 98.7, 8.84, 83.4, 0, '18211a1218@bvrit.ac.in'),
('18211A1219', 'MODAK & KAAR TECHNOLOGIES', 'MODAK & KAAR TECHNOLOGIES & WIPRO - NTH & COGNIZANT GENC ELEVATE & DBS', 'IT', 'Yes', 'AI / ML, Data Sciences, Python, Mobile Applications', 'No', 'Yes', 'BOGIREDDY NAGASWAPNA', 'Female', 97, 97.2, 8.95, 84.5, 0, '18211A1219@bvrit.ac.in'),
('18211A1220', '', 'VIRTUSA GENERAL & INFOSYS SE & WIPRO - NTH', 'IT', 'No', 'java,c,c++', 'No', 'No', 'BURUGU NIKHIL', 'Male', 98, 97, 7.73, 72.3, 0, '18211a1220@bvrit.ac.in'),
('18211A1222', 'OPENTEXT & TECHDEMOCRACY', 'VIRTUSA REGULAR & COGNIZANT GENC & TECHDEMOCRACY', 'IT', 'No', 'AI / ML, IoT, Python, Cloud, Mobile Applications', 'Yes', 'Yes', 'CHANDANA CHANGOMULA', 'Female', 90, 90, 8.37, 78.7, 0, '18211a1222@bvrit.ac.in'),
('18211A1223', '', 'MUSIGMA', 'IT', 'Yes', 'Python', 'No', 'No', 'CHELMETI BHAVANI', 'Female', 90, 93, 8.07, 75.7, 0, '18211a1223@bvrit.ac.in'),
('18211A1224', 'MODAK', 'MODAK & TCS NINJA & BRANE ENTERPRISES', 'IT', 'No', 'AI / ML, IoT, Python, Mobile Applications', 'No', 'Yes', 'MANJUNATH CHIGULLAPALLY', 'Male', 93, 92.6, 8.33, 78.3, 0, '18211a1224@bvrit.ac.in'),
('18211A1225', '', '', 'IT', 'No', 'Mobile Applications', 'No', 'No', 'CHIN REDDY ASHOK REDDY', 'Male', 68, 60, 4.91, 44.1, 11, '18211A1225@bvrit.ac.in'),
('18211A1226', '', 'TCS PEGA & INCEDO PEGA', 'IT', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Python, Big Data', 'Yes', 'No', 'CHINTAGUNTA BHAGYA RATNA KUMAR', 'Male', 89, 89, 6.95, 64.5, 0, '18211a1226@bvrit.ac.in'),
('18211A1227', 'AASEYA PEGA', 'AASEYA PEGA', 'IT', 'No', 'Data Sciences, Block Chain, Python', 'Yes', 'No', 'CHINTALA PRATHYUSHA', 'Female', 85, 85, 7.53, 70.3, 0, '18211a1227@bvrit.ac.in'),
('18211A1228', '', 'VIRTUSA REGULAR', 'IT', 'Yes', 'Data Sciences, Cyber Security, Python, Cloud, Big Data, UX / UI, Mobile Applications', 'No', 'Yes', 'RISHIKA CHINTHAKINDI ', 'Female', 95, 96.8, 8.41, 79.1, 0, '18211a1228@bvrit.ac.in'),
('18211a1229', 'MODAK & TEK SYSTEMS & GE CORPORATE', 'MODAK & TEK SYSTEMS & COGNIZANT GENC NEXT & DBS & GE CORPORATE', 'IT', 'Yes', 'AI / ML, Data Sciences, Python, Cloud, Big Data, Mobile Applications, Web Applications', 'No', 'Yes', 'CIROLLA SAIKIRAN REDDY', 'Male', 100, 97.7, 8.78, 82.8, 0, '18211a1229@bvrit.ac.in'),
('18211A1230', '', '', 'IT', 'No', 'Data Sciences, Python, Big Data, Mobile Applications', 'No', 'No', 'DANAGONI SHYAM SUNDAR GOUD', 'Male', 95, 92, 6.49, 59.9, 0, '18211A1230@bvrit.ac.in'),
('18211A1231', '', 'WIPRO - NTH & COGNIZANT GENC', 'IT', 'No', 'Data Sciences, Mobile Applications', 'No', 'No', 'DANDASI SANTOSH KUMAR DEO', 'Male', 83, 70, 6.78, 62.8, 0, '18211a1231@bvrit.ac.in'),
('18211A1232', '', 'INFOSYS SE & WIPRO - NTH & ZENSAR & COGNIZANT GENC NEXT', 'IT', 'Yes', 'Python, Cloud, Big Data, UX / UI, Mobile Applications', 'No', 'Yes', 'DESHABAKTULA PREETHAM SAI', 'Male', 100, 94.5, 8.25, 77.5, 0, '18211a1232@bvrit.ac.in'),
('18211A1233', 'KAPTIUS & EXPERIAN', 'INFOSYS DSE & CAPGEMINI ANALYST & TCS NINJA & KAPTIUS & COGNIZANT GENC ELEVATE & DBS', 'IT', 'Yes', 'AI / ML, Data Sciences, Python, Cloud, WEB APPLICATIONS', 'No', 'Yes', 'DONTULA VISHNU SAI', 'Male', 92, 93.4, 8.58, 80.8, 0, '18211A1233@bvrit.ac.in'),
('18211A1234', '', 'CAPGEMINI ANALYST', 'IT', 'No', 'AI / ML, Python, Cloud, Mobile Applications', 'No', 'No', 'EETURI SAIDEEP', 'Male', 90, 95.6, 6.77, 62.7, 0, '18211a1234@bvrit.ac.in'),
('18211A1235', '', 'TCS TOPPERS NINJA & COGNIZANT GENC', 'IT', 'No', 'Python', 'No', 'No', 'GDN SANDEEP', 'Male', 98, 81, 6.89, 63.9, 0, '18211a1235@bvrit.ac.in'),
('18211A1236', '', 'LTI LEVEL - 1 & TCS NINJA', 'IT', 'Yes', 'Python', 'No', 'No', 'GADDAM APOORVA', 'Female', 98, 98.1, 8.31, 78.1, 0, '18211a1236@bvrit.ac.in'),
('18211A1237', 'PRAMATI', 'VIRTUSA REGULAR & CAPGEMINI ANALYST & TCS NINJA & WIPRO - NTH & PRAMATI', 'IT', 'Yes', 'Python, Big Data, UX / UI', 'No', 'Yes', 'TEJASWINI GADDE', 'Female', 100, 93.9, 8.3, 78, 0, '18211a1237@bvrit.ac.in'),
('18211A1238', '', 'ACCENTURE ASE & WIPRO - NTH & STELLANTIS', 'IT', 'Yes', 'Python, Big Data', 'No', 'Yes', 'ANUHYA GADE', 'Female', 92, 93, 8.25, 77.5, 0, '18211a1238@bvrit.ac.in'),
('18211A1239', 'WILEY - MTHREE & KAAR TECHNOLOGIES', 'VIRTUSA REGULAR & TCS NINJA & KAAR TECHNOLOGIES & WIPRO - NTH & TA DIGITAL & COGNIZANT GENC NEXT & WILEY - MTHREE', 'IT', 'Yes', 'Python, Mobile Applications, Web applications ', 'No', 'Yes', 'SHIVANI GAJAWADA', 'Female', 95, 97.4, 8.95, 84.5, 0, '18211a1239@bvrit.ac.in'),
('18211A1240', 'AASEYA PEGA', 'AASEYA PEGA & LEGATO PEGA', 'IT', 'Yes', 'Block Chain, Python, Big Data', 'Yes', 'No', 'GAJULA NUTHANA', 'Female', 90, 88, 7.58, 70.8, 0, '18211a1240@bvrit.ac.in'),
('18211A1241', '', 'COGNIZANT GENC ELEVATE', 'IT', 'No', 'Data Sciences, IoT, Python, Big Data', 'No', 'No', 'GANDAM SAI SUKESH ', 'Male', 90, 75, 6.42, 59.2, 0, '18211a1241@bvrit.ac.in'),
('18211A1242', '', 'WIPRO - NTH', 'IT', 'No', 'AI / ML, Cyber Security, Python, Mobile Applications', 'No', 'No', 'GANGOLLA MOUNIKA', 'Female', 77, 87, 6.96, 64.6, 0, '18211A1242@bvrit.ac.in'),
('18211A1243', '', '', 'IT', 'No', 'UX / UI, Mobile Applications', 'No', 'No', 'GANTA ALLENJOEL', 'Male', 87, 75, 5.19, 46.9, 9, '18211a1243@bvrit.ac.in'),
('18211A1244', '', 'EAI SYSTEMS PEGA', 'IT', 'Yes', 'Cyber Security, Python, Mobile Applications', 'Yes', 'No', 'GOLI SATHVIK REDDY ', 'Male', 90, 89, 7.16, 66.6, 0, '18211a1244@bvrit.ac.in'),
('18211A1245', '', '', 'IT', 'No', 'Cyber Security, Python', 'No', 'No', 'GOPIDI MANMITHA', 'Female', 88, 83, 7.45, 69.5, 0, '18211A1245@bvrit.ac.in'),
('18211A1246', 'MODAK & GE CORPORATE', 'MODAK & INFOSYS SE & TCS NINJA & DBS & COGNIZANT GENC ELEVATE & GE CORPORATE', 'IT', 'Yes', 'Python, Cloud, Big Data, UX / UI, Mobile Applications, Django', 'No', 'Yes', 'KANDHIBANDA GOVARDHAN', 'Male', 92, 97.7, 8.48, 79.8, 0, '18211a1246@bvrit.ac.in'),
('18211A1248', '', 'VIRTUSA PEGA', 'IT', 'Yes', 'Cyber Security, Mobile Applications', 'Yes', 'No', 'GUNTHALA UDAY SIMHA REDDY', 'Male', 93, 94.4, 7.55, 70.5, 0, '18211A1248@bvrit.ac.in'),
('18211A1249', '', 'ACCENTURE ADVANCED ASE', 'IT', 'Yes', 'Python, Big Data, Mobile Applications', 'No', 'Yes', 'SHIVARAJ JAKKAM', 'Male', 93, 95.8, 7.34, 68.4, 0, '18211a1249@bvrit.ac.in'),
('18211A1250', 'VERZEO', 'VERZEO & WIPRO - NTH & COGNIZANT GENC & WINWIRE TECHNOLOGIES COCUBES', 'IT', 'No', 'Data Sciences, Python, Cloud, Mobile Applications', 'No', 'No', 'K SIDDARTH REDDY', 'Male', 100, 91, 6.68, 61.8, 0, '18211a1250@bvrit.ac.in'),
('18211A1251', '', '', 'IT', 'No', 'Cyber Security, Mobile Applications', 'No', 'No', 'ANMOL KALAP', 'Male', 70, 71, 3.84, 33.4, 20, '18211a1251@bvrit.ac.in'),
('18211A1253', 'OPENTEXT', 'OPENTEXT & INFOSYS SE & ADOBE ASSOCIATE CONSULTANT', 'IT', 'Yes', 'Python, Mobile Applications, Web Development', 'No', 'Yes', 'SAKETH CHANDRA KALIKOTA', 'Male', 100, 98.6, 9, 85, 0, '18211a1253@bvrit.ac.in'),
('18211A1254', '', 'WIPRO - NTH', 'IT', 'Yes', 'AI / ML, Block Chain, Python, Big Data, Mobile Applications', 'No', 'No', 'KAREPA RAJESH', 'Male', 85, 91, 7.22, 67.2, 0, '18211A1254@bvrit.ac.in'),
('18211A1255', '', 'CAPGEMINI ANALYST & COGNIZANT GENC ELEVATE', 'IT', 'Yes', 'Python', 'No', 'No', 'KARIMOLLA PRANUSHA', 'Female', 93, 97.3, 7.63, 71.3, 0, '18211a1255@bvrit.ac.in'),
('18211A1256', '', 'VIRTUSA REGULAR & WIPRO - NTH', 'IT', 'Yes', 'Python', 'No', 'No', 'KARPE RAMANI', 'Female', 100, 98, 8.5, 80, 0, '18211a1256@bvrit.ac.in'),
('18211A1257', '', 'WIPRO - NTH', 'IT', 'Yes', 'AI / ML, Big Data', 'No', 'No', 'KASANAGARI AJAY KUMAR', 'Male', 92, 91, 6.99, 64.9, 0, '18211a1257@bvrit.ac.in'),
('18211A1258', '', 'CAPGEMINI ANALYST', 'IT', 'Yes', 'Python', 'No', 'No', 'KATARI SAI MANOJ', 'Male', 70, 82, 6.79, 62.9, 0, '18212a1258@bvrit.ac.in'),
('18211A1259', '', 'VIRTUSA REGULAR & CAPGEMINI ANALYST & TCS NINJA & COGNIZANT GENC ELEVATE & DIABSOLUT COCUBES', 'IT', 'Yes', 'Python', 'No', 'No', 'KATIPALLY NAMITHA REDDY', 'Female', 92, 97.4, 8.03, 75.3, 0, '18211a1259@bvrit.ac.in'),
('18211A1260', '', 'WIPRO OFF CAMPUS', 'IT', 'No', 'AI / ML, Data Sciences, Python, Big Data, Mobile Applications', 'No', 'No', 'KIRLAM PURNIMA REDDY', 'Female', 93, 73, 6.13, 56.3, 4, '18211a1260@bvrit.ac.in'),
('18211A1261', '', 'TCS PEGA & LEGATO PEGA', 'IT', 'Yes', 'Data Sciences, Python, Mobile Applications', 'Yes', 'No', 'KOKKALGAVE SRUJANA', 'Female', 90, 92.9, 8.23, 77.3, 0, '18211a1261@bvrit.ac.in'),
('18211A1262', '', 'WIPRO - NTH & COGNIZANT GENC', 'IT', 'No', 'IoT, Big Data, Mobile Applications', 'Yes', 'No', 'KOKKONDA REVANTH REDDY', 'Male', 88, 83.2, 7.17, 66.7, 0, '18211a1262@bvrit.ac.in'),
('18211A1263', '', '', 'IT', 'Yes', 'AI / ML, Data Sciences, Cyber Security, IoT, Python, UX / UI, Mobile Applications,  AutoCad, Photoshop, Fusion 360, Web Design, MIT App Inventor', 'No', 'No', 'KOLLI VENKAT SAI', 'Male', 87, 76.5, 6.71, 62.1, 0, '18211a1263@bvrit.ac.in'),
('18211A1264', '', 'CAPGEMINI ANALYST & TCS PEGA', 'IT', 'Yes', 'Mobile Applications', 'Yes', 'Yes', 'KONDA RANJITH', 'Male', 93, 97.7, 7.51, 70.1, 0, '18211a1264@bvrit.ac.in'),
('18211A1265', 'AASEYA PEGA', 'AASEYA PEGA & ACCENTURE ASE & INFOSYS SE', 'IT', 'Yes', 'Data Sciences, IoT, Python, Mobile Applications', 'Yes', 'No', 'AKSHITHA KUKUNOORI', 'Female', 95, 93, 7.83, 73.3, 0, '18211a1265@bvrit.ac.in'),
('18211A1266', '', 'MUSIGMA & INFOSYS SE & ACCENTURE ASE & COGNIZANT GENC', 'IT', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'KUNCHA AKHILA SAI', 'Female', 98, 97.6, 8.27, 77.7, 0, '18211a1266@bvrit.ac.in'),
('18211A1267', 'BUNGEE TECH SDE', 'VIRTUSA REGULAR & TCS NINJA & DELHIVERY DEVELOPER & WIPRO - NTH & BUNGEE TECH SDE & DBS', 'IT', 'Yes', 'AI / ML, Data Sciences, Python, Cloud, Big Data, UX / UI, Mobile Applications, Web', 'No', 'Yes', 'KUNCHARAM MANIDEEP', 'Male', 95, 96.2, 8.82, 83.2, 0, '18211a1267@bvrit.ac.in'),
('18211A1269', 'OPENTEXT', 'VIRTUSA REGULAR & INFOSYS DSE', 'IT', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Block Chain, Python, Cloud, Big Data, Mobile Applications', 'No', 'No', 'M S K TEJA VARMA', 'Male', 100, 94.6, 9.15, 86.5, 0, '18211A1269@bvrit.ac.in'),
('18211A1270', '', 'VIRTUSA REGULAR', 'IT', 'Yes', 'Python, Mobile Applications', 'No', 'Yes', 'MADABOINA ANUSHA', 'Female', 97, 94, 7.83, 73.3, 0, '18211a1270@bvrit.ac.in'),
('18211A1271', '', 'WIPRO - NTH', 'IT', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Cloud, Mobile Applications, Web Development', 'No', 'Yes', 'MADHAMSHETTY SAI SUNAI', 'Male', 87, 87.1, 7.54, 70.4, 0, '18211a1271@bvrit.ac.in'),
('18211A1272', 'GE CORPORATE', 'VIRTUSA REGULAR & TCS NINJA & DBS & GE CORPORATE', 'IT', 'No', 'Data Sciences, Python, Mobile Applications', 'No', 'Yes', 'MADHUNALA AJITHKUMAR GOUD', 'Male', 100, 97, 8.47, 79.7, 0, '18211a1272@bvrit.ac.in'),
('18211A1273', 'OPENTEXT & PROVIDENCE SERVICE ENGINEER', 'PROVIDENCE SERVICE ENGINEER & INFOSYS SE & OPENTEXT', 'IT', 'Yes', 'Data Sciences, Python, Cloud, Mobile Applications', 'No', 'Yes', 'MADHUSMITHA MUDULI', 'Female', 100, 97.8, 9.23, 87.3, 0, '18211a1273@bvrit.ac.in'),
('18211A1274', '', 'CAPGEMINI ANALYST & ACCENTURE ASE', 'IT', 'Yes', 'AI / ML, Python, Java', 'No', 'Yes', 'SANJANA GOUD', 'Female', 95, 88, 7.93, 74.3, 0, '18211a1274@bvrit.ac.in'),
('18211A1276', '', '', 'IT', 'No', 'Cyber Security', 'No', 'No', 'MD ABBAS', 'Male', 88, 94.6, 5.35, 48.5, 11, '18211A1276@bvrit.ac.in'),
('18211A1277', '', 'TEACHNOOK', 'IT', 'No', 'Data Sciences, Python', 'No', 'No', 'M. RISHI VARDHAN', 'Male', 85, 92, 6.54, 60.4, 0, '18211a1277@bvrit.ac.in'),
('18211A1278', '', 'TCS NINJA & TA DIGITAL & NTS NEWS CORP OFF CAMPUS', 'IT', 'Yes', 'AI / ML, Python, Cloud', 'No', 'Yes', 'EZAZ AHMED MOHAMMAD', 'Male', 97, 85.4, 7.53, 70.3, 0, '18211a1278@bvrit.ac.in'),
('18211A1279', '', '', 'IT', 'No', 'AI / ML, Data Sciences, Big Data, Mobile Applications', 'No', 'No', 'MOOD SRIKANTH', 'Male', 87, 85, 5.49, 49.9, 6, '18211a1279@bvrit.ac.in'),
('18211A1280', 'VERZEO', 'VERZEO & PENTAGON SPACE', 'IT', 'No', 'Data Sciences, Cyber Security, Python, Big Data, HTML,CSS,JAVASCRIPT, WEB DEVELOPMENT', 'No', 'No', 'MUSKU. SIRI LAKSHMI REDDY', 'Female', 83, 78, 7.25, 67.5, 0, '18211a1280@bvrit.ac.in'),
('18211A1281', '', 'CAPGEMINI ANALYST & ACCENTURE ASE', 'IT', 'Yes', 'Python, Mobile Applications', 'No', 'Yes', 'N VAISHNAVI', 'Female', 70, 94, 7.69, 71.9, 0, '18211a1281@bvrit.ac.in'),
('18211A1282', '', 'CAPGEMINI ANALYST & ACCENTURE ASE', 'IT', 'No', 'Data Sciences, Big Data, Mobile Applications, Extended Reality (AR / VR)', 'No', 'No', 'NELLURI NAVYA ', 'Female', 95, 95, 7.33, 68.3, 0, '18211a1282@bvrit.ac.in '),
('18211A1283', '', 'WIPRO - NTH & VIRTUSA GENERAL & INFOSYS SE & LTI OFF CAMPUS - TYPE2', 'IT', 'Yes', 'AI / ML, Cyber Security, Python', 'No', 'No', 'PODDUTURI NISHITH REDDY', 'Male', 93, 91, 7.96, 74.6, 0, '18211a1283@bvrit.ac.in'),
('18211A1284', '', 'LTI LEVEL - 2', 'IT', 'Yes', 'AI / ML, Data Sciences, Python, UX / UI, Mobile Applications, Web Development', 'No', 'Yes', 'UPENDRA PUNUGUPATI', 'Male', 92, 98.2, 8.36, 78.6, 0, '18211a1284@bvrit.ac.in'),
('18211A1286', 'TECHNOVERT SEDA & JUPITER & ENH ISECURE', 'VIRTUSA REGULAR & TECHNOVERT SEDA & ENH ISECURE & WIPRO - NTH & DBS & COGNIZANT GENC NEXT', 'IT', 'Yes', 'AI / ML, Data Sciences, Python, Cloud, Web Technologies', 'No', 'Yes', 'PANYAM TARUN ', 'Male', 100, 95.2, 8.47, 79.7, 0, '18211a1286@bvrit.ac.in'),
('18211a1287', '', '', 'IT', 'No', 'Mobile Applications', 'No', 'No', 'PEDDAPATLORI YAMINI REDDY', 'Female', 80, 87, 5.62, 51.2, 8, '18211a1287@bvrit.ac.in'),
('18211A1288', '', 'TEACHNOOK', 'IT', 'Yes', 'Python, Mobile Applications', 'No', 'No', 'HEPSIBA NAVNEETHA', 'Female', 82, 73.3, 7.18, 66.8, 0, '18211a1288@bvrit.ac.in'),
('18211A1289', 'COFORGE PEGA', 'WIPRO - NTH & COFORGE PEGA', 'IT', 'Yes', 'AI / ML, Mobile Applications', 'Yes', 'No', 'P. SANATH KUMAR ', 'Male', 92, 96, 7.51, 70.1, 0, '18211a1289@bvrit.ac.in'),
('18211A1290', '', 'COGNIZANT GENC', 'IT', 'No', 'AI / ML, Data Sciences, Cyber Security, IoT, Block Chain, Python, Mobile Applications', 'No', 'No', 'POTHIREDDY NAVEEN', 'Male', 100, 95.3, 7.93, 74.3, 0, '18211a1290@bvrit.ac.in'),
('18211A1291', 'OPENTEXT', 'VIRTUSA REGULAR & OPENTEXT', 'IT', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Mobile Applications', 'No', 'Yes', 'POTHU ABHINAY', 'Male', 88, 95.5, 8.16, 76.6, 0, '18211A1291@bvrit.ac.in'),
('18211A1292', '', 'MUSIGMA & ACCENTURE ASE & COGNIZANT GENC ELEVATE', 'IT', 'Yes', 'IoT', 'No', 'No', 'VAISHNAVA RUCHIKA PUPPALA ', 'Female', 90, 92, 7.59, 70.9, 0, '18211a1292@bvrit.ac.in'),
('18211A1293', 'AASEYA PEGA', 'AASEYA PEGA & WIPRO - NTH', 'IT', 'Yes', 'IoT', 'Yes', 'No', 'PURAM AKHILA ', 'Female', 92, 96, 8.07, 75.7, 0, '18211a1293@bvrit.ac.in'),
('18211A1295', '', 'WIPRO - NTH', 'IT', 'Yes', 'Cyber Security, Python', 'No', 'No', 'RACHERLA MANIDEEP', 'Male', 83, 79, 7.11, 66.1, 0, '18211A1295@bvrit.ac.in'),
('18211A1296', 'OPENTEXT & ATHENAHEALTH', 'VIRTUSA REGULAR & CAPGEMINI ANALYST & COGNIZANT GENC ELEVATE', 'IT', 'Yes', 'AI / ML, Data Sciences, Python, Big Data, Mobile Applications', 'No', 'Yes', 'RAMA AMRUTHA MULLAPUDI', 'Female', 98, 96.6, 9.05, 85.5, 0, '18211A1296@bvrit.ac.in'),
('18211A1297', '', 'VIRTUSA DIFFERENTIAL', 'IT', 'Yes', 'UX / UI', 'No', 'Yes', 'RAMISETTY VEENASREE', 'Female', 98, 94.2, 7.9, 74, 0, '18211a1297@bvrit.ac.in'),
('18211A1298', '', 'ZENSAR', 'IT', 'Yes', 'AI / ML, IoT, Block Chain, Python, Cloud, Big Data, UX / UI, Mobile Applications, Go ', 'No', 'No', 'RAVULAPALLI SAIRAM', 'Male', 88, 92.2, 8.18, 76.8, 0, '18211a1298@bvrit.ac.in'),
('18211A1299', 'EAI SYSTEMS PEGA', 'CAPGEMINI ANALYST', 'IT', 'Yes', 'Data Sciences, Cyber Security, Big Data, Mobile Applications', 'Yes', 'Yes', 'REVANTH THEPPALA', 'Male', 94, 97.1, 7.29, 67.9, 0, '18211A1299@bvrit.ac.in'),
('18211A12A0', '', 'LTI LEVEL - 2 & ACCENTURE ASE', 'IT', 'Yes', 'Python, Big Data, UX / UI, Mobile Applications', 'No', 'No', 'REVOORI VISHWAJA REDDY', 'Female', 100, 96.3, 8.54, 80.4, 0, '18211a12a0@bvrit.ac.in'),
('18211A12A1', '', 'WIPRO - NTH', 'IT', 'No', 'AI / ML, Data Sciences, Python, Big Data', 'Yes', 'No', 'RUSHIKESH VUPPALA', 'Male', 80, 82.5, 6.78, 62.8, 0, '18211a12a1@bvrit.ac.in'),
('18211A12A2', '', 'VIRTUSA REGULAR', 'IT', 'Yes', 'AI / ML, Data Sciences, Cyber Security, Python, Big Data, Mobile Applications', 'No', 'Yes', 'SAMUDRALA SAI SANTHOSH', 'Male', 88, 95, 7.68, 71.8, 0, '18211a12a2@bvrit.ac.in'),
('18211A12A3', '', 'TCS NINJA & PERSISTENT NAVAYUGA & WIPRO - NTH', 'IT', 'Yes', 'AI / ML, IoT, Block Chain, Python, Cloud, Big Data, UX / UI, Mobile Applications', 'No', 'Yes', 'SANIVARAPU SRI SAI PHANI PAVAN KALYAN', 'Male', 90, 80, 7.36, 68.6, 0, '18211a12a3@bvrit.ac.in'),
('18211A12A4', '', 'LTI LEVEL - 3 & DBS', 'IT', 'Yes', 'AI / ML, Data Sciences, IoT, Python, UX / UI, Mobile Applications, Web Development', 'No', 'Yes', 'SARA SRIKANTH', 'Male', 90, 97.1, 8.7, 82, 0, '18211a12a4@bvrit.ac.in'),
('18211A12A5', '', '', 'IT', 'Yes', 'IoT, Python, UX / UI', 'No', 'No', 'SHAZIYA TAMKEEN', 'Female', 95, 92, 7.34, 68.4, 0, '18211A12A5@bvrit.ac.in'),
('18211A12A6', '', 'TA DIGITAL & WIPRO - NTH', 'IT', 'No', 'Data Sciences, Cyber Security, Block Chain, Python, Cloud, Big Data, Mobile Applications', 'No', 'No', 'SOWMYA SREE', 'Female', 92, 89, 7.1, 66, 0, '18211a12a6@bvrit.ac.in'),
('18211A12A7', '', 'WIPRO - NTH', 'IT', 'Yes', 'Data Sciences, Cloud, Mobile Applications', 'No', 'No', 'SRIVATSAVAYA SRIDATTA', 'Male', 70, 70, 6.94, 64.4, 0, '18211a12a7@bvrit.ac.in'),
('18211A12B1', '', 'VIRTUSA REGULAR & TA DIGITAL & COGNIZANT GENC ELEVATE', 'IT', 'Yes', 'Data Sciences, Python, web development', 'No', 'No', 'TELLAKULA NITISH', 'Male', 97, 94, 7.97, 74.7, 0, '18211a12b1@bvrit.ac.in'),
('18211A12B2', '', 'COGNIZANT GENC', 'IT', 'Yes', 'Python, Mobile Applications', 'No', 'No', 'THATI VIKAS', 'Male', 85, 96, 7.37, 68.7, 0, '18211a12b2@bvrit.ac.in'),
('18211A12B3', '', 'CAPGEMINI ANALYST & TCS NINJA & PERSISTENT NAVAYUGA', 'IT', 'Yes', 'AI / ML, IoT, Python, Cloud, Big Data, UX / UI, Mobile Applications, Extended Reality (AR / VR)', 'No', 'Yes', 'ADARSH VUPPALA', 'Male', 78, 80.3, 7.78, 72.8, 0, '18211a12b3@bvrit.ac.in'),
('18211A12B4', '', 'MUSIGMA & WIPRO - NTH & VIRTUSA GENERAL DIFFERENTIAL', 'IT', 'Yes', 'Python', 'No', 'Yes', 'VADLA NEHA', 'Female', 87, 92, 7.84, 73.4, 0, '18211a12b4@bvrit.ac.in'),
('18211A12B5', '', 'WIPRO OFF CAMPUS', 'IT', 'Yes', 'AI / ML, Python', 'No', 'No', 'VAKITI SUSHANK REDDY', 'Male', 85, 72, 6.81, 63.1, 0, '18211A12B5@bvrit.ac.in'),
('18211A12B6', '', 'CAPGEMINI ANALYST & ACCENTURE ADVANCED ASE', 'IT', 'Yes', 'AI / ML, Python', 'No', 'Yes', 'JAGRUTHI VEMULAPALLI ', 'Female', 96, 96, 8.46, 79.6, 0, '18211a12b6@bvrit.ac.in '),
('18211A12B7', '', 'VIRTUSA REGULAR', 'IT', 'Yes', 'Data Sciences, Python, Mobile Applications', 'No', 'Yes', 'VULLIGADLA KEDARESHWAR', 'Male', 92, 96.4, 7.41, 69.1, 0, '18211a12b7@bvrit.ac.in '),
('18211A12B8', '', 'MUSIGMA & WIPRO - NTH', 'IT', 'No', 'AI / ML, Python, Cloud', 'No', 'No', 'YALAMARTHI LAKSHMI NARASIMHA NAIDU', 'Male', 90, 98, 8.04, 75.4, 0, '18211a12b8@bvrit.ac.in'),
('18211A12B9', 'MODAK', 'MODAK & TCS TOPPERS NINJA', 'IT', 'No', 'Python, Mobile Applications', 'No', 'Yes', 'YASHIKA AGARWAL', 'Female', 100, 87, 7.6, 71, 0, '18211a12b9@bvrit.ac.in'),
('18211A12C0', 'ACCOLITE', 'ACCOLITE & TCS TOPPERS DIGITAL & WIPRO - NTH', 'IT', 'Yes', 'AI / ML, Data Sciences, Python, Mobile Applications, Web development', 'No', 'Yes', 'YASHWANTH JULAKANTI ', 'Male', 100, 97.5, 8.94, 84.4, 0, '18211a12c0@bvrit.ac.in'),
('19215A0501', '', 'TCS PEGA & INCEDO PEGA', 'CSE', 'Yes', 'Python, Mobile Applications', 'Yes', 'Yes', 'J VINAY', 'Male', 90, 78.8, 8.42, 79.2, 0, '19215a0501@bvrit.ac.in'),
('19215A0502', '', 'ACCENTURE ASE', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python', 'No', 'No', 'RAJAM KRUPARANI', 'Female', 77, 82, 7.54, 70.4, 0, '19215a0502@bvrit.ac.in'),
('19215A0503', '', 'INFOSYS SE', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python', 'No', 'No', 'RAMAVATH NEELAVATHI ', 'Female', 78, 75, 7.14, 66.4, 0, '19215a0503@bvrit.ac.in '),
('19215A0504', '', 'PENTAGON SPACE', 'CSE', 'Yes', 'AI / ML, Data Sciences, IoT, Python, Mobile Applications, Very Large scale intergrated circuits ', 'No', 'No', 'EDUNOORI SUJITHA', 'Female', 70, 62.78, 6.98, 64.8, 0, '19215a0504 @bvrit.ac.in '),
('19215A0505', '', 'COGNIZANT GENC', 'CSE', 'Yes', 'IoT, Python', 'No', 'No', 'GUDEPU ARUNKUMAR', 'Male', 73, 77, 7.2, 67, 0, '19215a0505@bvrit.ac.in'),
('19215A0506', '', 'TCS NINJA & WIPRO - NTH & VIRTUSA GENERAL & COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'Cyber Security, IoT, Python, Cloud, Mobile Applications', 'No', 'No', 'MOHAN BALLA', 'Male', 87, 81, 7.6, 71, 0, '19215a0506@bvrit.ac.in'),
('19215A0507', 'APTEAN', 'ACCENTURE ASE & APTEAN', 'CSE', 'Yes', 'AI / ML, IoT, Mobile Applications', 'No', 'Yes', 'SARAMPALLY SRIPATHIREDDY', 'Male', 78, 89, 8.37, 78.7, 0, '19215A0507@bvrit.ac.in'),
('19215A0508', '', 'WIPRO - NTH', 'CSE', 'Yes', 'IoT, Python', 'No', 'No', 'SHAGANTI AKASH', 'Male', 72, 61, 7.23, 67.3, 0, '19215A0508@bvrit.ac.in'),
('19215A0509', '', '', 'CSE', 'Yes', 'AI / ML, Cloud, Mobile Applications', 'No', 'No', 'VEERLA VISHAL', 'Male', 62, 67, 7.04, 65.4, 0, '19215A0509@bvrit.ac.in'),
('19215A0510', 'APTEAN', 'WIPRO - NTH & APTEAN', 'CSE', 'Yes', 'IoT, Block Chain, Python', 'No', 'Yes', 'KALLEPALLI DEEPAK', 'Male', 72, 85, 7.43, 69.3, 0, '19215a0510@bvrit.ac.in'),
('19215A0511', '', '', 'CSE', 'Yes', 'Cyber Security, IoT, Mobile Applications, C language, Java ', 'No', 'No', 'MOHAMMAD KHAJA ZAHEERUDDIN', 'Male', 83, 65, 6.9, 64, 0, '19215a0511@bvrit.ac.in'),
('19215A0512', '', 'WIPRO - NTH', 'CSE', 'No', 'IoT, Mobile Applications, Java', 'No', 'Yes', 'MACHA PAVANI', 'Female', 88, 79, 7.59, 70.9, 0, '19215a0512@bvrit.ac.in'),
('19215A0513', '', '', 'CSE', 'Yes', 'AI / ML, Cyber Security, Python, Cloud, Mobile Applications', 'No', 'Yes', 'JALIGAM DIVYA', 'Female', 78, 67.1, 6.87, 63.7, 0, '19215a0513@bvrit.ac.in'),
('19215A0514', '', '', 'CSE', 'No', 'Mobile Applications', 'No', 'No', 'U.GOPIKRISHNA', 'Male', 88, 63, 6.53, 60.3, 0, '19215A0514@bvrit.ac.in'),
('19215A0515', '', 'WIPRO - NTH', 'CSE', 'Yes', 'Python', 'No', 'Yes', 'NAGULAGARI MEGHANA', 'Female', 95, 85, 7.45, 69.5, 0, '19215a0515@bvrit.ac.in'),
('19215A0516', '', 'WIPRO - NTH & SKOLAR', 'CSE', 'Yes', 'Python, HTML,SQL', 'No', 'Yes', 'MUNNUR SANDHYA', 'Female', 92, 80, 8, 75, 0, '19215a0516@bvrit.ac.in'),
('19215A0517', '', 'PENTAGON SPACE', 'CSE', 'Yes', 'Data Sciences, Cyber Security, Big Data', 'No', 'Yes', 'MEDAM PAVANI', 'Female', 82, 80, 6.62, 61.2, 0, '19215a0517@bvrit.ac.in'),
('19215A0518', '', 'CAPGEMINI ANALYST & ACCENTURE ASE', 'CSE', 'Yes', 'Python, Java', 'No', 'Yes', 'HAMILPURE RAHUL', 'Male', 73, 66, 7.13, 66.3, 0, '19215a0518@bvrit.ac.in'),
('19215A0519', '', 'WIPRO - NTH & VIRTUSA GENERAL', 'CSE', 'Yes', 'Cyber Security, Python, Big Data', 'No', 'Yes', 'V SOUJANYA', 'Female', 88, 81, 7.75, 72.5, 0, '19215a0519@bvrit.ac.in'),
('19215A0520', '', '', 'CSE', 'No', 'AI / ML, Cyber Security, IoT, Python, Mobile Applications', 'No', 'No', 'GUJJARI PRUDHIVI RAJ', 'Male', 85, 66.73, 7.24, 67.4, 0, '19215a0520@bvrit.ac.in'),
('19215A0521', '', 'LTI LEVEL - 1 & CAPGEMINI ANALYST & ACCENTURE ASE', 'CSE', 'Yes', 'Python', 'No', 'Yes', 'JYOJA SAHITHI', 'Female', 90, 86.68, 8.06, 75.6, 0, '19215a0521@bvrit.ac.in'),
('19215A0522', '', '', 'CSE', 'Yes', 'AI / ML, Data Sciences, Python, C and java', 'No', 'Yes', 'RATHLA AMBER SINGH', 'Male', 77, 71.3, 6.34, 58.4, 0, '19215a0522@bvrit.ac.in'),
('19215A0523', '', '', 'CSE', 'Yes', 'AI / ML, Python, C, C++, html, css, javascript, java', 'No', 'No', 'SURNILA SUSHMITHA', 'Female', 75, 77, 7.38, 68.8, 0, '19215a0523@bvrit.ac.in'),
('19215A0524', 'FRUGAL TESTING & KAAR TECHNOLOGIES & ZEMOSO', 'LTI LEVEL - 1 & INFOSYS SE & KAAR TECHNOLOGIES & DBS & ADOBE ASSOCIATE CONSULTANT & ZEMOSO', 'CSE', 'Yes', 'AI / ML, Python, Mobile Applications, Web development', 'No', 'Yes', 'HARSHA YAMASANI', 'Male', 95, 93, 8.73, 82.3, 0, '19215a0524@bvrit.ac.in'),
('19215A0525', '', 'VIRTUSA REGULAR & COGNIZANT GENC ELEVATE', 'CSE', 'Yes', 'Python', 'No', 'Yes', 'KONDA SONALI', 'Female', 93, 90.28, 8.55, 80.5, 0, '19215a0525@bvrit.ac.in'),
('19215A0526', '', 'WIPRO OFF CAMPUS', 'CSE', 'Yes', 'Python', 'No', 'No', 'PARSA ANITHA', 'Female', 95, 82, 7.21, 67.1, 0, '19215a0526@bvrit.ac.in'),
('19215A0527', '', 'VIRTUSA GENERAL & WIPRO - NTH', 'CSE', 'No', 'Python, HTML,SQL', 'No', 'Yes', 'YEDLA KAMALA VANI ', 'Female', 77, 83, 7.86, 73.6, 0, '19215a0527@bvrit.ac.in'),
('19215A0528', '', 'ACCENTURE ASE', 'CSE', 'No', 'AI / ML, Cyber Security, Python, Mobile Applications, Java , C Programming', 'No', 'No', 'BANDI REVANTH', 'Male', 93, 83, 7.73, 72.3, 0, '19215a0528@bvrit.ac.in'),
('19215A0529', '', '', 'CSE', 'Yes', 'Python, Mobile Applications, JAVA, C, C++,', 'No', 'No', 'MARRIE DEVRAJ ', 'Male', 82, 82, 5.08, 45.8, 9, '19215A0529@bvrit.ac.in'),
('19215A0530', '', '', 'CSE', 'Yes', 'Python, Dbms', 'No', 'No', 'RANGA.BHAVANA', 'Female', 85, 78, 7.67, 71.7, 0, '19215a0530@bvrit.ac.in'),
('19215A1201', '', 'WIPRO - NTH', 'IT', 'Yes', 'AI / ML, IoT, Python, Mobile Applications', 'No', 'No', 'KONGARI PRASHANTH KUMAR', 'Male', 90, 64, 6.44, 59.4, 0, '19215a1201@bvrit.ac.in'),
('19215A1202', '', 'COGNIZANT GENC ELEVATE', 'IT', 'No', 'Cyber Security', 'No', 'No', 'BUSIME NAGA SHYAM', 'Male', 83, 78, 6.64, 61.4, 0, '19215a1202@bvrit.ac.in'),
('19215A1203', '', '', 'IT', 'No', 'Mobile Applications', 'No', 'No', 'KOKKONDA ROSHINI', 'Female', 95, 75, 6.45, 59.5, 0, '19215a1203@bvrit.ac.in'),
('19215A1204', '', 'WIPRO - NTH & TA DIGITAL & VIRTUSA GENERAL & PERSISTENT NAVAYUGA & DBS', 'IT', 'Yes', 'AI / ML, Cyber Security, Mobile Applications, WEB TECHNOLOGY,WEB DESIGNING.', 'No', 'No', 'RONDLA RANJITH REDDY', 'Male', 95, 73.05, 7.6, 71, 0, '19215a1204@bvrit.ac.in'),
('19215A1205', '', '', 'IT', 'Yes', 'C', 'No', 'No', 'KAMAKULA PREETHAM ', 'Male', 70, 67, 1.54, 10.4, 31, '19215a1205@bvrit.ac.in'),
('19215A1206', '', 'PENTAGON SPACE', 'IT', 'Yes', 'AI / ML, Cyber Security, IoT, Block Chain, Python, Cloud, Mobile Applications', 'No', 'No', 'JADHAVATH KIRAN', 'Male', 82, 65, 5.49, 49.9, 7, '19215a1206@bvrit.ac.in'),
('19215A1207', 'PRAMATI', 'PRAMATI', 'IT', 'No', 'AI / ML, IoT, Python, Mobile Applications', 'No', 'No', 'AMBERPET MANISH REDDY', 'Male', 82, 68, 6.85, 63.5, 0, '19215a1207@bvrit.ac.in'),
('19215A1208', '', 'TCS NINJA & ACCENTURE ASE', 'IT', 'Yes', 'Cyber Security, Python, Cloud, UX / UI, Mobile Applications, Web technologies ', 'No', 'No', 'SREENITHYA GUNAPATI', 'Female', 64, 69.55, 7.61, 71.1, 0, '19215A1208@bvrit.ac.in'),
('19215A1209', '', '', 'IT', 'Yes', 'AI / ML, Python', 'No', 'No', 'TAMBALLA YESUDAS', 'Male', 88, 83, 6.73, 62.3, 0, '19215a1209@bvrit.ac.in'),
('19215A1210', '', '', 'IT', 'Yes', 'AI / ML, Python, Mobile Applications, Web development', 'No', 'No', 'VENKATESHAM KUMMARI', 'Male', 82, 74, 6.69, 61.9, 0, '19215a1210@bvrit.ac.in'),
('19215A1211', '', '', 'IT', 'Yes', 'AI / ML, Python, Mobile Applications', 'No', 'No', 'VADLA SRINIVAS', 'Male', 80, 60, 5.27, 47.7, 8, '19215a1211@bvrit.ac.in'),
('19215A1212', '', 'WIPRO - NTH', 'IT', 'Yes', 'Python, UX / UI, Mobile Applications', 'No', 'No', 'ALAGUNTLA SHIVA KUMAR', 'Male', 88, 73, 6.93, 64.3, 0, '19215a1212@bvrit.ac.in'),
('22211a04q9', '', '', 'ECE', 'Yes', '', 'Yes', 'No', 'Pujitha', 'Female', 56, 94, 96, 0, 10, '22211a04q9@bvrit.ac.in'),
('22211a66c7', 'rty', '', 'CSD', 'Yes', '', 'No', 'Yes', 'akshitha', 'Female', 96, 97, 98, 0, 9, '22211a66c7@bvrit.ac.in'),
('22211a6708', '', '', 'CSD', 'Yes', '', 'No', 'No', 'ashwini', 'Female', 56, 94, 96, 0, 10, '22211a6708@bvrit.ac.in'),
('22211a6780', 'xyz', '', 'CSD', 'Yes', '', 'No', 'Yes', 'Chandana', 'Female', 93, 96, 93, 0, 10, '22211a6780@bvrit.ac.in'),
('22211a67a9', 'abc', '', 'CSD', 'Yes', '', 'No', 'Yes', 'Amulya', 'Female', 100, 97, 10, 0, 9, '22211a67a9@bvrit.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `rollnumber` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`rollnumber`, `email`, `name`, `password`) VALUES
('18211A0508', '18211A0508@bvrit.ac.in', 'suresh', '$2y$10$8cBvTQZHiWpa/SGpFrJtneFusFVh4x2BRb3R./HY02ruAt7IjKHHy'),
('22211a04q9', '22211a04q9@bvrit.ac.in', 'pujitha', '$2y$10$9O/Bg8kESHno8fKw4S3ouuh3RgjuRcbIn0obVEN58ubq9czAmRnX6'),
('22211a6780', '22211a6780@bvrit.ac.in', 'M.Chandana', '$2y$10$nEHKg3cpHP3EGRRIdCaQcuME80ZthnBzp1ZN7xt8v6goTUcmpaPsK'),
('22211a6781', '22211a6781@bvrit.ac.in', 'Chandu', '$2y$10$WjxJC9au.Fakxp60N4qVnOE8xKqj3hFKvngm7BxxuT0nT4GHQDPGq'),
('22211a67a9', '22211a67a9@bvrit.ac.in', 'SandiriAmulya', '$2y$10$7slbpM6vCX1w4t22vqfA.OqFb/LBJ9yEwqO8lZzrBQBMZlMSFapcW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindetails`
--
ALTER TABLE `admindetails`
  ADD PRIMARY KEY (`SINO`);

--
-- Indexes for table `change_requests`
--
ALTER TABLE `change_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`rollnumber`);

--
-- Indexes for table `studentdata`
--
ALTER TABLE `studentdata`
  ADD PRIMARY KEY (`rollnumber`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`rollnumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindetails`
--
ALTER TABLE `admindetails`
  MODIFY `SINO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `change_requests`
--
ALTER TABLE `change_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
