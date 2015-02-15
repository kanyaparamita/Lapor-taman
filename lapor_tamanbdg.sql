-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 15, 2015 at 06:22 AM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lapor_tamanbdg`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE IF NOT EXISTS `t_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `alamat` text,
  `email` text NOT NULL,
  `no_tlp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_adu`
--

CREATE TABLE IF NOT EXISTS `t_adu` (
  `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pengadu` text NOT NULL,
  `email_pengadu` text,
  `kategori` int(11) NOT NULL DEFAULT '0',
  `konten` text NOT NULL,
  `status` int(11) NOT NULL,
  `id_mengenai` int(11) NOT NULL,
  PRIMARY KEY (`id_pengaduan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_instansi`
--

CREATE TABLE IF NOT EXISTS `t_instansi` (
  `id_instansi` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `email` text NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_taman`
--

CREATE TABLE IF NOT EXISTS `t_taman` (
  `id_taman` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `id_berwenang` int(11) NOT NULL,
  PRIMARY KEY (`id_taman`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
