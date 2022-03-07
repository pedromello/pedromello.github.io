-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Mar-2022 às 19:57
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `urna_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `prefeito`
--

CREATE TABLE `prefeito` (
  `id` int(11) NOT NULL,
  `codigo` char(2) NOT NULL,
  `votos` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `prefeito`
--

INSERT INTO `prefeito` (`id`, `codigo`, `votos`) VALUES
(1, '65', 4),
(2, '54', 0),
(3, '45', 1),
(4, '15', 0),
(5, '12', 1),
(6, 'NN', 8),
(7, 'BB', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vereador`
--

CREATE TABLE `vereador` (
  `id` int(11) NOT NULL,
  `codigo` char(5) NOT NULL,
  `votos` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vereador`
--

INSERT INTO `vereador` (`id`, `codigo`, `votos`) VALUES
(1, '51222', 1),
(2, '55555', 5),
(3, '45000', 0),
(4, '27222', 1),
(5, '15123', 0),
(6, '43333', 1),
(7, 'NNNNN', 1),
(8, 'BBBBB', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `prefeito`
--
ALTER TABLE `prefeito`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Índices para tabela `vereador`
--
ALTER TABLE `vereador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `prefeito`
--
ALTER TABLE `prefeito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `vereador`
--
ALTER TABLE `vereador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
