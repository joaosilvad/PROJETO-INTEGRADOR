-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/05/2024 às 01:05
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agendador`
--
CREATE DATABASE IF NOT EXISTS `agendador` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agendador`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `consultas`
--

DROP TABLE IF EXISTS `consultas`;
CREATE TABLE IF NOT EXISTS `consultas` (
  `ID` smallint(6) NOT NULL AUTO_INCREMENT,
  `CPF` varchar(14) NOT NULL,
  `Especializacao` varchar(120) NOT NULL,
  `Data` date NOT NULL,
  `Hora` time(6) NOT NULL,
  `Medico` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consultas`
--

INSERT INTO `consultas` (`ID`, `CPF`, `Especializacao`, `Data`, `Hora`, `Medico`) VALUES
(1, '465.663.968-02', '3', '2024-05-02', '14:07:00.000000', '3'),
(2, '427.145.868-64', '3', '2024-05-03', '15:10:00.000000', '3'),
(3, '427.145.868-64', '4', '2070-12-01', '14:20:00.000000', '4'),
(4, '427.145.868-64', '6', '2024-06-20', '02:09:00.000000', '6'),
(5, '465.663.968-02', '1', '2024-05-29', '13:52:00.000000', '1'),
(6, '465.663.968-02', '6', '2024-06-25', '14:55:00.000000', '6');

-- --------------------------------------------------------

--
-- Estrutura para tabela `especializacao`
--

DROP TABLE IF EXISTS `especializacao`;
CREATE TABLE IF NOT EXISTS `especializacao` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `medico` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `especializacao`
--

INSERT INTO `especializacao` (`ID`, `nome`, `medico`) VALUES
(1, 'Cardiologia', 'Dr Silva'),
(2, 'Oftalmologia', 'Dr Jorge'),
(3, 'Ortopedia', 'Dr Fabio'),
(4, 'Neurologia', 'Dra Paula'),
(5, 'Pediatria', 'Dra Vitoria'),
(6, 'Psiquiatria', 'Dr Alex');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
