-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 25 oct. 2022 à 10:55
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maso-numerique`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `modified_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `user_id` int NOT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `auteur`, `created_at`, `modified_at`, `user_id`, `is_public`) VALUES
(53, 'consequatur', 'Le mot conte désigne à la fois un récit de faits ou d\'aventures imaginaires1 et le genre littéraire (avant tout oral) qui relate lesdits récits. Le conte, en tant que récit, il peut être court mais aussi long. Qu\'il vise à distraire ou à édifier, il porte en lui une force émotionnelle ou philosophique puissante. Depuis la Renaissance, les contes font l\'objet de réécritures, donnant naissance au fil des siècles à un genre écrit à part entière. Cependant, il est distinct du roman, de la nouvelle et du récit d\'aventures par l\'acceptation de l\'invraisemblance propre au genre merveilleux, ainsi que par certains codes, comme la fameuse phrase d\'introduction traditionnelle « Il était une fois ».\r\n\r\nIl y a deux pratiques du genre littéraire qu\'est le conte : orale et écrite. Ces deux pratiques se différenciant par leur mode de création et de diffusion comme par leur contenu, il convient de les distinguer.\r\n\r\nLe conte est un objet littéraire difficile à définir étant donné son caractère hybride et polymorphe. Le genre littéraire comme les histoires elles-mêmes font l\'objet d\'études convoquant des savoirs connexes, à la lumière des sciences humaines, tels que l\'histoire littéraire, la sémiologie, la sociologie, l\'anthropologie ou la psychanalyse.', 'Lefort', '2022-10-04 14:23:48', NULL, 34, 0),
(54, 'error', 'Le mot conte désigne à la fois un récit de faits ou d\'aventures imaginaires1 et le genre littéraire (avant tout oral) qui relate lesdits récits. Le conte, en tant que récit, il peut être court mais aussi long. Qu\'il vise à distraire ou à édifier, il porte en lui une force émotionnelle ou philosophique puissante. Depuis la Renaissance, les contes font l\'objet de réécritures, donnant naissance au fil des siècles à un genre écrit à part entière. Cependant, il est distinct du roman, de la nouvelle et du récit d\'aventures par l\'acceptation de l\'invraisemblance propre au genre merveilleux, ainsi que par certains codes, comme la fameuse phrase d\'introduction traditionnelle « Il était une fois ».\r\n\r\nIl y a deux pratiques du genre littéraire qu\'est le conte : orale et écrite. Ces deux pratiques se différenciant par leur mode de création et de diffusion comme par leur contenu, il convient de les distinguer.\r\n\r\nLe conte est un objet littéraire difficile à définir étant donné son caractère hybride et polymorphe. Le genre littéraire comme les histoires elles-mêmes font l\'objet d\'études convoquant des savoirs connexes, à la lumière des sciences humaines, tels que l\'histoire littéraire, la sémiologie, la sociologie, l\'anthropologie ou la psychanalyse.', 'Grenier', '2022-10-04 14:23:48', NULL, 37, 1),
(55, 'eos', 'eaque', 'Bazin', '2022-10-04 14:23:48', NULL, 31, 0),
(56, 'libero', 'aut', 'Pascal', '2022-10-04 14:23:48', NULL, 35, 0),
(57, 'tempore', 'Le mot conte désigne à la fois un récit de faits ou d\'aventures imaginaires1 et le genre littéraire (avant tout oral) qui relate lesdits récits. Le conte, en tant que récit, il peut être court mais aussi long. Qu\'il vise à distraire ou à édifier, il porte en lui une force émotionnelle ou philosophique puissante. Depuis la Renaissance, les contes font l\'objet de réécritures, donnant naissance au fil des siècles à un genre écrit à part entière. Cependant, il est distinct du roman, de la nouvelle et du récit d\'aventures par l\'acceptation de l\'invraisemblance propre au genre merveilleux, ainsi que par certains codes, comme la fameuse phrase d\'introduction traditionnelle « Il était une fois ».\r\n\r\nIl y a deux pratiques du genre littéraire qu\'est le conte : orale et écrite. Ces deux pratiques se différenciant par leur mode de création et de diffusion comme par leur contenu, il convient de les distinguer.\r\n\r\nLe conte est un objet littéraire difficile à définir étant donné son caractère hybride et polymorphe. Le genre littéraire comme les histoires elles-mêmes font l\'objet d\'études convoquant des savoirs connexes, à la lumière des sciences humaines, tels que l\'histoire littéraire, la sémiologie, la sociologie, l\'anthropologie ou la psychanalyse.', 'Blot', '2022-10-04 14:23:48', NULL, 37, 1),
(58, 'est', 'Le mot conte désigne à la fois un récit de faits ou d\'aventures imaginaires1 et le genre littéraire (avant tout oral) qui relate lesdits récits. Le conte, en tant que récit, il peut être court mais aussi long. Qu\'il vise à distraire ou à édifier, il porte en lui une force émotionnelle ou philosophique puissante. Depuis la Renaissance, les contes font l\'objet de réécritures, donnant naissance au fil des siècles à un genre écrit à part entière. Cependant, il est distinct du roman, de la nouvelle et du récit d\'aventures par l\'acceptation de l\'invraisemblance propre au genre merveilleux, ainsi que par certains codes, comme la fameuse phrase d\'introduction traditionnelle « Il était une fois ».\r\n\r\nIl y a deux pratiques du genre littéraire qu\'est le conte : orale et écrite. Ces deux pratiques se différenciant par leur mode de création et de diffusion comme par leur contenu, il convient de les distinguer.\r\n\r\nLe conte est un objet littéraire difficile à définir étant donné son caractère hybride et polymorphe. Le genre littéraire comme les histoires elles-mêmes font l\'objet d\'études convoquant des savoirs connexes, à la lumière des sciences humaines, tels que l\'histoire littéraire, la sémiologie, la sociologie, l\'anthropologie ou la psychanalyse.', 'Schneider', '2022-10-04 14:23:48', NULL, 38, 1),
(59, 'exercitationem', 'saepe', 'Renaud', '2022-10-04 14:23:48', NULL, 35, 0),
(60, 'sed', 'Le mot conte désigne à la fois un récit de faits ou d\'aventures imaginaires1 et le genre littéraire (avant tout oral) qui relate lesdits récits. Le conte, en tant que récit, il peut être court mais aussi long. Qu\'il vise à distraire ou à édifier, il porte en lui une force émotionnelle ou philosophique puissante. Depuis la Renaissance, les contes font l\'objet de réécritures, donnant naissance au fil des siècles à un genre écrit à part entière. Cependant, il est distinct du roman, de la nouvelle et du récit d\'aventures par l\'acceptation de l\'invraisemblance propre au genre merveilleux, ainsi que par certains codes, comme la fameuse phrase d\'introduction traditionnelle « Il était une fois ».\r\n\r\nIl y a deux pratiques du genre littéraire qu\'est le conte : orale et écrite. Ces deux pratiques se différenciant par leur mode de création et de diffusion comme par leur contenu, il convient de les distinguer.\r\n\r\nLe conte est un objet littéraire difficile à définir étant donné son caractère hybride et polymorphe. Le genre littéraire comme les histoires elles-mêmes font l\'objet d\'études convoquant des savoirs connexes, à la lumière des sciences humaines, tels que l\'histoire littéraire, la sémiologie, la sociologie, l\'anthropologie ou la psychanalyse.', 'Berger', '2022-10-04 14:23:48', NULL, 33, 1),
(61, 'aut', 'qui', 'Mary', '2022-10-04 14:23:48', NULL, 33, 1),
(62, 'ut', 'animi', 'Dupuy', '2022-10-04 14:23:48', NULL, 35, 0),
(63, 'voluptatem', 'PHP 8.2.0 RC 4 available for testing\r\nThe PHP team is pleased to announce the release of PHP 8.2.0, RC 4. This is the fourth release candidate, continuing the PHP 8.2 release cycle, the rough outline of which is specified in the PHP Wiki.\r\n\r\nFor source downloads of PHP 8.2.0, RC 4 please visit the download page.\r\n\r\nPlease carefully test this version and report any issues found in the bug reporting system.\r\n\r\nPlease DO NOT use this version in production, it is an early test version.\r\n\r\nFor more information on the new features and other changes, you can read the NEWS file or the UPGRADING file for a complete list of upgrading notes. These files can also be found in the release archive.\r\n\r\nThe next release will be the fifth release candidate (RC 5), planned for 27 October 2022.\r\n\r\nThe signatures for the release can be found in the manifest or on the QA site.\r\n\r\nThank you for helping us make PHP better.\r\n\r\n30 Sep 2022\r\nPHP 8.0.24 Released!\r\nThe PHP development team announces the immediate availability of PHP 8.0.24. This is a security release.\r\n\r\nAll PHP 8.0 users are encouraged to upgrade to this version.\r\n\r\nFor source downloads of PHP 8.0.24 please visit our downloads page, Windows source and binaries can be found on windows.php.net/download/. The list of changes is recorded in the ChangeLog.\r\n\r\n29 Sep 2022\r\nPHP 8.2.0 RC3 available for testing\r\nThe PHP team is pleased to announce the third release candidate of PHP 8.2.0, RC 3. This continues the PHP 8.2 release cycle, the rough outline of which is specified in the PHP Wiki.\r\n\r\nFor source downloads of PHP 8.2.0 RC3 please visit the download page.\r\n\r\nPlease carefully test this version and report any issues found in the bug reporting system.\r\n\r\nPlease DO NOT use this version in production, it is an early test version.\r\n\r\nFor more information on the new features and other changes, you can read the NEWS file, or the UPGRADING file for a complete list of upgrading notes. These files can also be found in the release archive.\r\n\r\nThe next release will be the fourth release candidate (RC 4), planned for Oct 13th 2022.\r\n\r\nThe signatures for the release can be found in the manifest or on the QA site.\r\n\r\nThank you for helping us make PHP better.\r\n\r\n29 Sep 2022\r\nPHP 8.1.11 Released!\r\nThe PHP development team announces the immediate availability of PHP 8.1.11. This is a security release.\r\n\r\nAll PHP 8.1 users are encouraged to upgrade to this version.\r\n\r\nFor source downloads of PHP 8.1.11 please visit our downloads page, Windows source and binaries can be found on windows.php.net/download/. The list of changes is recorded in the ChangeLog.\r\n\r\n29 Sep 2022\r\nPHP 7.4.32 Released!\r\nThe PHP development team announces the immediate availability of PHP 7.4.32. This is a security release.\r\n\r\nThis release addresses an infinite recursion with specially constructed phar files, and prevents a clash with variable name mangling for the __Host/__Secure HTTP headers.\r\n\r\nAll PHP 7.4 users are encouraged to upgrade to this version.\r\n\r\nFor source downloads of PHP 7.4.32 please visit our downloads page, Windows source and binaries can be found on windows.php.net/download/. The list of changes is recorded in the ChangeLog.\r\n\r\n15 Sep 2022\r\nPHP 8.2.0 RC2 available for testing', 'Andre', '2022-10-04 14:23:48', NULL, 37, 1),
(64, 'quisquam', 'perspiciatis', 'Roux', '2022-10-04 14:23:48', NULL, 32, 0),
(65, 'sint', 'aut', 'Martin', '2022-10-04 14:23:48', NULL, 38, 0),
(66, 'nihil', 'neque', 'Philippe', '2022-10-04 14:23:48', NULL, 31, 0),
(67, 'quo', 'facere', 'Marechal', '2022-10-04 14:23:48', NULL, 35, 1),
(68, 'dolorum', 'culpa', 'Reynaud', '2022-10-04 14:23:48', NULL, 39, 0),
(69, 'earum', 'quidem', 'Marie', '2022-10-04 14:23:48', NULL, 39, 1),
(70, 'neque', 'cum', 'Robin', '2022-10-04 14:23:48', NULL, 33, 1),
(71, 'aut', 'repellat', 'Bouvet', '2022-10-04 14:23:48', NULL, 33, 0),
(72, 'excepturi', 'nihil', 'Da Silva', '2022-10-04 14:23:48', NULL, 33, 1),
(73, 'quos', 'voluptatem', 'Legros', '2022-10-04 14:23:48', NULL, 31, 0),
(74, 'facilis', 'repellat', 'Guyon', '2022-10-04 14:23:48', NULL, 33, 1),
(75, 'possimus', 'rem', 'Besnard', '2022-10-04 14:23:48', NULL, 32, 1),
(76, 'quos', 'eum', 'Moreau', '2022-10-04 14:23:48', NULL, 39, 1),
(77, 'perferendis', 'qui', 'Bouchet', '2022-10-04 14:23:48', NULL, 31, 0),
(78, 'culpa', 'sed', 'Schmitt', '2022-10-04 14:23:48', NULL, 36, 0),
(79, 'dolorem', 'et', 'Bailly', '2022-10-04 14:23:48', NULL, 35, 1),
(80, 'magni', 'corrupti', 'Laine', '2022-10-04 14:23:48', NULL, 34, 0),
(81, 'inventore', 'adipisci', 'Ferreira', '2022-10-04 14:23:48', NULL, 40, 0),
(82, 'et', 'minus', 'Bouvet', '2022-10-04 14:23:48', NULL, 34, 1),
(83, 'dolore', 'libero', 'Masse', '2022-10-04 14:23:48', NULL, 38, 0),
(84, 'aut', 'temporibus', 'Sanchez', '2022-10-04 14:23:48', NULL, 40, 0),
(85, 'quibusdam', 'sunt', 'Lecoq', '2022-10-04 14:23:48', NULL, 32, 1),
(86, 'accusantium', 'quo', 'Gimenez', '2022-10-04 14:23:48', NULL, 36, 0),
(87, 'sed', 'similique', 'Duhamel', '2022-10-04 14:23:48', NULL, 32, 0),
(88, 'autem', 'neque', 'Delannoy', '2022-10-04 14:23:48', NULL, 39, 0),
(89, 'et', 'architecto', 'Petit', '2022-10-04 14:23:48', NULL, 39, 0),
(90, 'excepturi', 'qui', 'Gilbert', '2022-10-04 14:23:48', NULL, 39, 0),
(91, 'sunt', 'doloremque', 'Besson', '2022-10-04 14:23:48', NULL, 31, 1),
(92, 'unde', 'voluptatem', 'Gomes', '2022-10-04 14:23:48', NULL, 36, 0),
(93, 'blanditiis', 'ut', 'Maillard', '2022-10-04 14:23:48', NULL, 32, 0),
(94, 'culpa', 'enim', 'Hubert', '2022-10-04 14:23:48', NULL, 37, 1),
(95, 'nihil', 'aperiam', 'Guibert', '2022-10-04 14:23:48', NULL, 39, 0),
(96, 'eligendi', 'architecto', 'Raynaud', '2022-10-04 14:23:48', NULL, 39, 0),
(97, 'earum', 'aut', 'Tessier', '2022-10-04 14:23:48', NULL, 33, 0),
(98, 'eos', 'assumenda', 'Normand', '2022-10-04 14:23:48', NULL, 40, 0),
(99, 'voluptatibus', 'et', 'Ramos', '2022-10-04 14:23:48', NULL, 33, 1),
(100, 'consequuntur', 'nihil', 'Lebreton', '2022-10-04 14:23:48', NULL, 39, 0),
(101, 'minima', 'modi', 'Pasquier', '2022-10-04 14:23:48', NULL, 34, 1),
(102, 'tenetur', 'animi', 'Pierre', '2022-10-04 14:23:48', NULL, 38, 1);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220821213210', '2022-10-03 15:43:25', 127),
('DoctrineMigrations\\Version20220901205344', '2022-10-03 15:43:25', 177),
('DoctrineMigrations\\Version20220901205415', '2022-10-03 15:43:25', 8),
('DoctrineMigrations\\Version20220901205450', '2022-10-03 15:43:25', 46),
('DoctrineMigrations\\Version20221003134249', '2022-10-03 15:43:25', 92),
('DoctrineMigrations\\Version20221004121741', '2022-10-04 14:18:15', 390);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `full_name`, `pseudo`, `email`, `roles`, `password`, `created_at`) VALUES
(31, 'Renée Mary-Thierry', 'Thibault', 'dominique.lopez@free.fr', '[\"ROLE_USER\"]', '$2y$13$i19njDUqcyAl/Hujg8RFgOXHYszRNe50sWLdPRkPDoMsKM6SFCWqm', '2022-10-04 14:23:42'),
(32, 'Auguste-Gilbert Lebon', NULL, 'anastasie68@gomez.fr', '[\"ROLE_USER\"]', '$2y$13$bFFkW1gXboU1Bn7VRKrzf.8cffg2eAj3F.0wyBy57Q8GZ6FVnIU32', '2022-10-04 14:23:43'),
(33, 'Élodie Bertin', 'Maryse', 'dperrin@guilbert.fr', '[\"ROLE_USER\"]', '$2y$13$1koD/JJA.bKjqOL0YWz69uIosKU5XhTR7LFWPsyXV0472HOUA0qYG', '2022-10-04 14:23:44'),
(34, 'Marine Noel', 'Anaïs', 'bremy@riviere.fr', '[\"ROLE_USER\"]', '$2y$13$B2UUX8lPG6W60DI8K/q4bOqLiY142WR0dzzhD7JFd5wuXbfh/Afvy', '2022-10-04 14:23:44'),
(35, 'Gabrielle Traore', 'Hortense', 'xavier91@wanadoo.fr', '[\"ROLE_USER\"]', '$2y$13$mk0vg2e8VSGf.R7xGyxQdub5zrY6r52Yq44tXIe9uIw6MU7zI9.mG', '2022-10-04 14:23:45'),
(36, 'Michelle-Amélie Pons', NULL, 'rgimenez@gilles.fr', '[\"ROLE_USER\"]', '$2y$13$Z9SEoLNfcyO0GqvxDaQpDeuAZFvx3vbe95QGJ60aMpHFNW68QfbXS', '2022-10-04 14:23:45'),
(37, 'Jeanne Leveque', NULL, 'alphonse.merle@couturier.fr', '[\"ROLE_USER\"]', '$2y$13$1d36jpv9S8HUSTMb3qNmdu49mTCV.OPJzco8Kf/1/l33fK1D0Oj4y', '2022-10-04 14:23:46'),
(38, 'Aimé Mendes', NULL, 'lblanc@tele2.fr', '[\"ROLE_USER\"]', '$2y$13$e5swqOnKHeHRhNfwUqHM8u/4Hs.7TeS1bhRm0ezxq6Gpmzsz5xtry', '2022-10-04 14:23:46'),
(39, 'Alexandrie Le Labbe', NULL, 'honore75@hotmail.fr', '[\"ROLE_USER\"]', '$2y$13$rp6L8DEVZgE6uLhBleYyAungdUlX5qrQAmINIh.zCk7unTIpMt6tO', '2022-10-04 14:23:47'),
(40, 'Thibault Devaux', NULL, 'maggie.antoine@seguin.com', '[\"ROLE_USER\"]', '$2y$13$e2X2jYw4Ln.SEDaEtj1Tpe/PpjGRHozCbftEoS.Cy3tdcowPKMtti', '2022-10-04 14:23:47'),
(41, 'sabrina(\'', 'glandu', 'dugland@g.com', '[\"ROLE_USER\"]', '$2y$13$dC1XztA2JBeQdwfBd1HOzeQTYXS7z.Mdye0/kDzVNsOnJGYy0VVcy', '2022-10-04 14:55:22');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BFDD3168A76ED395` (`user_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `FK_BFDD3168A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
