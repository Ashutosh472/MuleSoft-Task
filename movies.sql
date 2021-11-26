-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 05:36 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `name` text DEFAULT NULL,
  `Actor` text DEFAULT NULL,
  `Actress` text DEFAULT NULL,
  `Director` text DEFAULT NULL,
  `Year` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`name`, `Actor`, `Actress`, `Director`, `Year`) VALUES
('1990', 'Tie Me Up! Tie Me Down!', 'Banderas, Antonio', 'Abril, Victoria', ' Pedro'),
('1991', 'High Heels', ' Miguel', 'Abril, Victoria', 'Pedro'),
('1983', 'Dead Zone, The', 'Walken, Christopher', 'Adams, Brooke', 'Cronenberg, David'),
('1979', 'Cuba', 'Connery, Sean', 'Adams, Brooke', 'Lester, Richard'),
('1978', 'Days of Heaven', 'Gere, Richard', 'Adams, Brooke', 'Malick, Terrence'),
('1983', 'Octopussy', 'Moore, Roger', 'Adams, Maud', 'Glen, John'),
('1984', 'Target Eagle', 'Connors, Chuck', 'Adams, Maud', 'Loma, Jos� Antonio de la'),
('1989', 'American Angels: Baptism of Blood, The', 'Bergen, Robert D.', 'Adams, Trudy', 'Sebastian, Beverly'),
('1985', 'Subway', 'Lambert, Christopher', 'Adjani, Isabelle', 'Besson, Luc'),
('1990', 'Camille Claudel', 'Depardieu, G�rard', 'Adjani, Isabelle', 'Nuytten, Bruno'),
('1982', 'Fanny and Alexander', 'Ahlstedt, B�rje', 'Adolphson, Kristina', 'Bergman, Ingmar'),
('1982', 'Tragedy of a Ridiculous Man', 'Tognazzi, Ugo', 'Aimee, Anouk', 'Bertolucci, Bernardo'),
('1966', 'A Man & a Woman', 'Trintignant, Jean-Louis', 'Aimee, Anouk', 'Lelouch, Claude'),
('1986', 'A Man & a Woman: Twenty Years Later', 'Trintignant, Jean-Louis', 'Aimee, Anouk', 'Lelouch, Claude'),
('1966', 'Un Hombre y una Mujer', 'Trintignant, Jean-Louis', 'Aimee, Anouk', 'Lelouch, Claude'),
('1985', 'Official Story, The', 'Alterio, Hector', 'Aleandro, Norma', 'Puenzo, Luiz');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
