-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/04/2024 às 15:51
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_secretaria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contas`
--

CREATE TABLE `contas` (
  `usuario` varchar(20) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `perfil` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contas`
--

INSERT INTO `contas` (`usuario`, `senha`, `perfil`) VALUES
('admin', '123', 'escola'),
('techia', '321', 'empresa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresas`
--

CREATE TABLE `empresas` (
  `cnpj` varchar(25) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `telefone` varchar(25) NOT NULL,
  `e_mail` varchar(45) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `senha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `empresas`
--

INSERT INTO `empresas` (`cnpj`, `nome`, `telefone`, `e_mail`, `usuario`, `senha`) VALUES
('71721259000170', 'TechIA', '32978541256', 'techia@senaimgaluno.com', 'techia', '321');

-- --------------------------------------------------------

--
-- Estrutura para tabela `relatorios`
--

CREATE TABLE `relatorios` (
  `id` int(11) NOT NULL,
  `mes` varchar(15) NOT NULL,
  `ano` int(11) NOT NULL,
  `local_arquivo` varchar(200) NOT NULL,
  `empresas_cnpj` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `relatorios`
--

INSERT INTO `relatorios` (`id`, `mes`, `ano`, `local_arquivo`, `empresas_cnpj`) VALUES
(28, '03', 2024, 'Empresas/71721259000170/frequencia_03-2024.pdf', '71721259000170');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`usuario`);

--
-- Índices de tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`cnpj`);

--
-- Índices de tabela `relatorios`
--
ALTER TABLE `relatorios`
  ADD PRIMARY KEY (`id`,`empresas_cnpj`),
  ADD KEY `fk_relatorios_empresas_idx` (`empresas_cnpj`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `relatorios`
--
ALTER TABLE `relatorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `relatorios`
--
ALTER TABLE `relatorios`
  ADD CONSTRAINT `fk_relatorios_empresas` FOREIGN KEY (`empresas_cnpj`) REFERENCES `empresas` (`cnpj`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
