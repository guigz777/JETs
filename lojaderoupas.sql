-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/11/2025 às 12:10
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
-- Banco de dados: `lojaderoupas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(500) NOT NULL,
  `descricao` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `imagem`, `descricao`, `created_at`) VALUES
(26, 'Camisa Treino Atlético Mineiro 2024', 299.90, 'http://localhost/loja%20de%20roupa/jets/src/images/atletico.png', 'Mostre sua paixão pelo Galo com a Camisa de Treino Atlético Mineiro 2024. Design moderno branco e preto com detalhes dourados.', '2025-06-12 16:12:14'),
(27, ' FURIA eSports 2024', 249.90, 'http://localhost/loja%20de%20roupa/jets/src/images/furia.png', 'Camisa FURIA 2024 traz estilo agressivo em design preto com detalhes brancos e tecnologia Adidas para máximo conforto.', '2025-06-12 16:12:14'),
(28, 'LOUD 2024 – Edição Oficial', 249.90, 'http://localhost/loja%20de%20roupa/jets/src/images/loud.png', 'Camisa Oficial LOUD 2024 une estilo urbano e universo gamer. Verde escuro com detalhes geométricos e tecnologia de performance.', '2025-06-12 16:12:14'),
(29, 'Camisa Inter Miami 2024', 279.90, 'http://localhost/loja%20de%20roupa/jets/src/images/miami.png', 'Camisa Inter Miami 2024 rosa e preta une estilo e conforto com tecnologia AEROREADY da Adidas para máxima performance.', '2025-06-12 16:12:14'),
(30, 'Nike Team Training Dourada', 149.90, 'http://localhost/loja%20de%20roupa/jets/src/images/bola2.png', 'Com design arrojado em preto, branco e dourado, a Nike Team Training oferece durabilidade e controle para treinos intensos.', '2025-06-12 16:12:14'),
(31, 'Nike Team Training Azul', 149.90, 'http://localhost/loja%20de%20roupa/jets/src/images/bola3.png', 'A Nike Team Training Azul tem visual moderno com pinceladas vibrantes, ideal para treinos e jogos casuais com ótimo desempenho.', '2025-06-12 16:12:14'),
(33, 'Camisa Flamengo 2024 – Manga Longa', 349.90, 'http://localhost/loja%20de%20roupa/jets/src/images/flamengo.png', 'Camisa Flamengo 2024 Home manga longa com faixas rubro-negras em visual moderno. Conta com tecnologia AEROREADY da Adidas.', '2025-06-12 16:12:14'),
(34, 'Bola de Futebol Nike Strike', 159.90, 'http://localhost/loja%20de%20roupa/jets/src/images/bola4.png', 'Bola de futebol vermelha com logo Nike em destaque, anéis brancos texturizados para controle e precisão. Ideal para campo ou lazer.', '2025-06-12 16:12:14'),
(35, 'Camisa Polo Mercedes-AMG F1', 349.90, 'http://localhost/loja%20de%20roupa/jets/src/images/f1.png', 'Camisa polo oficial da Mercedes-AMG Petronas F1. Modelo branco com logotipos dos patrocinadores estampados.', '2025-06-12 16:12:14'),
(36, 'Chuteira Nike Society Preta Classic Strike', 249.90, 'http://localhost/loja%20de%20roupa/jets/src/images/14.png', 'Tênis de futsal turquesa com design leve, solado antiderrapante e perfurações que garantem excelente ventilação.', '2025-06-12 16:12:14'),
(37, 'Tênis Nike Futsal Turquesa Pro Touch', 219.90, 'http://localhost/loja%20de%20roupa/jets/src/images/15.png', 'Chuteira de society preta com logo branco da Nike. Solado com microtravas garante ótima tração em gramados sintéticos.', '2025-06-12 16:12:14'),
(38, 'Tênis Nike Futsal Velocity Amarelo', 229.90, 'http://localhost/loja%20de%20roupa/jets/src/images/16.png', 'Tênis de futsal amarelo vibrante com logo \"NIKE\" em destaque na lateral. Estilo agressivo e solado ideal para pisos indoor.', '2025-06-12 16:12:14'),
(39, 'Tênis Nike Futsal Hyper Verde Neon', 239.90, 'http://localhost/loja%20de%20roupa/jets/src/images/18.png', 'Tênis de futsal verde neon com cabedal texturizado e solado emborrachado que oferece conforto, tração e agilidade nas quadras.', '2025-06-12 16:12:14'),
(40, 'Jaqueta Mercedes-AMG x Adidas Performance Preta', 449.90, 'http://localhost/loja%20de%20roupa/jets/src/images/17.png', 'Jaqueta Mercedes-AMG Petronas e Adidas. Tecido leve, zíper frontal, listras azul-turquesa e logos bordados no peito.', '2025-06-12 16:12:14'),
(41, 'Chuteira Adidas Messi Turf Branco/Prata', 279.90, 'http://localhost/loja%20de%20roupa/jets/src/images/chuteira.png', 'Chuteira society Messi para gramado sintético. Design branco, prata e rosa com \"MESSI\" estampado na lateral.', '2025-06-12 16:12:14'),
(42, 'Jaqueta Realand Adidas', 299.90, 'http://localhost/loja%20de%20roupa/jets/src/images/mangalonga.png', 'Jaqueta branca com listras lilás, zíper frontal e logo Realand. Estilo urbano com toque esportivo.', '2025-06-12 16:25:18'),
(43, 'Camisa Real Madrid 2024 Manga Longa', 349.90, 'http://localhost/loja%20de%20roupa/jets/src/images/real.png', 'Camisa branca com detalhes laranja, escudo do Real e manga longa. Conforto e elegância no estilo merengue.', '2025-06-12 16:25:41'),
(44, 'Nike Tiempo Legend 10 TF Rosa', 549.90, 'http://localhost/loja%20de%20roupa/jets/src/images/rosa.png', 'Chuteira society rosa e branca com solado de borracha. Estilo, conforto e performance em um só modelo.', '2025-06-12 16:28:39'),
(45, 'Adidas Predator Accuracy TF', 499.90, 'http://localhost/loja%20de%20roupa/jets/src/images/777.png', 'Chuteira preta com detalhes vermelhos. Design agressivo, ideal para precisão e controle no society.', '2025-06-12 16:29:12'),
(46, 'Adidas Samba Classic', 599.90, 'http://localhost/loja%20de%20roupa/jets/src/images/666.png', 'Tênis clássico com listras douradas, sola de borracha e estilo retrô. Perfeito para futsal ou uso casual.', '2025-06-12 16:29:46'),
(47, 'Juventus Home 2024/25', 399.90, 'http://localhost/loja%20de%20roupa/jets/src/images/31.png', 'Camisa listrada preta e branca da Juventus com logo Adidas e três estrelas.', '2025-06-16 13:20:10'),
(48, 'Real Madrid Home 2024/25', 449.90, 'http://localhost/loja%20de%20roupa/jets/src/images/34.png', 'Camisa branca do Real Madrid com patrocínio Emirates e listras pretas nos ombros.', '2025-06-16 13:20:41'),
(49, 'Cruzeiro Away 2024', 349.90, 'http://localhost/loja%20de%20roupa/jets/src/images/36.png', 'Camisa branca do Cruzeiro com detalhes azuis inspirados em pedras preciosas e constelação.', '2025-06-16 13:22:59'),
(50, 'Arsenal Home 2024/25', 449.90, 'http://localhost/loja%20de%20roupa/jets/src/images/38.png', 'Camisa vermelha com mangas brancas e detalhes azuis, logo Emirates no centro.', '2025-06-16 13:21:39'),
(51, 'Cruzeiro Home 2024', 349.90, 'http://localhost/loja%20de%20roupa/jets/src/images/39.png', 'Camisa azul com mangas brancas e patrocínio Betfair, design moderno com gola redonda.', '2025-06-16 13:22:05'),
(52, 'Bola Nike Academy Toucan', 159.90, 'http://localhost/loja%20de%20roupa/jets/src/images/26.png', 'Bola com estampa tropical e tucano, ideal para jogos recreativos com estilo.', '2025-06-16 13:33:16'),
(53, 'Bola Nike Academy Turquesa', 149.90, 'http://localhost/loja%20de%20roupa/jets/src/images/27.png', 'Bola de futebol com design moderno em tons de verde, branco e preto. Ideal para treinos.', '2025-06-16 13:33:42'),
(54, 'Jaqueta Adidas Verde Clássica', 279.90, 'http://localhost/loja%20de%20roupa/jets/src/images/28.png', 'Jaqueta retrô com listras nas mangas. Confortável e estilosa para o dia a dia.', '2025-06-16 13:34:10'),
(55, 'Bola Nike Pitch Laranja', 139.90, 'http://localhost/loja%20de%20roupa/jets/src/images/29.png', 'Bola vibrante para partidas em campo, com visual marcante e durável.', '2025-06-16 13:34:36'),
(56, 'Bola Nike Pitch Laranja', 139.90, 'http://localhost/loja%20de%20roupa/jets/src/images/30.png', 'Bola vibrante para partidas em campo, com visual marcante e durável.', '2025-06-16 13:35:43'),
(57, 'Camisa Adidas Cruzeiro Preta', 249.90, 'http://localhost/loja%20de%20roupa/jets/src/images/32.png', 'Camisa oficial com visual urbano e detalhes em azul claro. Representa o Cruzeiro com estilo.', '2025-06-16 13:36:10'),
(58, 'Camisa Polo Cruzeiro 2024', 229.90, 'http://localhost/loja%20de%20roupa/jets/src/images/33.png', 'Camisa polo azul com detalhes em vermelho, moderna e ideal para torcedores do Cruzeiro.', '2025-08-29 16:06:09');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
