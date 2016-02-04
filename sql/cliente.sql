-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 04/02/2016 às 19:06
-- Versão do servidor: 5.6.26
-- Versão do PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sga`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cpf` varchar(14) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `carro` varchar(50) DEFAULT NULL,
  `placa` varchar(8) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE IF NOT EXISTS `fornecedor` (
  `id` int(11) NOT NULL,
  `razaoSocial` varchar(100) NOT NULL,
  `cnpj` varchar(100) NOT NULL,
  `representante` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id`, `razaoSocial`, `cnpj`, `representante`, `telefone`, `endereco`) VALUES
(4, 'Testandoa lteração  sa', '21312  ', 'everton  ', ' ', 'ifpe  '),
(6, 'aa', 'aa', 'aa', 'a', 'aa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `precoCusto` double DEFAULT NULL,
  `precoVenda` double DEFAULT NULL,
  `data` date DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `codigo`, `marca`, `precoCusto`, `precoVenda`, `data`, `quantidade`, `imagem`) VALUES
(2, 'teste', '1', 'BOSCH', 1, 1, '2322-09-22', 1, 'Wed Jan 27 16:30:56 BRST 2016 - DPS.png'),
(3, '  Teste  AEEE', '    ', NULL, 23, 232, '3214-09-22', 12, '"  "  Wed Jan 27 16:31:43 BRST 2016 - EDITADA.png " "'),
(4, 'Teste', '3', '2', 23, 232, '2322-09-22', 12, 'Wed Jan 27 16:32:11 BRST 2016 - EDITADA.png'),
(5, 'MIGA SUA LOKA', '    ', NULL, 1, 1, '2143-09-14', 1, '"  "  "  Mon Feb 01 14:55:43 BRST 2016 - DPS.png " " "'),
(6, 'Testando', '1', 'bosch', 200, 230, '2322-09-22', 1, 'Tue Feb 02 15:12:15 BRST 2016 - DPS.png');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
