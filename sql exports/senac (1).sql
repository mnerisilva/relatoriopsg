-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Mar-2023 às 05:13
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `senac`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatoriopsg`
--

CREATE TABLE `relatoriopsg` (
  `id` int(10) NOT NULL,
  `curso` varchar(100) DEFAULT NULL,
  `ch_meta` varchar(6) DEFAULT NULL,
  `ch_curso` varchar(6) DEFAULT NULL,
  `matriculas_meta` varchar(14) DEFAULT NULL,
  `saldo_matriculas` varchar(20) DEFAULT NULL,
  `porcentagem_execucao` varchar(14) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `relatoriopsg`
--

INSERT INTO `relatoriopsg` (`id`, `curso`, `ch_meta`, `ch_curso`, `matriculas_meta`, `saldo_matriculas`, `porcentagem_execucao`, `estado`) VALUES
(12, 'Agente de Viagens', '3.440', '172', '20', '10', '10', 'es'),
(13, 'Boas Práticas para Serviços de Alimentação e Dist', '400', '20', '20', '3', '17', 'es'),
(14, 'Cerimonial e protocolo para eventos', '800', '40', '20', '3', '17', 'es'),
(15, 'Planejamento e Organização de Eventos Sociais', '400', '20', '20', '6', '14', 'es'),
(16, 'Agente de Viagens', '1.720', '172', '10', '10', '0', 'go'),
(17, 'Cerimonial e protocolo para eventos', '400', '40', '10', '9', '1', 'go'),
(18, 'Planejamento e Organização de Eventos Sociais', '200', '20', '10', '6', '4', 'go'),
(19, 'Boas Práticas para Serviços de Alimentação e Dist', '200', '20', '10', '4', '6', 'ma'),
(20, 'Cerimonial e protocolo para eventos', '400', '40', '10', '6', '4', 'ma');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dt` varchar(19) NOT NULL,
  `regiao` int(4) NOT NULL,
  `privilegio` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `dt`, `regiao`, `privilegio`) VALUES
(1, 'ewerson', '$2y$10$4aC3ZpViMGLROo3jmlVe9u1Yxui8Od/RFybLohpw1.ZlQALTqm2qS', '2023-03-10 08:21:49', 9008, '2'),
(2, 'jhonatan', '$2y$10$we7J3s7PoA0ZQNcarIO99evwCPQ7CjcNzXusfLXZuvXDpyRjNVJUu', '2023-03-10 08:45:50', 9008, '1'),
(3, 'marcelo', '$2y$10$WvJTAN9SPYn5oXDabITmj.AdGpfxstw5L6jdeYXWVJgEbxIQ7QASi', '2023-03-12 21:50:30', 9888, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `relatoriopsg`
--
ALTER TABLE `relatoriopsg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `relatoriopsg`
--
ALTER TABLE `relatoriopsg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
