-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-07-03 16:16:39
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d06_01`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `mail_sent`
--

CREATE TABLE `mail_sent` (
  `氏名` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `かな` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `広報メモ` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `過去応募` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `企業名` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `住所` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `部署` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `役職` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MAIL` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TEL` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `mail_sent`
--

INSERT INTO `mail_sent` (`氏名`, `かな`, `広報メモ`, `過去応募`, `企業名`, `住所`, `部署`, `役職`, `MAIL`, `TEL`) VALUES
('浅野泰輔', 'アサノタイスケ', 'PR', '有', 'トーマツ', 'エルガーラ', 'TS', 'スタッフ', 'メール', '電話');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, '', '0000-00-00', '2020-06-20 15:47:41', '2020-07-03 02:58:22'),
(2, 'PHPを学ぶ', '2020-06-22', '2020-06-20 15:49:03', '2020-06-20 15:49:03'),
(5, 'e-learningをやる', '2020-06-12', '2020-06-20 17:39:21', '2020-06-27 16:46:56'),
(6, '期限を過ぎてもやりきる', '2020-07-02', '2020-06-25 23:14:47', '2020-07-02 23:38:31');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'yasusuke1208', 'pw1', 1, 0, '2020-07-03 00:08:59', '2020-07-03 05:17:35'),
(2, 'asahaka', 'dfd', 1, 0, '2020-07-03 03:57:18', '2020-07-03 05:17:38'),
(5, 'fdfaf', 'fdfdf', 1, 0, '2020-07-03 04:39:44', '2020-07-03 05:17:45'),
(7, 'l', 'fdfd', 1, 0, '2020-07-03 04:56:58', '2020-07-03 05:17:49'),
(8, 'asahaka', 'fddsfd', 0, 1, '2020-07-03 05:11:51', '2020-07-03 05:11:51'),
(9, 'fdfdfd', 'fdfdfd', 1, 0, '2020-07-03 05:11:57', '2020-07-03 05:17:54'),
(10, 'fdfdfd', 'fd', 0, 1, '2020-07-03 05:12:05', '2020-07-03 05:12:05');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
