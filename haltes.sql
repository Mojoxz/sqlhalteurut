-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2025 at 06:38 AM
-- Server version: 8.4.3
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `halte_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `haltes`
--

CREATE TABLE `haltes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `is_rented` tinyint(1) NOT NULL DEFAULT '0',
  `rent_start_date` date DEFAULT NULL,
  `rent_end_date` date DEFAULT NULL,
  `rented_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `simbada_registered` tinyint(1) NOT NULL DEFAULT '0',
  `simbada_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('available','rented','maintenance') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `haltes`
--

INSERT INTO `haltes` (`id`, `name`, `description`, `latitude`, `longitude`, `address`, `is_rented`, `rent_start_date`, `rent_end_date`, `rented_by`, `simbada_registered`, `simbada_number`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Halte Taman Pelangi', 'pelangi', -7.32829130, 112.73100018, 'MPCJ+784, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 1, NULL, 'available', '2025-08-18 21:44:49', '2025-08-18 21:44:49'),
(11, 'Halte Ubhara', 'ubhara', -7.32111322, 112.73309551, 'Jl. Ahmad Yani, Ketintang, Kec. Gayungan, Surabaya, Jawa Timur 60231', 0, NULL, NULL, NULL, 1, NULL, 'available', '2025-08-18 21:46:49', '2025-08-18 21:46:49'),
(13, 'Halte UNESA', 'unesa', -7.29712112, 112.67535780, 'PM2G+M49, Jl. Mayjen Yono Suwoyo, Lidah Wetan, Kec. Lakarsantri, Surabaya, Jawa Timur 60213', 0, NULL, NULL, NULL, 1, NULL, 'available', '2025-08-18 21:52:11', '2025-08-18 21:52:11'),
(14, 'Halte Marmoyo', 'marmoyo', -7.29542005, 112.73967309, 'PP3Q+CQG, Darmo, Kec. Wonokromo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 1, NULL, 'available', '2025-08-18 21:54:36', '2025-08-18 21:54:36'),
(33, 'Halte RSAL', 'RSAL', -7.30681351, 112.73542298, 'Jagir, Kec. Wonokromo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 1, NULL, 'available', '2025-08-19 21:34:54', '2025-08-25 19:52:06'),
(44, 'Halte RS Bhayangkara', 'Depan Rumah Sakit Bhayangkara', -7.32483637, 112.73184581, 'Jl. Ahmad Yani, Ketintang, Kec. Gayungan, Surabaya, Jawa Timur 60235', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 00:59:16', '2025-08-25 00:59:16'),
(45, 'Halte Dukuh Menanggal', 'Depan Bank Mandiri KCP Surabaya Menanggal', -7.34346141, 112.72903437, 'MP4H+JH6, Menanggal, Kec. Gayungan, Surabaya, Jawa Timur 60234', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:12:10', '2025-08-25 01:12:10'),
(46, 'Halte Pandegiling (Darmo KF)', 'Depan Apotek Kimia Farma', -7.27795265, 112.74086918, 'Jl. Raya Darmo No.2-4, DR. Soetomo, Kec. Tegalsari, Surabaya, Jawa Timur 60264', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:26:18', '2025-08-26 00:42:13'),
(47, 'Halte Embong Malang', 'Depan OCA Ice Skating Arena', -7.26034838, 112.73743425, 'Jl. Embong Malang No.95, RT.003/RW.04, Kedungdoro, Kec. Tegalsari, Surabaya, Jawa Timur 60261', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:29:37', '2025-08-26 00:39:48'),
(48, 'Halte Embong Malang 2', 'Depan Hotel JW Marriot', -7.25896281, 112.73407761, 'Jl. Embong Malang No.95, RT.003/RW.04, Kedungdoro, Kec. Tegalsari, Surabaya, Jawa Timur 60261', 1, '2025-11-25', '2029-12-25', 'PT TERPURUK', 1, '124545645', 'rented', '2025-08-25 01:31:17', '2025-11-25 07:36:55'),
(49, 'Halte Blauran', 'Depan BG Junction Mall', -7.25514044, 112.73400153, 'Bubutan, Kec. Bubutan, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:33:30', '2025-08-26 00:38:52'),
(50, 'Halte Pirngadi', 'Depan Gereja Protestan', -7.25243050, 112.73478492, 'PPWM+XWQ, Bubutan, Surabaya, East Java', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:35:06', '2025-08-26 00:38:13'),
(51, 'Halte Pasar Turi Kencana', 'Depan Gedung Kencana', -7.24614119, 112.73692228, 'QP3P+GRJ, Bubutan, Surabaya, East Java', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:39:11', '2025-08-26 00:37:15'),
(52, 'Halte Indrapura', 'Depan RS Vertikal', -7.24090686, 112.73211417, 'Kemayoran, Kec. Krembangan, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:43:06', '2025-08-26 00:36:35'),
(53, 'Halte Jembatan Merah', 'Depan Gedung Rajawali (PT. Arina Multi Karya)', -7.23557887, 112.73563314, 'Jl. Rajawali No.18, RW.15, Krembangan Sel., Kec. Krembangan, Surabaya, Jawa Timur 60175', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:45:47', '2025-08-26 00:35:53'),
(54, 'Halte Veteran', 'Depan Bank Mandiri', -7.23885425, 112.74017508, 'QP6Q+42P, South Krembangan, Krembangan, Surabaya, East Java', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:47:57', '2025-08-26 00:34:14'),
(55, 'Halte Alun-Alun Contong', 'Depan Rumah Pompa Pahlawan', -7.25209569, 112.73675940, 'Alun-alun Contong, Kec. Bubutan, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:49:53', '2025-08-26 00:33:39'),
(56, 'Halte Simpang Pemuda', 'Depan Hotel Grand Inna Tunjungan', -7.26291661, 112.74188215, 'Jl. Gubernur Suryo No.1, RW.3, Embong Kaliasin, Kec. Genteng, Surabaya, Jawa Timur 60271', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 01:51:56', '2025-08-26 00:32:53'),
(57, 'Halte Pangsud', 'Depan Yamaha Land', -7.26632898, 112.74503112, 'Embong Kaliasin, Kec. Genteng, Surabaya, Jawa Timur', 1, '2025-11-25', '2028-11-25', 'PT MENCARI LOKER', 1, '1231234124', 'rented', '2025-08-25 01:54:35', '2025-11-25 07:54:22'),
(58, 'Halte Sono Kembang', 'Depan Kantor Grapari', -7.26959435, 112.74382171, 'Embong Kaliasin, Kec. Genteng, Surabaya, Jawa Timur', 1, '2025-11-25', '2029-11-25', 'PT ANJAY', 1, '213124124', 'rented', '2025-08-25 01:57:30', '2025-11-25 07:44:02'),
(59, 'Halte Urip Sumoharjo 2', 'Depan Kampus STIE Urip Sumoharjo', -7.27399014, 112.74217901, 'Keputran, Kec. Tegalsari, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 02:05:07', '2025-08-26 00:29:04'),
(60, 'Halte Darmo Santa Maria', 'Depan Sekolah Santa Maria', -7.28368941, 112.74052833, 'PP8R+H46, Keputran, Kec. Tegalsari, Surabaya, Jawa Timur', 1, '2025-11-25', '2031-12-25', 'PT CINTA SEJATI', 1, '1234456', 'rented', '2025-08-25 02:07:19', '2025-11-25 07:35:23'),
(61, 'Halte UINSA', 'Depan Kampus UINSA', -7.32201807, 112.73325768, 'Jemur Wonosari, Kec. Wonocolo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 02:09:55', '2025-08-26 00:26:04'),
(62, 'Halte Pradah Kali Kendal B', 'Depan Ruko', -7.28444174, 112.69238108, 'Pradahkalikendal, Kec. Dukuhpakis, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 02:16:13', '2025-08-25 02:16:13'),
(63, 'Halte Lap. Hockey Dharmawangsa', 'Depan Lapangan Hockey Dhamawangsa', -7.26752784, 112.75667943, 'Airlangga, Kec. Gubeng, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 02:19:14', '2025-08-26 00:25:33'),
(64, 'Halte SMAN 4', 'Depan SMAN 4', -7.26534294, 112.75563164, 'Pacar Keling, Kec. Tambaksari, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 02:23:37', '2025-08-26 00:24:37'),
(65, 'Halte Pemuda RRI', 'Depan Kantor RRI', -7.26524885, 112.74775064, 'Embong Kaliasin, Kec. Genteng, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 02:29:53', '2025-08-26 00:23:46'),
(66, 'Halte KPU', 'Depan Kantor Partai Golkar', -7.29267445, 112.72866209, 'Sawunggaling, Kec. Wonokromo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 02:33:01', '2025-08-26 00:23:04'),
(67, 'Halte BDH', 'Depan RS BDH', -7.25547053, 112.63508407, 'Jl. Kendung No.115-117, Sememi, Kec. Benowo, Surabaya, Jawa Timur 60198', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 02:35:57', '2025-08-26 00:21:56'),
(68, 'Halte Margomulyo', 'depan Pergudangan Suri Mulia Permai', -7.23698690, 112.68298928, 'Margomulyo 44, Blk. HH No.20, Greges, Asem Rowo, Surabaya, East Java 60183', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 02:42:32', '2025-08-26 00:21:25'),
(69, 'Halte Siwalankerto A', 'Depan Dealer Honda Ahmad Yani', -7.33678144, 112.72919288, 'Gayungan, Kec. Gayungan, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 19:01:47', '2025-08-26 00:20:46'),
(70, 'Halte Ketintang Royal', 'Depan Mall Royal Plaza', -7.30854887, 112.73525591, 'Jl. A Yani Frontage Barat No.16-18, Wonokromo, Kec. Wonokromo, Surabaya, Jawa Timur 60243', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 19:06:38', '2025-08-26 00:18:44'),
(71, 'Halte Museum BI', 'Depan Perpustakaan Bank Indonesia', -7.29433077, 112.73888372, 'PP4Q+7J3 Museum BI, Darmo, Kec. Wonokromo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 19:09:30', '2025-08-26 00:17:21'),
(72, 'Halte Darmo RS', 'Depan Rumas Sakit Darmo', -7.28696746, 112.73920080, 'Jl. Raya Darmo No.88, DR. Soetomo, Kec. Tegalsari, Surabaya, Jawa Timur 60264', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 19:12:24', '2025-08-26 00:16:43'),
(73, 'Halte Darmo Niaga', 'Depan Bank Niaga', -7.28020320, 112.74060502, 'DR. Soetomo, Kec. Tegalsari, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 19:14:41', '2025-08-26 00:13:48'),
(74, 'Halte Basra', 'Depan Hotel Bumi Surabaya', -7.27170372, 112.74159338, 'PPHR+7MJ, Embong Kaliasin, Kec. Genteng, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 19:33:49', '2025-08-26 00:14:43'),
(75, 'Halte Kaliasin', 'Depan ICBC', -7.26480862, 112.74096320, 'PPPR+39P, Kedungdoro, Kec. Tegalsari, Surabaya, Jawa Timur', 1, '2025-11-25', '2029-11-25', 'PT HAHAHIHI', 1, '12344556', 'rented', '2025-08-25 19:35:48', '2025-11-25 07:57:15'),
(76, 'Halte Siwalankerto 2', 'Depan Makam Siwalankerto', -7.33706340, 112.72976013, 'Siwalankerto, Kec. Wonocolo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 19:39:18', '2025-08-26 00:09:02'),
(77, 'Halte Darmo', 'Depan Chatime Darmo', -7.28938900, 112.73947615, 'PP6Q+8M8, Keputran, Kec. Tegalsari, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 19:50:01', '2025-08-26 00:06:39'),
(78, 'Halte Darmo Park 1', 'Depan Ruko Darmo Park', -7.29229540, 112.71728788, 'PP59+C2M, Pakis, Kec. Sawahan, Surabaya, Jawa Timur 60256', 1, '2025-11-25', '2029-11-25', 'PT HEMM', 1, '892739739', 'rented', '2025-08-25 19:55:58', '2025-11-25 08:00:24'),
(79, 'Halte Dr Sutomo', 'Depan RSUD Dr Soetomo', -7.26889427, 112.75650040, 'PQJ4+FJ4, Airlangga, Kec. Gubeng, Surabaya, Jawa Timur 60286', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 19:59:03', '2025-08-26 00:05:24'),
(80, 'Halte Darmo Park 2', 'Depan Ruko Darmo Park 2', -7.29133973, 112.71737177, 'PP58+8XF, Dukuh Pakis, Kec. Dukuhpakis, Surabaya, Jawa Timur', 1, '2025-11-25', '2029-11-25', 'PT HEMM', 1, '8978762', 'rented', '2025-08-25 20:05:28', '2025-11-25 08:01:04'),
(81, 'Halte TMP 1', 'Samping SPBU Pertamina Mayjend Sungkono', -7.28979589, 112.71104651, 'Jl. Mayjen Sungkono No.369 002, RT.002/RW.02, Dukuh Pakis, Kec. Dukuhpakis, Surabaya, Jawa Timur 60225', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:07:47', '2025-08-26 00:02:42'),
(82, 'Halte Pradah Kali Kendal', 'Depan Warung', -7.28451026, 112.69226092, 'PM8R+7QM, Jl. Mayjen HR. Muhammad, Pradahkalikendal, Kec. Dukuhpakis, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:10:04', '2025-08-25 22:49:39'),
(83, 'Halte Bundaran UNESA', 'Seberang Halte UNESA', -7.29815158, 112.67576072, 'PM2G+M49, Jl. Mayjen Yono Suwoyo, Lidah Wetan, Kec. Lakarsantri, Surabaya, Jawa Timur 60213', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:12:20', '2025-08-25 22:48:54'),
(84, 'Halte Gunung Anyar Timur 1', 'Depan Apartemen Mangkrak', -7.33975698, 112.78458730, 'Gn. Anyar, Kec. Gn. Anyar, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:16:24', '2025-08-25 22:47:46'),
(85, 'Halte SMPN 19', 'Depan SMPN 19', -7.28820779, 112.78082533, 'Klampis Ngasem, Kec. Sukolilo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:18:05', '2025-08-25 22:47:04'),
(86, 'Halte Mulyorejo 2', 'Depan Airlangga Convention Center', -7.26408115, 112.78319360, 'PQPM+5HC, Jl. Dr. Ir. H. Soekarno, Mulyorejo, Kec. Mulyorejo, Surabaya, Jawa Timur 60115', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:22:19', '2025-08-25 22:46:18'),
(87, 'Halte Kopertis', 'Depan Kantor Kopertis', -7.28851262, 112.78083537, 'Klampis Ngasem, Kec. Sukolilo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:25:37', '2025-08-25 22:39:07'),
(88, 'Halte RSI Jemursari A', 'Depan RSI Jemursari', -7.32329510, 112.74109364, 'Jemur Wonosari, Kec. Wonocolo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:28:36', '2025-08-25 22:38:08'),
(89, 'Halte Menur', 'Depan Kampus Deteksi ITS', -7.28685265, 112.76341359, 'PQ77+696, Manyar Sabrangan, Kec. Mulyorejo, Surabaya, Jawa Timur 60116', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:30:12', '2025-08-25 22:37:23'),
(90, 'Halte Margorejo 2', 'Depan Foodcourt Holywood', -7.31612555, 112.73529851, 'MPMP+F35, Jl. Margorejo Indah, Margorejo, Kec. Wonocolo, Surabaya, Jawa Timur 60237', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:32:02', '2025-08-25 22:36:37'),
(91, 'Halte Jemurandayani Pos', 'Depan Kantor Pos Jemurandayani', -7.32916154, 112.74372259, 'Kendangsari, Kec. Tenggilis Mejoyo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:33:49', '2025-08-25 22:31:13'),
(92, 'Halte Jemurandayani', 'Seberang Kantor Pos Jemurandayani', -7.32944751, 112.74399908, 'Kendangsari, Kec. Tenggilis Mejoyo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:37:49', '2025-08-25 22:35:15'),
(93, 'Halte Barunawati B', 'Seberang SMA Barunawati', -7.22100578, 112.73270947, 'Jl. Perak Bar. No.173, Perak Utara, Kec. Pabean Cantikan, Surabaya, Jawa Timur 60165', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:40:10', '2025-08-25 22:30:02'),
(94, 'Halte Stasiun Gubeng', 'Seberang Stasiun Gubeng', -7.26485328, 112.75171144, 'Pacar Keling, Kec. Tambaksari, Surabaya, Jawa Timur 60131', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:41:42', '2025-08-25 22:29:01'),
(95, 'Halte SMAN 9', 'Depan SMAN 9 Surabaya', -7.25766211, 112.75064322, 'Ketabang, Kec. Genteng, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:43:26', '2025-08-25 22:26:21'),
(96, 'Halte Kusuma Bangsa TMP', 'Sebelah TMP Kusuma Bangsa', -7.25146706, 112.74959972, 'Jl. Kusuma Bangsa, Kapasari, Kec. Genteng, Surabaya, Jawa Timur 60273', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:44:57', '2025-08-25 22:25:40'),
(97, 'Halte Kusuma Bangsa SDN', 'Depan SDN Kapasari VII Surabaya', -7.25073525, 112.75026859, 'Jl. Kusuma Bangsa No.124, Kapasari, Kec. Genteng, Surabaya, Jawa Timur 60273', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:46:53', '2025-08-25 22:24:18'),
(98, 'Halte William Booth', 'Depan RS William Booth', -7.29148580, 112.73692934, 'PP5P+9RC, Jl. Wonokromo, Darmo, Kec. Wonokromo, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:48:27', '2025-08-25 22:21:04'),
(99, 'Halte Diponegoro', 'Depan Bank Mandiri Diponegoro', -7.28315355, 112.73244795, 'Jl. Diponegoro, Rw5, Sidokumpul, Kec. Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61213', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:50:17', '2025-08-25 22:18:08'),
(100, 'Halte TMP Ngagel 1', 'Depan TMP Ngagel', -7.29162235, 112.74848506, 'Pucang Sewu, Kec. Gubeng, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:52:06', '2025-08-25 22:17:04'),
(101, 'Halte Kedung Cowek 2 (SMPN 15)', 'Depan SMPN 15 Surabaya', -7.22619727, 112.77576160, 'Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:54:04', '2025-08-25 22:12:50'),
(102, 'Halte Kedung Cowek 1 (PT Usfi)', 'Depan Pergudangan PT Usfi', -7.22660675, 112.77484853, 'Jl. Kedung Cowek No.345, RT.000/RW.00, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:55:34', '2025-08-25 22:11:46'),
(104, 'Halte Wijaya Kusuma (SMAN 2)', 'Depan SMAN 2 Surabaya', -7.25680789, 112.74912349, 'Jl. Wijaya Kusuma No.48, Ketabang, Kec. Genteng, Surabaya, Jawa Timur 60272', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:57:33', '2025-08-25 22:09:15'),
(105, 'Halte Kebonrojo', 'Depan Kantor Pos Surabaya Kebonrojo', -7.24332440, 112.73726258, 'QP4P+MVQ Halte, Jl. Kebon Rojo, Krembangan Sel., Kec. Krembangan, Surabaya, Jawa Timur 60175', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 20:59:23', '2025-08-25 21:58:45'),
(106, 'Halte UNAIR A', 'Depan Kampus UNAIR A', -7.26551414, 112.75753131, 'Pacar Kembang, Kec. Tambaksari, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 21:02:44', '2025-08-25 21:57:37'),
(108, 'Halte SMKN 5', 'Depan SMKN 5 Surabaya', -7.26635629, 112.76852725, 'Mojo, Kec. Gubeng, Surabaya, Jawa Timur', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-25 21:12:17', '2025-08-25 21:56:53'),
(109, 'Halte Rajawali', 'Depan Gereja Tiberias', -7.23456129, 112.73222328, NULL, 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-26 00:58:20', '2025-08-26 00:58:20'),
(110, 'Halte Margorejo', 'Depan Gudang Dishub Kota Surabaya', -7.31340053, 112.73496392, 'Jl. Margorejo No.1, Margorejo, Kec. Wonocolo, Surabaya, Jawa Timur 60238', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-26 01:06:37', '2025-08-27 00:52:51'),
(111, 'Halte Jemur Ngawinan', 'Samping JPO Jemur Ngawinan', -7.32847093, 112.73193741, 'MPCJ+GM8, Jl. Ahmad Yani, Jemur Wonosari, Kec. Wonocolo, Surabaya, Jawa Timur 60235', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-26 01:09:23', '2025-08-27 00:50:42'),
(112, 'Halte ITS', 'Dekat Bunderan ITS', -7.27954028, 112.79010528, 'Jalan Raya Kertajaya Indah Tim., Gebang Putih, Kec. Sukolilo, Surabaya, Jawa Timur 60117', 0, NULL, NULL, NULL, 0, NULL, 'available', '2025-08-26 01:20:53', '2025-08-27 00:49:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `haltes`
--
ALTER TABLE `haltes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `haltes`
--
ALTER TABLE `haltes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
