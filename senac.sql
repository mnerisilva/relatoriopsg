-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Mar-2023 às 18:37
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `senac`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatoriopsg_`
--

CREATE TABLE `relatoriopsg_` (
  `id` int(10) NOT NULL,
  `curso` varchar(100) DEFAULT NULL,
  `ch_meta` varchar(6) DEFAULT NULL,
  `ch_curso` varchar(6) DEFAULT NULL,
  `matriculas_meta` varchar(14) DEFAULT NULL,
  `saldo_matriculas` varchar(20) DEFAULT NULL,
  `porcentagem_execucao` varchar(14) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `relatoriopsg_`
--

INSERT INTO `relatoriopsg_` (`id`, `curso`, `ch_meta`, `ch_curso`, `matriculas_meta`, `saldo_matriculas`, `porcentagem_execucao`, `estado`) VALUES
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
-- Estrutura da tabela `relatoriospsg_old`
--

CREATE TABLE `relatoriospsg_old` (
  `id` int(10) NOT NULL,
  `curso` varchar(100) NOT NULL,
  `chMeta` varchar(6) NOT NULL,
  `chCurso` varchar(6) NOT NULL,
  `matriculasMeta` varchar(10) NOT NULL,
  `matriculasEfetivadas` varchar(10) NOT NULL,
  `saldoMatriculas` varchar(10) NOT NULL,
  `porcentagemExecucao` varchar(7) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `mes` varchar(2) NOT NULL,
  `ano` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `dt`, `regiao`, `privilegio`) VALUES
(1, 'ewerson', '$2y$10$4aC3ZpViMGLROo3jmlVe9u1Yxui8Od/RFybLohpw1.ZlQALTqm2qS', '2023-03-10 08:21:49', 9008, '10'),
(2, 'jhonatan', '$2y$10$we7J3s7PoA0ZQNcarIO99evwCPQ7CjcNzXusfLXZuvXDpyRjNVJUu', '2023-03-10 08:45:50', 9008, '10');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `relatoriopsg_`
--
ALTER TABLE `relatoriopsg_`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `relatoriospsg_old`
--
ALTER TABLE `relatoriospsg_old`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `relatoriopsg_`
--
ALTER TABLE `relatoriopsg_`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `relatoriospsg_old`
--
ALTER TABLE `relatoriospsg_old`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
