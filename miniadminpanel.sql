-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Már 23. 12:59
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `miniadminpanel`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `created_at`, `updated_at`, `website`) VALUES
(1, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(2, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(3, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(4, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(5, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(6, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(7, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(8, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(9, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(10, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(11, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(12, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(13, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(14, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(15, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(16, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(17, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(18, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(19, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(20, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(21, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(22, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(23, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(24, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(25, 'Company', 'info@company.com', 'companylogo', '2021-03-23 11:52:24', '2021-03-23 11:52:24', 'https://company.com'),
(27, 'Test', 'info@test.com', 'Test-YMnDxDkSoX0REmg', '2021-03-23 11:56:12', '2021-03-23 11:56:12', 'https://test.com/');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `lastname`, `email`, `phone`, `company`, `created_at`, `updated_at`) VALUES
(1, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 1, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(2, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 1, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(3, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 1, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(4, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 1, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(5, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 1, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(6, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 2, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(7, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 2, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(8, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 2, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(9, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 2, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(10, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 2, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(11, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 3, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(12, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 3, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(13, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 3, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(14, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 3, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(15, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 3, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(16, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 4, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(17, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 4, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(18, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 4, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(19, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 4, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(20, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 4, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(21, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 5, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(22, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 5, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(23, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 5, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(24, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 5, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(25, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 5, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(26, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 6, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(27, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 6, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(28, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 6, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(29, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 6, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(30, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 6, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(31, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 7, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(32, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 7, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(33, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 7, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(34, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 7, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(35, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 7, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(36, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 8, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(37, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 8, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(38, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 8, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(39, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 8, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(40, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 8, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(41, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 9, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(42, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 9, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(43, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 9, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(44, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 9, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(45, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 9, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(46, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 10, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(47, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 10, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(48, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 10, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(49, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 10, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(50, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 10, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(51, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 11, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(52, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 11, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(53, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 11, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(54, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 11, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(55, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 11, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(56, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 12, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(57, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 12, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(58, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 12, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(59, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 12, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(60, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 12, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(61, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 13, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(62, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 13, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(63, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 13, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(64, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 13, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(65, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 13, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(66, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 14, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(67, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 14, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(68, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 14, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(69, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 14, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(70, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 14, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(71, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 15, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(72, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 15, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(73, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 15, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(74, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 15, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(75, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 15, '2021-03-23 11:52:24', '2021-03-23 11:52:24'),
(76, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 16, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(77, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 16, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(78, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 16, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(79, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 16, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(80, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 16, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(81, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 17, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(82, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 17, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(83, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 17, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(84, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 17, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(85, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 17, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(86, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 18, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(87, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 18, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(88, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 18, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(89, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 18, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(90, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 18, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(91, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 19, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(92, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 19, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(93, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 19, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(94, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 19, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(95, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 19, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(96, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 20, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(97, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 20, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(98, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 20, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(99, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 20, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(100, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 20, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(101, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 21, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(102, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 21, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(103, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 21, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(104, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 21, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(105, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 21, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(106, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 22, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(107, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 22, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(108, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 22, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(109, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 22, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(110, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 22, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(111, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 23, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(112, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 23, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(113, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 23, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(114, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 23, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(115, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 23, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(116, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 24, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(117, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 24, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(118, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 24, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(119, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 24, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(120, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 24, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(121, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 25, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(122, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 25, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(123, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 25, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(124, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 25, '2021-03-23 11:52:25', '2021-03-23 11:52:25'),
(125, 'Dominik', 'Balogh', 'balogh0dominik@gmail.com', '+36303909135', 25, '2021-03-23 11:52:25', '2021-03-23 11:52:25');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_27_170239_create_companies_table', 1),
(5, '2021_02_27_171349_add_website_to_companies_table', 1),
(6, '2021_03_02_101106_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$bg1CZEkM8mAMd4.iGAe/9OlSvnh..Ca.XDYV9YRFmaPF/byZtMKki', NULL, NULL, NULL);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT a táblához `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
