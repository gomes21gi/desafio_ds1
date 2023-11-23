-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2023 às 12:55
-- Versão do servidor: 8.0.21
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `desafio_ds1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alocacao`
--

CREATE TABLE `alocacao` (
  `id_Alocacao` int NOT NULL,
  `Area` int NOT NULL,
  `id_automovel` int NOT NULL,
  `id_concessionaria` int NOT NULL,
  `Quantidade` int NOT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `alocacao`
--

INSERT INTO `alocacao` (`id_Alocacao`, `Area`, `id_automovel`, `id_concessionaria`, `Quantidade`, `id_usuario`) VALUES
(1, 1, 1, 1, 8, 0),
(2, 2, 2, 2, 1, 0),
(3, 4, 3, 3, 4, 0),
(4, 7, 4, 4, 6, 0),
(5, 8, 5, 5, 4, 0),
(6, 9, 6, 1, 4, 0),
(7, 10, 7, 2, 1, 0),
(8, 1, 8, 2, 7, 0),
(9, 2, 9, 3, 2, 0),
(10, 4, 10, 4, 6, 0),
(11, 7, 11, 5, 3, 0),
(12, 8, 12, 1, 9, 0),
(13, 9, 13, 2, 9, 0),
(14, 10, 14, 3, 6, 0),
(15, 1, 15, 3, 4, 0),
(16, 2, 16, 4, 1, 0),
(17, 4, 17, 5, 8, 0),
(18, 7, 18, 1, 4, 0),
(19, 8, 19, 2, 10, 0),
(20, 9, 20, 3, 10, 0),
(21, 10, 21, 4, 7, 0),
(22, 1, 22, 4, 3, 0),
(23, 2, 23, 5, 5, 0),
(24, 4, 24, 1, 4, 0),
(25, 7, 25, 2, 3, 0),
(26, 8, 26, 3, 3, 0),
(27, 9, 27, 4, 10, 0),
(28, 10, 28, 5, 4, 0),
(29, 1, 29, 1, 2, 0),
(30, 2, 30, 2, 3, 0),
(31, 4, 31, 3, 4, 0),
(32, 7, 32, 4, 2, 0),
(33, 8, 33, 5, 3, 0),
(34, 9, 34, 1, 4, 0),
(35, 10, 35, 2, 3, 0),
(36, 1, 36, 3, 2, 0),
(37, 2, 37, 4, 3, 0),
(38, 4, 38, 5, 3, 0),
(39, 7, 39, 1, 2, 0),
(40, 8, 40, 2, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `automoveis`
--

CREATE TABLE `automoveis` (
  `Id_Automovel` int NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `automoveis`
--

INSERT INTO `automoveis` (`Id_Automovel`, `Modelo`, `Preco`) VALUES
(1, 'Fiat Strada', '43115.00'),
(2, 'Fiat Argo', '47660.00'),
(3, 'Fiat Mobi', '32102.00'),
(4, 'Jeep Compass', '34950.00'),
(5, 'Hyundai HB20', '49302.00'),
(6, 'Jeep Renegade', '36661.00'),
(7, 'Volkswagen T-Cross', '38182.00'),
(8, 'Fiat Toro', '57733.00'),
(9, 'Hyundai Creta', '55998.00'),
(10, 'Chevrolet S10', '51035.00'),
(11, 'Toyota Corolla Cross', '34544.00'),
(12, 'Toyota Hilux', '53937.00'),
(13, 'Toyota Corolla', '55022.00'),
(14, 'Volkswagen Gol', '48253.00'),
(15, 'Honda HR-V', '53438.00'),
(16, 'Renault Kwid', '31810.00'),
(17, 'Volkswagen Nivus', '35104.00'),
(18, 'Hyundai HB20S', '31855.00'),
(19, 'Ford Ranger', '48927.00'),
(20, 'Fiat Uno', '38111.00'),
(21, 'Fiat Cronos', '36515.00'),
(22, 'Citroën C4 Cactus', '53654.00'),
(23, 'Toyota Yaris Hatchback', '55869.00'),
(24, 'Volkswagen Voyage', '30954.00'),
(25, 'Honda Civic', '30871.00'),
(26, 'Volkswagen Saveiro', '32306.00'),
(27, 'Caoa Chery Tiggo 5x', '30069.00'),
(28, 'Volkswagen Virtus', '40689.00'),
(29, 'Fiat Grand Siena', '33469.00'),
(30, 'Caoa Chery Tiggo 8', '48481.00'),
(31, 'Chevrolet Tracker', '30648.00'),
(32, 'Peugeot 208', '46934.00'),
(33, 'Toyota SW4', '54252.00'),
(34, 'Nissan Frontier', '32596.00'),
(35, 'Honda WR-V', '35139.00'),
(36, 'Volkswagen Taos', '47546.00'),
(37, 'Mitsubishi L200', '57049.00'),
(38, 'Renault Oroch', '48756.00'),
(39, 'Toyota Yaris Sedan', '43077.00'),
(40, 'Renault Duster', '52641.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `Id_Cliente` int NOT NULL,
  `Nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`Id_Cliente`, `Nome`) VALUES
(1, 'Adalberto Martins da Silva\r\n'),
(2, 'Adan Roger Guimarães Dias\r\n'),
(3, 'Adão Walter Gomes de Sousa\r\n'),
(4, 'Adelson Fernandes Sena\r\n'),
(5, 'Ademir Augusto Simões\r\n'),
(6, 'Ademir Borges dos Santos\r\n'),
(7, 'Adilio José da Silva Santos\r\n'),
(8, 'Adriana Ferreira de Lima Teodoro\r\n'),
(9, 'Adriano Bezerra Apolinario\r\n'),
(10, 'Adriano Heleno Basso\r\n'),
(11, 'Adriano Lourenço do Rego\r\n'),
(12, 'Adriano Matos Santos\r\n'),
(13, 'Adriano Pires Caetano\r\n'),
(14, 'Adriano Prada de Campos\r\n'),
(15, 'Adriel Alberto dos Santos\r\n'),
(16, 'Agner Vinicius Marques de Camargo\r\n'),
(17, 'Agrinaldo Ferreira Soares\r\n'),
(18, 'Alan Jhonnes Banlian da Silva e Sá\r\n'),
(19, 'Alberto Ramos Rodrigues\r\n'),
(20, 'Alcides José Ramos\r\n'),
(21, 'Aldemir SantAna dos Santos\r\n'),
(22, 'Aleksandro Marcelo da Silva\r\n'),
(23, 'Alessandro Martins Silva\r\n'),
(24, 'Alessandro Sanches\r\n'),
(25, 'Alex dos Reis de Jesus\r\n'),
(26, 'Alex Ferreira Soares\r\n'),
(27, 'Alex Sandro Oliveira\r\n'),
(28, 'Alex Souza Farias\r\n'),
(29, 'Alexandra de Lima Silva\r\n'),
(30, 'Alexandre Clemente da Costa\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `concessionaria`
--

CREATE TABLE `concessionaria` (
  `Id_Concessionaria` int NOT NULL,
  `concessionaria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `concessionaria`
--

INSERT INTO `concessionaria` (`Id_Concessionaria`, `concessionaria`) VALUES
(1, 'Atena concessionária\r\n'),
(2, 'Demétir concessionária\r\n'),
(3, 'Hera concessionária\r\n'),
(4, 'Estia concessionária\r\n'),
(5, 'Perséfone concessionária\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Nome`, `Senha`) VALUES
(1, 'giovana_gomes', '012306');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `automoveis`
--
ALTER TABLE `automoveis`
  ADD PRIMARY KEY (`Id_Automovel`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Índices para tabela `concessionaria`
--
ALTER TABLE `concessionaria`
  ADD PRIMARY KEY (`Id_Concessionaria`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `automoveis`
--
ALTER TABLE `automoveis`
  MODIFY `Id_Automovel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id_Cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `concessionaria`
--
ALTER TABLE `concessionaria`
  MODIFY `Id_Concessionaria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
