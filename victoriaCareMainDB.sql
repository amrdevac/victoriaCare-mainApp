-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Waktu pembuatan: 30 Jan 2023 pada 04.04
-- Versi server: 8.0.31
-- Versi PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `victoriaCareMainDB`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_01_27_164339_create_penjualans_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(11, '2023_01_27_171941_create_user_devices_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('078db141d71078cd38ee969f4bdef03d112153fd30948616b864d3846c8794ed8ef4a6d20ff1faff', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:25:47', '2023-01-28 10:25:47', '2023-07-28 10:25:47'),
('07eba281257c3dfbf9dca2cceca5c821460049413420e9c82edaa49bea175076cefed7e769d6535c', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:57', '2023-01-28 10:17:57', '2023-07-28 10:17:57'),
('07f98eaf5b32f0e15fe95a574e7242793af579c82c784770db66ea91fe13b250cf5f3ea7c5c99343', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:13:30', '2023-01-28 11:13:30', '2023-07-28 11:13:30'),
('09afee68e8b3b557e6c772b5372103eb0a6cdddd3097b18984724163eecf3a52535b974723913ea2', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:40:15', '2023-01-28 10:40:15', '2023-07-28 10:40:15'),
('0d4b1fda0cc5b6e689e34d708f1d5b000e0330a9ae8f98201d93ffeb843b7366299e4b14fd50c1d8', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:26:25', '2023-01-28 10:26:25', '2023-07-28 10:26:25'),
('0de07883a168013f19a221d7d622e8bc49f8b822d0a7e8085f92ba3ddcbce58a3af8547179ace5e6', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:16:46', '2023-01-28 11:16:46', '2023-07-28 11:16:46'),
('0f088458ca39e09759e748a775503fb2891a9117f6dac70614de0eaf28a59ef1188639f4525176ea', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:44:45', '2023-01-28 10:44:45', '2023-07-28 10:44:45'),
('11786a7706245aee74a39f18691f111e7f529a2d99643cbe84d58ff5ec78f028c23b783cb8682b71', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:19:11', '2023-01-28 10:19:11', '2023-07-28 10:19:11'),
('122414fe7f116b613c899d7c3c1802d60b21cb581801e03a7160712e6bdd4224f805bade6bc7e83d', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:46:14', '2023-01-28 10:46:14', '2023-07-28 10:46:14'),
('1284977a5d4cc5e03015317bded65fe84ec34af303cec7f2cc3826ee753fbfc9743d2e659395fc37', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:17:02', '2023-01-28 11:17:02', '2023-07-28 11:17:02'),
('1448ffa40a37f275238f9eb708faaf2062cc8babf0ef381670f378af932816fae497783325644028', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:26:17', '2023-01-28 10:26:17', '2023-07-28 10:26:17'),
('1565be10cf61a3c8bc9876bd703cddea0418220348892ba76e659c9f28a57ee8aa4a3456950765f6', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:15:23', '2023-01-28 11:15:23', '2023-07-28 11:15:23'),
('16c6e262cd0dbac651af7b6d68aa997aa234f69bc51fff62cc93f73ddcf93c13fd59381f655e4d08', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:26:17', '2023-01-28 10:26:17', '2023-07-28 10:26:17'),
('1780fe9ffaaa0d727bfce0214263992e1c0a9e595b4c128879fd3d494c185f7df957fe3a95397c13', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:54:27', '2023-01-28 10:54:27', '2023-07-28 10:54:27'),
('1dc95636fc77066c5c4ebf38ecc1bef806dba3db4ba276c5c1fb355f6ea5e2a1c616b5e4b5e401ac', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:33:44', '2023-01-27 17:33:44', '2023-07-27 17:33:44'),
('1f7cfc749b005c6b6863354c5e7f103bef9f44d030fc5be53933b6080d1167cf6f63e38b56df3f58', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:15:18', '2023-01-28 11:15:18', '2023-07-28 11:15:18'),
('20511eb53a4994f9e01feb535d3c345f0248bef478f47047eb67fdcf3ef8aa9fe92a0650e5c62ecf', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:53:49', '2023-01-28 10:53:49', '2023-07-28 10:53:49'),
('22a49389a1da59b26a2be641d6c1bfc12f129be39318c90c08a94788de7ed6aad8e3fc9199622b33', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:24:57', '2023-01-27 19:24:57', '2023-07-27 19:24:57'),
('242144e1a5889102c95c608e9f1ccb9bfd3c019fb491bb04dd1bfa61b41b87ee837ae732f3b94948', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:57', '2023-01-28 10:17:57', '2023-07-28 10:17:57'),
('259243908fcc15daf2f7aacf31ce0b44cdbb8b77f2b65bdc62a77ea79a12401a58db89c8c88de892', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:33:14', '2023-01-28 10:33:14', '2023-07-28 10:33:14'),
('263029c5979d7ff8eb448daef223f6c9a53073c09acabef81f3eb68531ff30612cce84bdd2b13221', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:19:10', '2023-01-28 10:19:10', '2023-07-28 10:19:10'),
('2892fd816addee539d6ac35d1b4b3ab96ba59d569175377a057e9db3a195789da6a7958df6be95e7', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:25:47', '2023-01-28 10:25:47', '2023-07-28 10:25:47'),
('29522d9099b69e10ebb218c4cbc3966e2d61a9b420e0ea6dfdf1940119f352e82a40c7a07530e85c', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:29:51', '2023-01-28 10:29:51', '2023-07-28 10:29:51'),
('29f1083e9780c872d37e00df99c217d140a40d0909a7d4ab6372433209a522b57c84685d975362eb', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:54:31', '2023-01-28 10:54:31', '2023-07-28 10:54:31'),
('2d7f0c52193275129f20f50c6c4f2af4e6d1f0d96dfe29fd81a55f4c27679e28bc872d77cb2c5655', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:30:09', '2023-01-28 10:30:09', '2023-07-28 10:30:09'),
('2e73ce5ba95ba2f57689594e624e3fc4e3312405e0be33f0cae1ad7cff4738e292e33935bece94fb', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:19:40', '2023-01-27 19:19:40', '2023-07-27 19:19:40'),
('2f7031919130f9cb84956503d0b264ac733d16b409f6c4202697910dc94b24025a00abba1a6f593d', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:18:05', '2023-01-28 10:18:05', '2023-07-28 10:18:05'),
('33616f60866d4343eb68ad5a4a7f22a84ee632b926f9f6fe2c6815baf247ed02928f73cdea2ea3d5', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:18:05', '2023-01-28 10:18:05', '2023-07-28 10:18:05'),
('344965b8b02e57ee0e2cfbd95931a980ec51bf7d20d60ea58ea15f51d3d3de49ed06e47622f3ef63', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:50', '2023-01-28 10:17:50', '2023-07-28 10:17:50'),
('359af1ff3c71f3ef7afa99545df9528e04d270a16efb3032263fc953c8295c0eb3feb42b26021662', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:16:46', '2023-01-28 11:16:46', '2023-07-28 11:16:46'),
('3a56cde1455e51dba0dd3d057f14883570ce4d4ceaccb2c3bc00f93dd2815166c5ec36a08865136a', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:27:18', '2023-01-27 17:27:18', '2023-07-27 17:27:18'),
('3a89e323310c254a16b100573b0f2d3d65ec0c62e31dfe0716d77cc3fb959fb4e13bfc4e53573fb3', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 18:57:37', '2023-01-27 18:57:37', '2023-07-27 18:57:37'),
('3cc2ec110cbc35e90f717a255093ceeb9204ebf5c5f1d013b4f624efe313ba927af9ca889d318d61', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:07:39', '2023-01-27 17:07:39', '2023-07-27 17:07:39'),
('3d9e7219406a3eee64d8c8d538ed5f9b37ebf7085b542852655ac59c5cbe7409cee149f00129f1e4', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:26:59', '2023-01-27 17:26:59', '2023-07-27 17:26:59'),
('3e432dc9c7d30080eed9c3a8318496d82a234c8473808e181338f5e065032d4450a9ae4147858a25', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:20:38', '2023-01-27 19:20:38', '2023-07-27 19:20:38'),
('46a33ebc354584e57fffedcce9515a851c47e823fd3e01987471c3874c141b83e7237c81c0c35b79', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:18', '2023-01-28 10:17:18', '2023-07-28 10:17:18'),
('4754e4d2f8e539ad9c9ac8d59c8a32a9a55ef54616ee2ad195ebe083e5284fd942079b1fcc7a74cd', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:20:38', '2023-01-27 19:20:38', '2023-07-27 19:20:38'),
('49f2a95d2dce4c186cada1edb0058390e6728258d331a3f080b3239a4566f76a4ef1a06de2b5fdb2', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:18:05', '2023-01-28 10:18:05', '2023-07-28 10:18:05'),
('4ad23cce983f8206fb287367b6b608d312cc4d885854ccd0de09d1be01e164dc924c2faa8ebf91f5', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:18:30', '2023-01-28 11:18:30', '2023-07-28 11:18:30'),
('4b49c0cae167712709cc5e2be1f186ab2f5e23d6c01300ccb97244513ba44806a2d928b3cbea1331', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:03:21', '2023-01-27 17:03:21', '2023-07-27 17:03:21'),
('4bf308f8db4af7bcd5c9eee3b8bfc7a412b9cb7961236c101c0c5653548c9bac24f9f32289d91df5', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:53:49', '2023-01-28 10:53:49', '2023-07-28 10:53:49'),
('4ea85d8a83b5d7cf3a10a7fd200a3667ffcc65f5178aa8c870e54264e8b1d45ab7a01d8375b5c08f', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:18', '2023-01-28 10:17:18', '2023-07-28 10:17:18'),
('4edc45352623a29a320298ab3180be64b0dc1f2ba3cd5f9817f525639b3d421b8d40e960d26ea64e', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:30:09', '2023-01-28 10:30:09', '2023-07-28 10:30:09'),
('4f4a553e2d097ab7265b636c68fb9aa236aad9f0b566597ca1782e0cb12e1166494451dffc99eef2', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:25:36', '2023-01-28 10:25:36', '2023-07-28 10:25:36'),
('4f666d9ad377474ef433bba93d958ba9741b7fbd9a4c544c173e78f09ceacc9751537537443758cb', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:33:44', '2023-01-27 17:33:44', '2023-07-27 17:33:44'),
('4f90cf0e13e64a6bc6c1a18c6651bf1aa40ee4d9340f85d8fe5efb9b75ea54b34469d1fbd9d17e0f', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:18:23', '2023-01-28 11:18:23', '2023-07-28 11:18:23'),
('4fc256a89e7a1f407ee585f4eb276c86b565c840b7c25365a582ab582e00f2959914110c6812cbaa', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:22:55', '2023-01-28 10:22:55', '2023-07-28 10:22:55'),
('50b6c729a9df24640fb4d7bb6278d86d117892a242e61588f9998e593bcfd1970c6c048e2a3bf66a', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:46:14', '2023-01-28 10:46:14', '2023-07-28 10:46:14'),
('5339cc14b05d7a7f80166ac8cea2efde019c97c7c79bab8f76996e0ece5ca2e6c31971c0ddf76e3a', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:25:47', '2023-01-28 10:25:47', '2023-07-28 10:25:47'),
('53c525f488e68e880fc7711559fa0fe5a4c18d5a086bb9167155c38308f6ec9b2b1bb65b6fe5bf14', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:19:10', '2023-01-28 10:19:10', '2023-07-28 10:19:10'),
('5503b7130f5edff1ac06360da3a4f5a8f39fae1a08364a401f7cd19e407e63a68b67ee88e752aca0', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:19:12', '2023-01-27 19:19:12', '2023-07-27 19:19:12'),
('579b9a2fa41abe41755095af2c3df2b55e6b05c430a7510d0deba88d22b7f256f3dd38baf17807fb', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:07:11', '2023-01-27 19:07:11', '2023-07-27 19:07:11'),
('58339d52911c6cf318f1049663fdb576f5050540b4d83b402755e3d4ac3121bd6f51a53b8aaf9191', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:09:11', '2023-01-28 10:09:11', '2023-07-28 10:09:11'),
('59857473b7b33ae416278c1c789cc8be7c1ce3cdd72abee87c367611371aa47e23b8f160084c5049', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:26:17', '2023-01-28 10:26:17', '2023-07-28 10:26:17'),
('5c5eddd8b3e169feb35c5924500310bbfd4b07324cf63f1edf5a5a9d9bf31a338d8405c8655acbd8', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:21:20', '2023-01-27 19:21:20', '2023-07-27 19:21:20'),
('5d8c027651f2dcc59feb9cd3a11851867080740c28e7e3dc7cfc62e55d586da088d733811a40f6bd', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:18:23', '2023-01-28 11:18:23', '2023-07-28 11:18:23'),
('5f0f60d09a8de1cd8f337c2007fb96328030d32fb9727b1e40d94a473b71891267a0ed13a95ec6f1', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:03:58', '2023-01-27 17:03:58', '2023-07-27 17:03:58'),
('5fb8a8e3d5d85cbab540ba275fbf94252248589ca28cde597de1dff2f8ef2aeb72b6ea839d89aa13', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:19:25', '2023-01-28 10:19:25', '2023-07-28 10:19:25'),
('638f209ca3a3ccdaf735424f53a0e1707b5577c6d8ff5ca1b5d81466274e7f3b072dc6e747a1aa34', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:08:28', '2023-01-27 17:08:28', '2023-07-27 17:08:28'),
('698e8bdad17bee5978ecc863a5fa3f510ca76d7b86fea8f2a5fa99660dc6baa02daf17e956bcfe57', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:19:11', '2023-01-28 10:19:11', '2023-07-28 10:19:11'),
('74dd53aef84c1f2e566a8e2d92e63c3e07b881fea268b981c4c3595369aabb46b2d235bb3f6f94ec', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:50', '2023-01-28 10:17:50', '2023-07-28 10:17:50'),
('7567c470783c97b682d8e7f1a36bdd8fee73d1a296a7dc906bff1e6fd56aef43f42e4c34688b050b', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:16:53', '2023-01-28 10:16:53', '2023-07-28 10:16:53'),
('7b17f5261cb16e29f173221294021d2b13fa468e4e99bbb055f2ef6b3e15eee8bdb1efdcb8b1820b', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:25:36', '2023-01-28 10:25:36', '2023-07-28 10:25:36'),
('7b19f5ced4598f3406a62237c1747fde07cc48c9d9a47418e7cbf219501fbef0be5ad5457e890973', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:57', '2023-01-28 10:17:57', '2023-07-28 10:17:57'),
('7d74d6a9f7dccf8f37ba467546325b0a96fce41b21033a0d5840708c320dbcb141b81720e07589f3', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:18', '2023-01-28 10:17:18', '2023-07-28 10:17:18'),
('7f6eaf14ef86d0954871457a13da08636f39e9720fa3281c61a9206fbebf0f39de3e2a837bcea300', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:50', '2023-01-28 10:17:50', '2023-07-28 10:17:50'),
('7fc6ba83ee8f952acb95c8902608b96a6391068a86d1d16959b4f62d1b8c34d7f5b0aa017cfc56e2', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:40:15', '2023-01-28 10:40:15', '2023-07-28 10:40:15'),
('7ffc9796b8db54863d493a56f8c1eb379211b3d041ba0a14feb998fa0f8569b68d7ba6bfe729129a', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:29:40', '2023-01-28 10:29:40', '2023-07-28 10:29:40'),
('8252339450d734f8a486b81295f9d714712022909d10b58c9c1613a164ca6599769b2dfcccb270da', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:16:54', '2023-01-28 10:16:54', '2023-07-28 10:16:54'),
('82a63a852b69a8332e3435563201f66f86b77914c8e2ebfeefe4914165a0a3051410547b9f8ebb8e', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:33:52', '2023-01-28 10:33:52', '2023-07-28 10:33:52'),
('85a53b26797eafa4af97258600c99ddedc350d15ec5e6976282ddc2277a7c14e22fef5ead07824b5', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:29:51', '2023-01-28 10:29:51', '2023-07-28 10:29:51'),
('85aa95379a082218e37e28becaf2d0b66f1c81bd0f270ee6b970b495e4ffb0c6853d046a789d4026', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:05:36', '2023-01-27 17:05:36', '2023-07-27 17:05:36'),
('85ad6e9ec09d36797c127e73a2c61f890ccd16fcc859be2791b9e830a63cdf1631a023f6eec03110', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:13:30', '2023-01-28 11:13:30', '2023-07-28 11:13:30'),
('85f9db2caf80c2f24f4de72014cf577e2f72076a2401894ee666c4608f32ad6789b9fcce98ec2ea9', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:19:12', '2023-01-27 19:19:12', '2023-07-27 19:19:12'),
('87b856f1f01eacecf7922b006c6985e3c833a5b01146b8b9193881b4fe4c97d0e64c332f17a45be5', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:57', '2023-01-28 10:17:57', '2023-07-28 10:17:57'),
('8e075afdaae961e7fdd3b947e31f4ed55916de603257894e4c8d975f51e42a1cc96957e81476ef14', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:15:18', '2023-01-28 11:15:18', '2023-07-28 11:15:18'),
('8fed4d8ab3f89e149fb9504fa44f3cd78ecf96d5c48c4025baf2732f1ec9e9d172b74471d9541dd4', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:19:25', '2023-01-28 10:19:25', '2023-07-28 10:19:25'),
('90aa2b5b95c5b662feaf64dd21fae210a777a041d321dfd8e632c7524b863729e5f328c2f65f43d5', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:25:37', '2023-01-28 10:25:37', '2023-07-28 10:25:37'),
('93be522d82fcc2603d3f1dcda6e143c46d6872061ab7a6208b192e63462819b1d8133d051b5d180b', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:25:37', '2023-01-28 10:25:37', '2023-07-28 10:25:37'),
('9a9b7da3278e0ca20ab2595ad54c487bd91daa01eb62cd39c6dac0c0fc4b77a3d12ec411b1c0a784', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:20:44', '2023-01-27 19:20:44', '2023-07-27 19:20:44'),
('9b1b27c94dddf9163981e368898f06e701d98755d89ad4d58b24e1b1de4c3eb829dd028cab909d39', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:15:23', '2023-01-28 11:15:23', '2023-07-28 11:15:23'),
('a237a2265af7a86be9f673ffc0eb6aee5f03d2554b265443c133272903a9af595171d9c75346a756', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:50', '2023-01-28 10:17:50', '2023-07-28 10:17:50'),
('a4cfba5f84b468113ab6eba66d99cc5e189ec712c4a8c4ae7dbf6ee21c565a48e3bdacc62eac08b0', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:26:25', '2023-01-28 10:26:25', '2023-07-28 10:26:25'),
('a68ba663d3f5d7c7ccddda283190ce07764d75ae294472295ec4b0cda2f82db7b90cde0c034f4964', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:22:55', '2023-01-28 10:22:55', '2023-07-28 10:22:55'),
('a882f376ed691cb2bb47ccd679e7e8203cb15f4720f6f92eda1a40f7adf25e767ca27ddffeca2812', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:11:42', '2023-01-27 19:11:42', '2023-07-27 19:11:42'),
('ac64069f05538cbd2329c7bc83c14574f62ac55ab3ec9b0e4895bcef320505f521b3e281de4205c7', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:33:52', '2023-01-28 10:33:52', '2023-07-28 10:33:52'),
('af0a521c59d029a3d84c8d4ca26eb093e80e68302020cecb75986e020c67c5a71be389410834f79a', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:05:36', '2023-01-27 17:05:36', '2023-07-27 17:05:36'),
('b52eb3d8f2a84ddee8f27758b6bae4d68342c27ecdb8f6484ce89c962d8c3342fba7a32e2c949699', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:17:02', '2023-01-28 11:17:02', '2023-07-28 11:17:02'),
('b70c48b3dc5ff526db156dd0d6e23072e226871902346a1eba99e8ad927893999f84f77d6809f5e8', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:22:55', '2023-01-28 10:22:55', '2023-07-28 10:22:55'),
('b8b634c82d9a334e7e9c946805e438cbb2b745c16e7759c3600e5ca0300fe02d14c94885fb936480', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:20:44', '2023-01-27 19:20:44', '2023-07-27 19:20:44'),
('b9541f1099f6448e4c238ef65af2f317294d5e339cef251505ec46aba5a44c03cffb36887c6c51ae', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:19:25', '2023-01-28 10:19:25', '2023-07-28 10:19:25'),
('bf60be04c404ee6bd14b4d71b4fec56a8abc56bd2c55241a1632e028b36f7d8b149b063b28b6b07b', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:33:24', '2023-01-28 10:33:24', '2023-07-28 10:33:24'),
('bfbdc4741447c89b15e5ae0e972d66c15577b3212c97eaebb490534f3d4d7977d9c463a6fafb68c9', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:29:40', '2023-01-28 10:29:40', '2023-07-28 10:29:40'),
('c1db40991713bda270da163e08c19597eb5e9f53497159e4d5206c74b9414c63be7355c6f091ee2d', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:21:20', '2023-01-27 19:21:20', '2023-07-27 19:21:20'),
('c27cfdbdbad95fd0ee1aae5ea4fcddd1bbfaf3ed7d68eb7013f820418387d4e53d5f701a50533e27', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 18:57:37', '2023-01-27 18:57:37', '2023-07-27 18:57:37'),
('c88b13c1d6a63e5571f2c091d723fc315086e862be3b400de8aa3a119ccb41d474f2919da7c6a62f', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:54:31', '2023-01-28 10:54:31', '2023-07-28 10:54:31'),
('c9991fbda2ecfbdf29c8236ff0a2e886632fe9466335a83a5e65e08561d6ef2f6d91f69fd39117e8', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:02:16', '2023-01-27 17:02:16', '2023-07-27 17:02:16'),
('cc0f222a9851156053ab8918d826ce2f6d6a828f40966104992ed47bd912b8a50ba72fe3d98dac80', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:54:27', '2023-01-28 10:54:27', '2023-07-28 10:54:27'),
('cd124330b287d113a4f92207fc4adb33b857171059c9274c9f6f13a82c30c50fb3f447f97472d2f0', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:07:39', '2023-01-27 17:07:39', '2023-07-27 17:07:39'),
('cdabcf8079e5ce0a2723f5bb2e045e2cb78ea79347b432fd35d58fb8511776a933927a09f9b190b7', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:44:45', '2023-01-28 10:44:45', '2023-07-28 10:44:45'),
('d16c55b39c1f987ae525ef0bfd9ce358d41ce378de3e6f6fb76d66f672920cd0af45bb399b399d21', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:18:05', '2023-01-28 10:18:05', '2023-07-28 10:18:05'),
('d3619555e11c4e19165785c88a85870ee63665c3c89509a3cc998ce0df3418e19e93222db61068bc', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:25:47', '2023-01-28 10:25:47', '2023-07-28 10:25:47'),
('d4e015104bb591668888df9f3ce21075fe6cebdcf7c6aee4a671572458dd608d4446ec6539867822', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:33:24', '2023-01-28 10:33:24', '2023-07-28 10:33:24'),
('da911d22206b1a87231d6f51c3868083c78539b7706f4b5669f8eac4b6edf9be7c93d3ea706eb226', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:19:25', '2023-01-28 10:19:25', '2023-07-28 10:19:25'),
('db3c1f12f7241cd0d44770223d1f48a2dababc69c34c9a966841ab3db978f4fb7d3a8f7808fcf14e', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:22:55', '2023-01-28 10:22:55', '2023-07-28 10:22:55'),
('dd37762b1732c97a298e4a1cbfdc2ea7f430dc4650149296cc9022e3556d8ed949463423026657a0', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:03:58', '2023-01-27 17:03:58', '2023-07-27 17:03:58'),
('dfb608c4d742e14915b83fffc8247e57d480c0495426b46269063a68b89729495824377e067ecff5', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:33:31', '2023-01-27 17:33:31', '2023-07-27 17:33:31'),
('e16ec16e5f3ac5bdb0e972a487a95c8a6ff8eff66a3a2a4786da8807d27aef87926aba613e5f7285', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:33:14', '2023-01-28 10:33:14', '2023-07-28 10:33:14'),
('e1755321947dc6077867a4c628579b7b2bc59b0445a86ba666d6fb82aebd684ce5d860c7b07445c4', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:17:18', '2023-01-28 10:17:18', '2023-07-28 10:17:18'),
('e36a07709e886e845afd1dad411c2a9184f6c6141cf3f5b67c14536bdd6fdf763d70d1d399d18da2', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:08:28', '2023-01-27 17:08:28', '2023-07-27 17:08:28'),
('e83df69e55a0c6ea4e5b170e5d305c45dd8d8bad8f711fc202ea0e9134b18440daff0432361e6ac7', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:27:18', '2023-01-27 17:27:18', '2023-07-27 17:27:18'),
('eb97eac863725cd34554b7992c7497b75270f35a875fe78681f0cbbb46a43029cd94c296b0ab96d6', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 11:18:30', '2023-01-28 11:18:30', '2023-07-28 11:18:30'),
('f13c605bdf87b18a89ed2ebfcc5ed06f567a307373af7e1ccb926f1fe8b47315f9933bd874a6e69e', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:26:17', '2023-01-28 10:26:17', '2023-07-28 10:26:17'),
('f2f9b0fb7a8c71a04c12baa6e896528f4ce6cecc261c326ef7befeccbf9d6197bc35bb177b5bdfdd', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:26:58', '2023-01-27 17:26:58', '2023-07-27 17:26:58'),
('f5c33161d35d2cd73c069e7be72c95d807ee841863bef164196a68d0776a51b81c149f2ac815d88d', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-28 10:09:10', '2023-01-28 10:09:10', '2023-07-28 10:09:10'),
('f6f17ad04974a8080f72681e5f098712c584c9bed2a18ddb26b1d98663997a7845d52823e559ccfe', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 17:33:31', '2023-01-27 17:33:31', '2023-07-27 17:33:31'),
('f794bf06dd3a09140e2163820ff92617bbf4fb3a4c671c9561c87060a013f82ca9026c89812ab52a', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:24:56', '2023-01-27 19:24:56', '2023-07-27 19:24:56'),
('fb29d6f0af393555f260a0958cb685674eca06ab748b68f591afd2050d82f5bc300e6783e9df95b2', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:07:11', '2023-01-27 19:07:11', '2023-07-27 19:07:11'),
('ff891a1a011bc5002c39456d1ae104b7d0e3a77b9f0cfec2bd64f448bc4464b95dfc716285e4b1be', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:19:40', '2023-01-27 19:19:40', '2023-07-27 19:19:40'),
('ffafa1e07076ea2f58c717413a2b490fe48420a3263b1957d78dd81db8400708fd8b2cc2d2e94aed', 1, 1, 'keeptryinbaby', '[]', 0, '2023-01-27 19:11:42', '2023-01-27 19:11:42', '2023-07-27 19:11:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'WUcugRA771mydCigfqk2vR6SavCjT7miIdc3JdDY', NULL, 'http://localhost', 1, 0, 0, '2023-01-27 17:01:01', '2023-01-27 17:01:01'),
(2, NULL, 'Laravel Password Grant Client', 'pFpcAabV4Fcdrx5agnP86j8x8nBbDC7TqgL4JiHM', 'users', 'http://localhost', 0, 1, 0, '2023-01-27 17:01:01', '2023-01-27 17:01:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-01-27 17:01:01', '2023-01-27 17:01:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id` bigint UNSIGNED NOT NULL,
  `kd_barang` int NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `harga` int NOT NULL,
  `netto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id`, `kd_barang`, `nama_barang`, `customer`, `qty`, `harga`, `netto`) VALUES
(1, 1001, 'Minyak Zaitun', 'Fahmi', 2, 25000, 50000),
(2, 2001, 'Miranda Semir Hitam', 'Amrullah', 3, 12000, 36000),
(3, 3001, 'Nuface Lip Cream', 'Fahmi', 2, 35000, 70000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'keeptryinbaby', '02dd63156eb9b50daf4559678fe3993d13c5d722e37f9c07cfe42794dc70b6f7', '[\"*\"]', NULL, '2023-01-27 16:52:23', '2023-01-27 16:52:23'),
(2, 'App\\Models\\User', 1, 'keeptryinbaby', '8af48623c107e0f050644156418b32311944d5385dfa5182c9e2d2714e1b4237', '[]', NULL, '2023-01-27 16:52:23', '2023-01-27 16:52:23'),
(3, 'App\\Models\\User', 1, 'keeptryinbaby', '9968bc9dfc5e8fe662012c165c2fd0399e63eeaf7f17781c36870ccd105715ec', '[\"*\"]', NULL, '2023-01-27 16:57:07', '2023-01-27 16:57:07'),
(4, 'App\\Models\\User', 1, 'keeptryinbaby', 'e4f9b1c73c6c597e4889ef225cd8d51cb5bd2b9109690b707c6bb8c53879179c', '[]', NULL, '2023-01-27 16:57:07', '2023-01-27 16:57:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `userid`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'herborist\n', 'herborist@vci.co.id', '$2y$10$a1COPTtflRYbgynRzUhoFumD4AkjM7xSleLOgS6leOXLmzKslJRxy', '2023-01-27 16:51:09', '2023-01-27 16:51:09'),
(2, 'miranda', 'miranda@vci.co.id', '$2y$10$M3b1WN5Y.IHJMJxSXw8Ft.B0YAbzSNFwzhv9UCDBytbgbOvJC43Aa', '2023-01-27 16:51:09', '2023-01-27 16:51:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_devices`
--

CREATE TABLE `user_devices` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version_major` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version_minor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version_patch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_engine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_devices`
--

INSERT INTO `user_devices` (`id`, `user_id`, `user_ip`, `user_agent`, `device_type`, `browser_name`, `browser_family`, `browser_version`, `browser_version_major`, `browser_version_minor`, `browser_version_patch`, `browser_engine`, `platform_name`, `platform_family`, `created_at`, `updated_at`) VALUES
(14, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(15, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(16, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(17, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(18, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(19, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(20, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(21, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(22, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(23, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(24, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(25, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(26, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(27, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(28, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(29, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(30, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(31, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(32, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(33, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(34, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(35, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(36, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(37, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(38, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(39, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(40, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(41, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(42, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(43, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(44, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(45, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(46, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(47, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(48, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(49, '123', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'Desktop', 'Chrome 108', 'Chrome', '108', '108', '0', '0', 'Blink', 'GNU/Linux', 'GNU/Linux', NULL, NULL),
(50, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(51, '123', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'Desktop', 'Chrome 108', 'Chrome', '108', '108', '0', '0', 'Blink', 'GNU/Linux', 'GNU/Linux', NULL, NULL),
(52, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL),
(53, '123', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'Desktop', 'Chrome 108', 'Chrome', '108', '108', '0', '0', 'Blink', 'GNU/Linux', 'GNU/Linux', NULL, NULL),
(54, '123', '127.0.0.1', 'GuzzleHttp/7', 'Bot', '', 'Unknown', '', '0', '0', '0', 'Unknown', '', 'Unknown', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_userid_unique` (`userid`);

--
-- Indeks untuk tabel `user_devices`
--
ALTER TABLE `user_devices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_devices`
--
ALTER TABLE `user_devices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
