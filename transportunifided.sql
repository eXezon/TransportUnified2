-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Set-2021 às 00:51
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `transportunifided`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `careers`
--

CREATE TABLE `careers` (
  `car_id` int(11) NOT NULL,
  `car_numb` int(11) NOT NULL,
  `transp_id` int(11) NOT NULL,
  `car_price` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `careers`
--

INSERT INTO `careers` (`car_id`, `car_numb`, `transp_id`, `car_price`) VALUES
(1, 150, 1, 2.50),
(2, 160, 1, 1.00),
(3, 1, 2, 1.50),
(4, 732, 3, 2.00),
(5, 781, 3, 2.00),
(6, 1, 4, 1.35),
(7, 2, 4, 1.65),
(8, 3, 4, 1.95),
(9, 4, 4, 2.25),
(10, 5, 4, 2.66),
(11, 6, 4, 2.85),
(12, 7, 4, 3.16),
(13, 8, 4, 3.45),
(14, 150, 3, 2.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `transport`
--

CREATE TABLE `transport` (
  `transp_id` int(11) NOT NULL,
  `transp_name` varchar(20) NOT NULL,
  `transp_logo` varchar(220) DEFAULT NULL,
  `transp_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `transport`
--

INSERT INTO `transport` (`transp_id`, `transp_name`, `transp_logo`, `transp_type`) VALUES
(1, 'Vimeca', 'static/images/vimeca.png', 1),
(2, 'Metro', 'static/images/metro.png', 3),
(3, 'Carris', 'static/images/carris.png', 1),
(4, 'CP', 'static/images/cp.png', 2),
(5, 'SofLusa', 'static/images/soflusa.png', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `transport_type`
--

CREATE TABLE `transport_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `transport_type`
--

INSERT INTO `transport_type` (`type_id`, `type_name`) VALUES
(1, 'bus'),
(2, 'train'),
(3, 'subway'),
(4, 'boat');

-- --------------------------------------------------------

--
-- Estrutura da tabela `trips`
--

CREATE TABLE `trips` (
  `trip_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `car_numb` int(11) NOT NULL,
  `trip_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `trips`
--

INSERT INTO `trips` (`trip_id`, `user_id`, `car_numb`, `trip_date`) VALUES
(20, 1, 1, '2021-09-17'),
(21, 1, 12, '2021-09-12'),
(22, 1, 11, '2021-09-14'),
(23, 1, 14, '2021-09-01'),
(24, 1, 3, '2021-09-07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(220) NOT NULL,
  `password` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `phone` text NOT NULL,
  `card` varchar(220) DEFAULT NULL,
  `image` varchar(220) NOT NULL DEFAULT 'static/resources/images/A00.png',
  `user_type` int(11) NOT NULL,
  `token` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `phone`, `card`, `image`, `user_type`, `token`, `last_name`) VALUES
(1, 'Jacinto Santos', '$2y$10$eDbPAofTGHfI0KR4CQn2.u.s1yBzrleFkqyStH0yIOpETUgfwByXu', 'admin@admin.pt', '+351912345678', '4539874268207594', 'static/resources/images/Rectangle_30.png', 1, 'aabe008e92e62968b459b482dcd5c0565a5da8a8c7ca2a5723bd41869246554bf4bac43212aa304d4690c5de3022d437f9dc78eef0c1ad035dafb66013b96297', ''),
(4, 'teste teste', '$2y$10$LJ0pi6sGemhdc3jTgCyiUedzKwCUVQtwDO7tf8t1.nvefq8a8z.oW', 'teste@teste.com', '123123121', NULL, 'static/resources/images/A00.png', 2, NULL, ''),
(5, '12312 21312', '$2y$10$zjstnQcE0sQwvke4igpUlemPQut2k4CYLcKuBmaxXg21uicnZKa3W', '12312@121.as', '123123123', NULL, 'static/resources/images/A00.png', 2, NULL, ''),
(6, 'asda121 asda121', '$2y$10$mQgafVS4yUSljbCkA.dJo.2Oe1GrHnI.k2GtXV0FNUfHUylwH.MTu', 'asda121@gmail.com', '767676767', NULL, 'static/resources/images/A00.png', 2, '5d6651905e49ed787a7e9836b7fcbe480a06bb00cf63e5e540e05dd46f6a994f188e5794a62762b43a75b764159cda5dda9493547b71670db87ac2a3f1b995ac', ''),
(7, 'teste', '$2y$10$tJTMX85CdnARg4GeQZCxY.5gTiYGbqWIGnKCKs3LMMhJbUm1nJxP2', 'teste@gmail.com', '232312321', NULL, 'static/resources/images/A00.png', 2, NULL, 'abcd'),
(8, 'teste', '$2y$10$JQd/vHI1TlUAbDo4actd7OQ7trqHGcYMYleac4VuHTA8r8/mscUWC', 'teste6@gmail.com', '232912321', NULL, 'static/resources/images/A00.png', 2, NULL, 'abcd'),
(9, 'pedro', '$2y$10$zYyzUW222fUYe7Rn4/PGlehJtx3MnVfKoRDwxdLzc/gv1YcNzNi8u', '21312w1@gmail.com', '434321212', NULL, 'static/resources/images/A00.png', 2, NULL, 'carvalho'),
(10, 'pedro', '$2y$10$yoJLZ43h0S6STsl73no.XuMzYkMGu8j7DzDD/tO/WPI3K6GqhDqKS', '213212@gmail.com', '432343232', NULL, 'static/resources/images/A00.png', 2, NULL, 'carvalho'),
(11, 'pedro', '$2y$10$Q4H15DUCelJOimds45Y.ZeG3MyFHzDrv169OZThaqRyRMRlX0h8wK', '2123212@gmail.com', '323232343', NULL, 'static/resources/images/A00.png', 2, NULL, 'carvalho'),
(12, 'teste', '$2y$10$1MZAcEVt0VAI4hxFiA0nLOYyHKwVfVqYRcnlYhy9N15RU2Kjcjl5G', 'tes4te6@gmail.com', '222912321', NULL, 'static/resources/images/A00.png', 2, NULL, 'abcd'),
(13, 't12312este@asda.com', '$2y$10$AYqGWPYMNA1k8TvSNhs3auO7yc9qRlrBWFpxrXn4dwND0Uuny3xeK', 't12312este@asda.com', '767676765', NULL, 'static/resources/images/A00.png', 2, NULL, 't12312este@asda.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_type`
--

CREATE TABLE `users_type` (
  `id` int(11) NOT NULL,
  `name` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users_type`
--

INSERT INTO `users_type` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `transp_id` (`transp_id`);

--
-- Índices para tabela `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transp_id`),
  ADD KEY `transp_type` (`transp_type`);

--
-- Índices para tabela `transport_type`
--
ALTER TABLE `transport_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Índices para tabela `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`trip_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `car_numb` (`car_numb`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `card` (`card`),
  ADD KEY `user_type` (`user_type`);

--
-- Índices para tabela `users_type`
--
ALTER TABLE `users_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `careers`
--
ALTER TABLE `careers`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `transport`
--
ALTER TABLE `transport`
  MODIFY `transp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `transport_type`
--
ALTER TABLE `transport_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `trips`
--
ALTER TABLE `trips`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `users_type`
--
ALTER TABLE `users_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `careers`
--
ALTER TABLE `careers`
  ADD CONSTRAINT `careers_ibfk_1` FOREIGN KEY (`transp_id`) REFERENCES `transport` (`transp_id`);

--
-- Limitadores para a tabela `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `transport_ibfk_1` FOREIGN KEY (`transp_type`) REFERENCES `transport_type` (`type_id`);

--
-- Limitadores para a tabela `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `trips_ibfk_2` FOREIGN KEY (`car_numb`) REFERENCES `careers` (`car_id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_type`) REFERENCES `users_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
