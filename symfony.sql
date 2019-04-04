-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2017 at 05:48 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symfony`
--

-- --------------------------------------------------------

--
-- Table structure for table `ccounji`
--

CREATE TABLE `ccounji` (
  `id` int(50) NOT NULL,
  `date_d` date NOT NULL,
  `date_f` date NOT NULL,
  `motif` varchar(50) NOT NULL,
  `type_c` varchar(50) NOT NULL,
  `raison` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccounji`
--

INSERT INTO `ccounji` (`id`, `date_d`, `date_f`, `motif`, `type_c`, `raison`) VALUES
(1, '2017-01-01', '2017-12-01', 'm', 'f', 'un raison');

-- --------------------------------------------------------

--
-- Table structure for table `ce`
--

CREATE TABLE `ce` (
  `id` int(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `type_C` varchar(50) NOT NULL,
  `date_d` date NOT NULL,
  `date_f` date NOT NULL,
  `heure_d` time NOT NULL,
  `heure_f` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ce`
--

INSERT INTO `ce` (`id`, `description`, `type_C`, `date_d`, `date_f`, `heure_d`, `heure_f`) VALUES
(1, 'aaaaa', 'deductible du solde', '2017-01-01', '2017-09-01', '00:00:00', '07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `counji`
--

CREATE TABLE `counji` (
  `id` int(50) NOT NULL,
  `date_c` date NOT NULL,
  `motif` varchar(50) NOT NULL,
  `type_c` varchar(50) NOT NULL,
  `raison` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counji`
--

INSERT INTO `counji` (`id`, `date_c`, `motif`, `type_c`, `raison`) VALUES
(1, '2012-01-01', 'f', 'm', 'malade');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `mat` int(11) NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ncin` int(11) NOT NULL,
  `dcin` date NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tel` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `situation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_enfant` int(11) NOT NULL,
  `date_embauche` date NOT NULL,
  `type_contrat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ncnss` int(11) NOT NULL,
  `postee` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `echelon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `document_u` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`mat`, `prenom`, `nom`, `ncin`, `dcin`, `adresse`, `tel`, `email`, `situation`, `nb_enfant`, `date_embauche`, `type_contrat`, `ncnss`, `postee`, `echelon`, `document_u`) VALUES
(5, 'b', 'b', 2157556, '2012-01-01', 'hujn,k;l', 777854, 'adnen.ti4@gmail.com', 'situtation', 854, '2012-01-01', 'stvp', 8451, 'drftgyhnj,k', 'tfgyhujik', 'cin'),
(6, 'a', 'a', 21575555, '2012-01-01', 'ftyguhijookpeioc', 8456945, 'a.b@live.fr', 'situtation', 5, '2012-01-01', 'stvp', 55415, '8037', '4', 'cin'),
(7, 'a1', 'a', 5541455, '2012-06-01', 'tgyhujik', 852654, 'a.b2@live.d', 'situtation', 754, '2012-01-01', 'stvp', 451, 'ok', '845', 'cin'),
(8, 'adnen', 'manssouri', 979805, '2012-01-01', 'cite selten tat', 95247522, 'a.j@live.fr', 'célibrataire', 5, '2012-01-01', 'stvp', 955555, '8037', 'aa', 'cin');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ccounji`
--
ALTER TABLE `ccounji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ce`
--
ALTER TABLE `ce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counji`
--
ALTER TABLE `counji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`mat`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ccounji`
--
ALTER TABLE `ccounji`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ce`
--
ALTER TABLE `ce`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `counji`
--
ALTER TABLE `counji`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `mat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
