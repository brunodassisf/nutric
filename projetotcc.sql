-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 23-Out-2017 às 17:53
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetotcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

DROP TABLE IF EXISTS `consulta`;
CREATE TABLE IF NOT EXISTS `consulta` (
  `data` date NOT NULL,
  `hora` varchar(5) NOT NULL,
  `crn` decimal(8,0) NOT NULL,
  `cpf` decimal(11,0) NOT NULL,
  PRIMARY KEY (`data`),
  UNIQUE KEY `hora` (`hora`),
  KEY `fk_nutricionista` (`crn`),
  KEY `fk_paciente` (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nutricionista`
--

DROP TABLE IF EXISTS `nutricionista`;
CREATE TABLE IF NOT EXISTS `nutricionista` (
  `nome` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `crn` decimal(8,0) NOT NULL,
  `senha` varchar(10) NOT NULL,
  PRIMARY KEY (`nome`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `nutricionista`
--

INSERT INTO `nutricionista` (`nome`, `email`, `endereco`, `crn`, `senha`) VALUES
('Bruno de Assis Ferreira', 'brunodassis30@gmail.com', 'rua mariluz 70', '64654121', '1122334455'),
('anna', 'ann123@gmail.com', 'rua vargas', '19235837', '12345678');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `nome` varchar(100) DEFAULT NULL,
  `cpf` decimal(11,0) NOT NULL,
  `ultimopeso` float DEFAULT NULL,
  `pesoatual` float NOT NULL,
  `altura` float NOT NULL,
  `idade` decimal(2,0) NOT NULL,
  `datan` date NOT NULL,
  `optradio` char(1) NOT NULL,
  `imc` float DEFAULT NULL,
  `gorduratricpital` float DEFAULT NULL,
  `circunferenciabraço` float DEFAULT NULL,
  `circunferenciambraço` float DEFAULT NULL,
  `gorduracorporal` float DEFAULT NULL,
  `alergiamedicamento` char(3) DEFAULT NULL,
  `algummedicamento` char(3) DEFAULT NULL,
  `quaismedicamentos` varchar(500) DEFAULT NULL,
  `tempomedicamento` varchar(100) DEFAULT NULL,
  `bebeagua` char(3) DEFAULT NULL,
  `quantoscopos` decimal(10,0) DEFAULT NULL,
  `intestinal` varchar(15) DEFAULT NULL,
  `urina` varchar(30) DEFAULT NULL,
  `fuma` char(3) DEFAULT NULL,
  `alcool` char(3) DEFAULT NULL,
  `atividadefisica` char(3) DEFAULT NULL,
  `pratica` varchar(200) DEFAULT NULL,
  `vezes` decimal(1,0) DEFAULT NULL,
  `consulta` varchar(500) DEFAULT NULL,
  `saude` char(3) DEFAULT NULL,
  `familiar` varchar(500) DEFAULT NULL,
  `alergia` varchar(500) DEFAULT NULL,
  `anamnese` varchar(500) DEFAULT NULL,
  `sabadoedomingo` varchar(500) DEFAULT NULL,
  `examesf` varchar(10) DEFAULT NULL,
  `examesfr` varchar(500) DEFAULT NULL,
  `examess` varchar(5) DEFAULT NULL,
  `examessr` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
