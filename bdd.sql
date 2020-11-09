-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour site
CREATE DATABASE IF NOT EXISTS `site` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `site`;

-- Listage de la structure de la table site. account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7D3656A4A76ED395` (`user_id`),
  CONSTRAINT `FK_7D3656A4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table site.account : ~0 rows (environ)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`id`, `user_id`, `balance`) VALUES
	(9, 142, 2000),
	(10, 153, 0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- Listage de la structure de la table site. ad
CREATE TABLE IF NOT EXISTS `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77E0ED58F675F31B` (`author_id`),
  KEY `IDX_77E0ED5812469DE2` (`category_id`),
  CONSTRAINT `FK_77E0ED5812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_77E0ED58F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table site.ad : ~30 rows (environ)
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` (`id`, `title`, `price`, `content`, `cover_image`, `author_id`, `category_id`, `slug`) VALUES
	(1, 'Quas quasi in non in id.', 82, '<p>Necessitatibus sint earum doloremque quisquam eos consectetur. Vitae vel quaerat sint ex voluptatum. Vel sed eos minus nihil deserunt.</p><p>Quo perferendis eligendi beatae. Eveniet asperiores laboriosam dolor voluptatem velit accusantium consequatur. Aliquid eveniet voluptatem neque tempora. Quo sint aperiam temporibus mollitia.</p>', 'https://lorempixel.com/1000/350/?99850', 152, 23, 'quas-quasi-in-non-in-id'),
	(2, 'At odio fugiat quas voluptatem itaque nihil.', 99, '<p>Non libero id ut. Exercitationem libero reiciendis aliquam consequuntur nemo distinctio. Eaque impedit quibusdam fugiat totam totam ut architecto. Velit similique quod libero reprehenderit magnam et.</p><p>Nisi enim non cumque aperiam recusandae soluta. Aut culpa omnis necessitatibus eos est. Et magni odio in ut sed quas.</p>', 'https://lorempixel.com/1000/350/?36493', 146, 20, 'at-odio-fugiat-quas-voluptatem-itaque-nihil'),
	(3, 'Vel eum et similique qui et architecto vero.', 87, '<p>Ipsa et voluptate molestiae dolorem reprehenderit eum est in. In aut nam pariatur nemo vel et aut.</p><p>Eum non consectetur omnis quos. Dolorem expedita ut sit. Rerum eveniet ut non et excepturi asperiores maiores.</p>', 'https://lorempixel.com/1000/350/?14103', 144, 27, 'vel-eum-et-similique-qui-et-architecto-vero'),
	(4, 'Cumque dolores omnis dicta aut.', 188, '<p>Numquam beatae perferendis veritatis enim. Fugiat architecto perspiciatis quaerat aliquam id aperiam iusto. Debitis velit eius nisi ea. Quisquam natus iusto velit amet repellat rerum.</p><p>Dolore nostrum voluptas exercitationem placeat eum aut blanditiis. Quod repellat fugiat illum eligendi et ut suscipit. Recusandae laboriosam quis et voluptatem.</p>', 'https://lorempixel.com/1000/350/?56433', 147, 32, 'cumque-dolores-omnis-dicta-aut'),
	(5, 'Enim ut temporibus iusto rerum.', 157, '<p>Magnam autem distinctio similique similique nihil. Praesentium aut qui assumenda omnis fugit. Modi velit et reiciendis ea nihil est distinctio ad. Aut et voluptatibus quia quia ullam.</p><p>Voluptas incidunt rerum omnis molestiae debitis sed. Praesentium sit velit id deserunt rerum in laboriosam placeat. Maxime consequuntur dignissimos aut quod fugiat veniam repellat.</p>', 'https://lorempixel.com/1000/350/?59275', 144, 33, 'enim-ut-temporibus-iusto-rerum'),
	(6, 'Sint odit dolores amet qui doloribus expedita et.', 52, '<p>Dolor earum nostrum sunt. Illum illo est dolorum architecto quas. Non rerum molestiae et est. Consequatur perspiciatis qui provident quod.</p><p>Sequi laboriosam tempora nihil voluptatem dicta dolore. Sint veniam qui est tempora est placeat. Est quasi aut voluptatem magni voluptatem dolorem quod. Consequatur placeat eum ducimus exercitationem doloribus.</p>', 'https://lorempixel.com/1000/350/?57485', 149, 35, 'sint-odit-dolores-amet-qui-doloribus-expedita-et'),
	(7, 'Non illum sunt eos non aliquam itaque.', 152, '<p>Aut ad hic rerum ut. Ratione veniam sit est. Omnis a est molestiae quas dolor consequatur et. Numquam sint temporibus sed.</p><p>Nobis similique dicta porro. Laudantium rerum voluptatem maiores quia harum. Iusto eos eaque velit nulla consequatur aut.</p>', 'https://lorempixel.com/1000/350/?97960', 148, 27, 'non-illum-sunt-eos-non-aliquam-itaque'),
	(8, 'Adipisci optio asperiores dolor similique sunt esse rerum numquam.', 192, '<p>Quisquam provident adipisci in est. Ea exercitationem quidem quis ut. Illum sunt dolore sint enim totam quis. Voluptatem accusantium aspernatur velit modi a commodi vero deleniti.</p><p>Nisi impedit cumque sit alias eaque voluptas architecto voluptas. Sit saepe possimus voluptatem optio.</p>', 'https://lorempixel.com/1000/350/?14897', 145, 34, 'adipisci-optio-asperiores-dolor-similique-sunt-esse-rerum-numquam'),
	(9, 'Quasi totam ea hic soluta.', 175, '<p>Rem vel porro molestiae inventore consequuntur possimus eum id. Facere eos adipisci iste eum voluptatem dolore fugiat eum.</p><p>Tempore sint inventore voluptas excepturi aut. Maxime aperiam debitis eveniet et debitis. In omnis dolor maxime ut aut. Laudantium modi omnis et at aut est eos ea.</p>', 'https://lorempixel.com/1000/350/?33662', 147, 25, 'quasi-totam-ea-hic-soluta'),
	(10, 'Veritatis voluptates nesciunt libero possimus.', 198, '<p>In exercitationem eum qui quaerat doloribus. Et maxime error totam praesentium qui rerum veritatis. Odio est quos aut magni.</p><p>Ex et adipisci amet corrupti laborum quo. Vitae amet et iure exercitationem id. Praesentium adipisci molestiae suscipit voluptates. Placeat ipsum officiis omnis non vel qui consectetur.</p>', 'https://lorempixel.com/1000/350/?49355', 145, 33, 'veritatis-voluptates-nesciunt-libero-possimus'),
	(11, 'Illo pariatur labore et ut quis.', 108, '<p>Eveniet placeat hic dolor quis et est tempore quas. Accusamus rem nihil ea magnam qui et. Eos doloribus sed quo maiores.</p><p>Impedit doloribus corporis inventore repudiandae nam nostrum dolor. Est aut dolor suscipit pariatur voluptate et. Nisi autem reprehenderit magni sint et.</p>', 'https://lorempixel.com/1000/350/?45157', 148, 35, 'illo-pariatur-labore-et-ut-quis'),
	(12, 'Quibusdam accusantium sed est.', 103, '<p>Quas blanditiis vitae sit dolores harum sint error. Earum consequatur dolorum odio ut. Sint facilis ipsam quaerat ipsum magnam et saepe.</p><p>Recusandae necessitatibus vitae ut numquam quibusdam non aut. Vel sapiente laboriosam labore autem et a aperiam. Ad rerum odio distinctio ut id. Aut nulla sed eos dolor autem numquam cum.</p>', 'https://lorempixel.com/1000/350/?90836', 143, 20, 'quibusdam-accusantium-sed-est'),
	(13, 'Natus eaque et et dolores quasi.', 121, '<p>Repudiandae rerum qui cupiditate et enim. Pariatur excepturi ut explicabo et eaque. Ullam eos fuga in ea laboriosam. Blanditiis tempore ut quidem at quis voluptatem.</p><p>Molestiae et harum deleniti non in dicta voluptas. Dicta ab tenetur et non. Eveniet eveniet ut quia vel minus ipsam. Reprehenderit quo eos fugiat voluptatem est.</p>', 'https://lorempixel.com/1000/350/?56003', 143, 20, 'natus-eaque-et-et-dolores-quasi'),
	(14, 'Praesentium suscipit qui hic assumenda molestiae tempore in.', 121, '<p>Dolores aliquid placeat deserunt voluptate veniam ut. Distinctio voluptates fugiat aut. Magnam veritatis quae delectus ea et.</p><p>Odit et consequatur similique harum ipsam quis cupiditate. Iste laborum et vitae harum corrupti est nemo. Non libero aut laboriosam amet.</p>', 'https://lorempixel.com/1000/350/?79992', 150, 35, 'praesentium-suscipit-qui-hic-assumenda-molestiae-tempore-in'),
	(15, 'Necessitatibus aspernatur beatae quia quaerat ex.', 179, '<p>Error omnis itaque voluptatem velit autem velit eveniet temporibus. Consectetur unde cumque inventore neque. Et voluptas neque pariatur tempora et esse doloribus. Officiis deserunt nisi necessitatibus consequuntur.</p><p>Et dolor non ex minus consectetur praesentium. Temporibus dicta suscipit odit iure iure dicta. Sunt veniam sequi nihil itaque quis. Corrupti sint itaque libero excepturi id. Quam maxime et voluptatem.</p>', 'https://lorempixel.com/1000/350/?92129', 151, 32, 'necessitatibus-aspernatur-beatae-quia-quaerat-ex'),
	(16, 'Non velit est doloremque dolores quia a.', 78, '<p>Nostrum est sint explicabo. Numquam sed labore voluptatum aut aliquam.</p><p>Expedita consequatur quibusdam dolorem consectetur. Sit enim dolorem magni quidem. Repellendus magnam deserunt alias magnam. Iure veniam dolores et quo dolores doloribus sequi.</p>', 'https://lorempixel.com/1000/350/?69375', 149, 25, 'non-velit-est-doloremque-dolores-quia-a'),
	(17, 'Est cupiditate et perspiciatis ut numquam neque.', 68, '<p>Aut laborum dolorem quod aspernatur. Est ipsam enim sequi recusandae in harum. Ut nesciunt optio qui id odio error dolorum. Animi officia quo vero.</p><p>Quidem tempora sapiente sequi qui unde. Eum voluptates voluptatibus blanditiis blanditiis quo. Ut et dolorum blanditiis neque nemo.</p>', 'https://lorempixel.com/1000/350/?24086', 145, 33, 'est-cupiditate-et-perspiciatis-ut-numquam-neque'),
	(18, 'Debitis corrupti praesentium quia est excepturi officia.', 164, '<p>Nobis aut ducimus illo rem nulla eum. Non tempora laboriosam quae dolores quia eligendi quidem. Iste culpa aut aut asperiores. Consectetur a delectus quo.</p><p>Dolorem et natus eum quo aut repudiandae optio. Doloremque adipisci itaque ea est distinctio nesciunt voluptas. Temporibus quasi ab deleniti voluptatem tenetur culpa nobis aut. Et eum magnam quas deleniti sint quia commodi.</p>', 'https://lorempixel.com/1000/350/?82574', 150, 26, 'debitis-corrupti-praesentium-quia-est-excepturi-officia'),
	(19, 'Vel voluptas quo qui voluptas possimus quia harum.', 145, '<p>Ut mollitia aliquam aliquid voluptatibus perferendis quis. Molestiae ipsum inventore porro ab non commodi laudantium rem. Accusantium non aut iure dolor quis qui enim. Recusandae ipsam quo officia error. Vero laboriosam quo excepturi consequatur.</p><p>Minima libero natus praesentium maxime vel sit dolores. Qui totam commodi cum quo. Tempora natus et culpa non. Ut cumque voluptate sit ratione.</p>', 'https://lorempixel.com/1000/350/?25985', 144, 37, 'vel-voluptas-quo-qui-voluptas-possimus-quia-harum'),
	(20, 'Et voluptas eius provident commodi et consectetur.', 61, '<p>Vitae aperiam minus a quis inventore provident rerum. Eum nihil rem excepturi labore aut. Autem ipsam voluptas hic.</p><p>Aut aut possimus nisi. Possimus accusamus quo architecto molestiae consequuntur accusantium eos. Eum illo tenetur fuga molestiae dolore a. Enim occaecati voluptas dolorem laboriosam nihil.</p>', 'https://lorempixel.com/1000/350/?75254', 145, 29, 'et-voluptas-eius-provident-commodi-et-consectetur'),
	(21, 'Reprehenderit voluptatem nobis qui quia.', 112, '<p>Ab voluptas fuga enim dolores et. Et sapiente labore perspiciatis nihil similique ratione adipisci. Maxime voluptatem est ut fuga. Dolore ut qui consequatur doloribus consequatur.</p><p>Explicabo ut reiciendis ab voluptas dolore harum. Impedit corporis molestias voluptates facere. Enim rerum quia asperiores molestiae. Voluptas dignissimos repudiandae harum quasi.</p>', 'https://lorempixel.com/1000/350/?19749', 144, 37, 'reprehenderit-voluptatem-nobis-qui-quia'),
	(22, 'Fugit sed nemo at pariatur.', 62, '<p>Et optio ratione et provident cumque. Delectus aspernatur unde id sed ipsam aut optio. Voluptatibus voluptatem ipsam aut commodi cupiditate aut laborum magnam.</p><p>Et dolores et ut qui. Occaecati nihil voluptate nihil quo quo enim voluptatum. Iste consequatur quia quasi eum facere commodi molestias recusandae.</p>', 'https://lorempixel.com/1000/350/?29047', 151, 36, 'fugit-sed-nemo-at-pariatur'),
	(23, 'Et aut impedit et.', 183, '<p>Aut dicta ipsam est aut. Ipsam dicta nam rerum sapiente tenetur delectus. Dolorem in non culpa accusantium. Sed sequi exercitationem nesciunt expedita sit qui.</p><p>Asperiores dolorum numquam in ipsam. Dicta labore vitae atque tenetur voluptas. Laudantium tempore nihil veniam voluptatibus sapiente natus in.</p>', 'https://lorempixel.com/1000/350/?72788', 146, 27, 'et-aut-impedit-et'),
	(24, 'Est quos aut sed nesciunt eius officia beatae.', 187, '<p>Itaque officia sit molestiae eum laborum. Est deserunt dolor temporibus magnam nostrum doloribus culpa.</p><p>Aut numquam magni maxime praesentium enim nulla eum. Soluta et voluptatibus eveniet quis. Eum qui aut a sit. Voluptatem excepturi vero adipisci cum id ut.</p>', 'https://lorempixel.com/1000/350/?61284', 145, 22, 'est-quos-aut-sed-nesciunt-eius-officia-beatae'),
	(25, 'In dolor vitae ea aliquam sit quis ut.', 146, '<p>Nihil dolorum qui expedita illum. Dolores doloremque est quisquam magni. Dolorum ab corporis qui mollitia. Natus nihil numquam praesentium quia error.</p><p>Distinctio corrupti ratione mollitia asperiores facilis alias. Quidem provident aut temporibus velit. Deserunt praesentium aut delectus aut magni omnis.</p>', 'https://lorempixel.com/1000/350/?64633', 144, 22, 'in-dolor-vitae-ea-aliquam-sit-quis-ut'),
	(26, 'Vel incidunt ullam veniam fugit nulla.', 83, '<p>Sunt adipisci distinctio rerum sunt voluptatum. Autem odio quia magnam eligendi libero vel dicta. Sed tempora deserunt sit quo aut perspiciatis.</p><p>Autem quis quo sed fugit. Beatae ab exercitationem nulla ducimus nihil occaecati. Qui iure quod assumenda. Cumque molestiae sit placeat ratione.</p>', 'https://lorempixel.com/1000/350/?56266', 145, 29, 'vel-incidunt-ullam-veniam-fugit-nulla'),
	(27, 'Aut quia quas maxime sunt ducimus.', 151, '<p>Consequatur illum minus ex suscipit cumque omnis. Totam nam minima sint dolorem sit non maiores.</p><p>Eaque aliquid sed aut sit iste libero. Nemo ratione quod dolorum asperiores commodi quia. Sunt dolorum ipsum odit sit asperiores ut nulla vel. Nihil sit a nam doloremque nesciunt ut beatae. Repellat quas non est voluptas fugiat.</p>', 'https://lorempixel.com/1000/350/?22811', 150, 23, 'aut-quia-quas-maxime-sunt-ducimus'),
	(28, 'Modi eligendi et eligendi molestias non consequatur quis maiores.', 125, '<p>Reprehenderit et sit necessitatibus sapiente aut corrupti cumque nulla. Voluptas doloremque ex nam dolorem adipisci. Voluptates iste molestiae ducimus dolorem optio quia sed ex. Ipsum delectus sed eum repellendus vitae.</p><p>Quis aut qui veniam sed eveniet omnis voluptatum. Excepturi dicta recusandae temporibus ea distinctio maxime. Aliquam perferendis voluptatem est. Necessitatibus assumenda voluptatem et accusantium labore et veniam laboriosam.</p>', 'https://lorempixel.com/1000/350/?55689', 145, 32, 'modi-eligendi-et-eligendi-molestias-non-consequatur-quis-maiores'),
	(29, 'Ut quidem qui in blanditiis.', 88, '<p>Aut dolor provident ullam qui consequatur. Earum in dolor saepe omnis dolorem. Eos autem natus sunt autem fuga.</p><p>Aut ipsum vero est blanditiis consectetur quasi molestiae et. Illum veniam quasi sapiente possimus nostrum placeat omnis. Corrupti rerum iure iusto.</p>', 'https://lorempixel.com/1000/350/?85128', 146, 34, 'ut-quidem-qui-in-blanditiis'),
	(30, 'Iusto odit itaque ea rerum.', 144, '<p>Quas similique sint nihil et quisquam ullam voluptatem. Magni facere natus ratione voluptatem voluptas fugiat adipisci. Cum quia sint quis quia necessitatibus soluta illum veniam.</p><p>Sint eligendi quod quo quis exercitationem omnis. Quis cum porro sit quos mollitia atque. Asperiores delectus dolores voluptas quae. Sit similique neque earum soluta quibusdam eius consequatur.</p>', 'https://lorempixel.com/1000/350/?45315', 147, 22, 'iusto-odit-itaque-ea-rerum');
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;

-- Listage de la structure de la table site. booking
CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booker_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_E00CEDDE8B7E4006` (`booker_id`),
  KEY `IDX_E00CEDDE4F34D596` (`ad_id`),
  CONSTRAINT `FK_E00CEDDE4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`),
  CONSTRAINT `FK_E00CEDDE8B7E4006` FOREIGN KEY (`booker_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table site.booking : ~75 rows (environ)
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` (`id`, `booker_id`, `ad_id`, `start_date`, `created_at`, `amount`, `comment`) VALUES
	(275, 151, 1, '2020-01-26 02:41:42', '2020-02-24 06:08:47', 738, 'Harum doloremque et suscipit praesentium. Qui qui aperiam magni quia. Suscipit autem alias ut voluptates possimus inventore. Nostrum aut amet vero occaecati perspiciatis sapiente aliquam.'),
	(276, 148, 1, '2020-04-05 22:57:01', '2019-12-22 08:26:41', 410, 'Tenetur quidem quam illum temporibus voluptatum aliquid debitis sed. Sapiente est ipsum voluptatibus cumque voluptatum aspernatur quo. Quam minus cum nam ut rerum.'),
	(277, 150, 1, '2020-03-08 01:38:08', '2020-03-03 21:09:32', 164, 'Quis recusandae aliquid quidem aut molestiae atque. Recusandae molestiae est enim dolorum quis. Rerum omnis error doloribus eligendi consequatur iusto maxime. Ipsa optio est impedit voluptates ipsum.'),
	(278, 148, 1, '2020-03-28 20:55:02', '2020-04-23 08:38:12', 328, 'Itaque velit repudiandae consequatur architecto dolores. Sed perspiciatis quis quo ut dolorum autem. Enim dolorum quia et itaque itaque voluptatibus et. Aut repellendus sed et.'),
	(279, 144, 1, '2020-02-17 19:08:36', '2019-10-29 17:28:00', 164, 'Est vero ratione odit id eaque. Ut adipisci est temporibus dolor sit. Nesciunt culpa voluptatem quia aliquam voluptas rerum expedita. Amet dolorem aspernatur est eveniet qui.'),
	(280, 149, 2, '2020-04-21 19:04:49', '2019-10-30 16:21:49', 990, 'Earum eos non provident nisi doloribus asperiores. Velit aperiam rerum quae nisi. Totam repellendus earum nisi qui. Vero velit sapiente ullam aut in. Et veritatis molestiae sint neque eaque.'),
	(281, 151, 2, '2020-02-27 01:16:09', '2020-01-10 05:21:59', 495, 'Ut et dolor numquam et. Sit aliquam facilis unde quis explicabo vitae facere.'),
	(282, 149, 2, '2020-03-03 03:56:45', '2019-11-28 08:31:58', 198, 'Ea deleniti et consequuntur quis enim. Et ut aut occaecati iusto inventore. Cumque nihil aut doloribus blanditiis rerum.'),
	(283, 152, 4, '2020-04-13 23:58:24', '2020-04-14 06:04:05', 752, 'Excepturi repudiandae temporibus asperiores quos molestiae excepturi. Quo delectus nihil libero. Occaecati quidem sit saepe ex blanditiis. Id voluptatem quod autem iure.'),
	(284, 143, 5, '2020-03-18 15:10:58', '2020-03-15 04:54:10', 1413, 'Excepturi doloribus quisquam ipsa. Et earum eaque et sapiente eum aut. Nisi nemo et atque recusandae beatae voluptate enim.'),
	(285, 148, 5, '2020-04-11 16:35:19', '2020-04-14 02:53:29', 785, 'Vel laborum odit facilis velit voluptas consectetur. Hic cumque incidunt eligendi numquam animi consectetur pariatur. Dolorum tenetur veritatis unde. Qui itaque enim quidem numquam quod qui eius.'),
	(286, 143, 5, '2020-03-01 11:57:37', '2019-12-28 07:55:33', 942, 'Est fugiat cum aut. Provident perferendis autem veniam quia excepturi esse. Velit aut non tempore consequatur vel qui.'),
	(287, 149, 5, '2020-03-23 13:48:06', '2020-01-20 03:19:49', 1413, 'Nemo et non facilis nostrum et occaecati. Iste autem voluptas molestias sapiente ut temporibus. Totam illum cum illo et sapiente aut recusandae.'),
	(288, 150, 6, '2020-02-05 20:01:03', '2019-12-05 01:30:04', 416, 'Nemo eius unde ab dolorem perspiciatis est. Rem et et quia est ea expedita voluptatum. Eius consequatur libero optio accusamus doloribus. Voluptatum amet perferendis esse praesentium a illum non.'),
	(289, 148, 7, '2020-03-19 07:20:55', '2020-01-08 00:15:36', 1520, 'Omnis eos sed consectetur incidunt accusantium est quo quo. Voluptatem ut dolore quos quam a ad et. Harum enim vel alias rerum dolores ab quaerat. At culpa cum similique veniam unde.'),
	(290, 149, 7, '2020-04-04 02:57:39', '2019-11-25 01:04:46', 912, 'Voluptatem dolorem dolor id quaerat deleniti est molestiae quam. Quo culpa qui ut in ea repudiandae nostrum. Pariatur molestias accusamus necessitatibus. Rem sint aperiam aperiam voluptates culpa rem quasi facilis.'),
	(291, 151, 8, '2020-03-13 03:35:59', '2020-01-22 02:54:36', 192, 'Sed reprehenderit quasi ut rerum minima architecto. Eos delectus provident asperiores est dolor nihil cumque magnam. Magni et nobis consequatur eveniet et doloribus qui. Doloremque vitae explicabo repellat.'),
	(292, 150, 9, '2020-03-21 09:37:33', '2020-02-24 14:42:24', 700, 'Incidunt assumenda est omnis nesciunt beatae et. Dolore consectetur blanditiis itaque omnis perferendis quis reiciendis in. Laboriosam quia optio quo tempore odit quia.'),
	(293, 145, 10, '2020-04-16 16:20:55', '2020-03-27 19:40:12', 990, 'Eveniet aperiam aut vel optio sed. Enim velit quo est et consequatur. Itaque dolorem commodi laboriosam enim magni. Accusantium quam voluptatem ut harum.'),
	(294, 152, 10, '2020-04-04 14:59:14', '2020-01-08 11:12:54', 1584, 'Quos iusto voluptatibus et beatae et nihil similique. Voluptatem et autem quos commodi facilis sit ea omnis. Sit numquam repellat quia nesciunt voluptatem voluptatibus quae. Et eos aut sit voluptatem in similique consequuntur. Officiis accusantium repudiandae modi quo eaque sapiente dicta.'),
	(295, 150, 10, '2020-04-18 08:02:21', '2020-01-31 23:55:18', 990, 'Repellendus repellat sit repellat eligendi corrupti explicabo. Ea impedit sed tenetur labore laudantium quis cupiditate. Maiores in ullam deserunt. Minima et dolores nisi quidem.'),
	(296, 145, 10, '2020-01-31 22:11:00', '2020-02-01 03:24:23', 792, 'Aspernatur debitis officia explicabo fuga impedit et accusantium sequi. Consequatur magnam eaque voluptatem porro. Sint exercitationem eveniet vel optio omnis. Enim doloribus quidem et labore esse.'),
	(297, 152, 10, '2020-03-23 08:05:41', '2020-01-10 09:25:22', 1188, 'Sunt asperiores unde et veniam. Fuga aliquam vel et fugiat nulla. Tempore error dolore voluptates temporibus amet facilis. Sapiente rerum illum pariatur saepe ipsam dolor.'),
	(298, 146, 10, '2020-03-21 22:50:12', '2020-01-24 12:29:29', 1584, 'Cum vel dolor rerum magnam. Velit sed quo sed blanditiis et ea quis iure. Cupiditate dolor qui commodi a aut mollitia numquam.'),
	(299, 152, 11, '2020-04-11 16:34:54', '2019-12-04 12:24:39', 108, 'Reprehenderit aperiam saepe aut. Ut et facilis pariatur molestiae. Molestiae accusamus dolore enim et.'),
	(300, 143, 11, '2020-02-28 14:41:57', '2020-03-30 03:04:37', 756, 'Eos excepturi eos dolorem cumque dolore. Sed ut velit nulla. Officiis architecto sunt dignissimos enim minus.'),
	(301, 150, 11, '2020-02-12 10:55:40', '2020-04-10 20:14:24', 540, 'Explicabo voluptatibus qui ut doloremque sunt sint ullam. Et nulla magni provident sit assumenda perspiciatis. Molestias aut eius eveniet tenetur.'),
	(302, 147, 11, '2020-04-06 20:28:41', '2019-10-29 09:58:18', 216, 'Doloribus voluptatem cum qui rerum eligendi quisquam. Quae eligendi dolores porro et. Accusamus qui est corrupti inventore ut officia est qui. Dolor laborum cupiditate dolor deleniti officiis esse non nostrum. Inventore est sit quaerat sint veniam.'),
	(303, 152, 11, '2020-03-12 16:18:42', '2020-04-22 22:36:07', 324, 'Expedita nostrum earum qui rerum odit. Quis quia sit perspiciatis ea consequatur. Ullam totam officiis dolorum quia quia vel. Sequi in ab officia sint et rerum.'),
	(304, 150, 11, '2020-01-23 13:43:37', '2020-02-28 21:26:24', 864, 'Non quia ducimus voluptatem rem veniam aliquam. Perferendis laudantium et quisquam et. Aliquid voluptas nostrum quam assumenda fuga ratione. Maxime est aut sequi porro.'),
	(305, 152, 12, '2020-04-15 22:08:21', '2020-04-06 16:55:56', 721, 'Delectus repudiandae laudantium praesentium iste qui facere. Labore facere possimus sapiente tempora.'),
	(306, 152, 12, '2020-04-20 10:19:39', '2020-04-13 01:07:39', 103, 'Cumque excepturi est ad. Fugiat ut amet vel nesciunt voluptas pariatur vel. Repellendus facere unde ut corporis inventore ab. Voluptatem architecto quia nisi et dolores sed consectetur.'),
	(307, 148, 13, '2020-02-07 19:40:43', '2020-03-01 10:14:32', 1089, 'Impedit nobis eum et dicta porro et. Amet libero consequatur unde error. Veniam voluptas sint dolor.'),
	(308, 146, 13, '2020-02-22 19:23:48', '2020-04-11 23:35:55', 121, 'Reprehenderit eligendi voluptatibus animi et aliquam sed quia. Sed impedit suscipit laborum delectus quasi sed omnis. Dolor exercitationem quis ut. Eum quasi ut possimus eaque nulla voluptatibus natus quibusdam.'),
	(309, 149, 13, '2020-03-27 06:27:07', '2019-11-17 22:46:47', 242, 'Ut nesciunt nam natus quo. Quas possimus itaque ut excepturi et magnam occaecati saepe. Sed voluptatem quia dolores est. Nulla esse sed ipsam eius et.'),
	(310, 145, 14, '2020-03-16 09:35:47', '2020-02-16 16:33:32', 1089, 'Ad ut doloremque ut excepturi ipsa rerum. Quod quia et cum sapiente facere. Itaque voluptatem adipisci vel magni. Commodi enim reiciendis omnis soluta rem et omnis. Rem quo neque vel similique.'),
	(311, 149, 14, '2020-04-21 22:11:19', '2020-01-23 04:29:38', 121, 'Ipsa veniam illo ad veritatis enim consequuntur rem quo. Qui illo consequatur aperiam reiciendis rem aspernatur. Nisi quod sit ducimus ut laboriosam sunt. Sed quam qui sed autem. Est dolor minus pariatur ad.'),
	(312, 151, 15, '2020-04-18 16:18:45', '2019-12-06 21:39:37', 716, 'Quia iste velit aut inventore. Dolorum dolores eaque incidunt ut consequatur et odit. Provident et nihil autem eum et commodi enim. Soluta amet debitis reprehenderit porro quis.'),
	(313, 152, 16, '2020-01-31 15:40:00', '2020-02-23 01:33:52', 702, 'Qui sit excepturi esse qui. Dolores hic voluptas illo molestiae.'),
	(314, 143, 16, '2020-02-08 13:14:25', '2020-01-09 07:50:49', 78, 'Ea id minus enim nam. Eos id ex voluptas et ut aspernatur quo. Corrupti voluptatem voluptas quibusdam vel.'),
	(315, 146, 16, '2020-03-06 20:16:44', '2020-02-17 09:36:02', 546, 'Aperiam quia qui consectetur id. Rerum ipsam voluptatem corporis sed enim libero velit. Et aut ipsa aspernatur temporibus et excepturi magnam. Quam id dicta inventore inventore non voluptatum illum est.'),
	(316, 148, 17, '2020-01-31 01:33:17', '2019-11-14 03:09:22', 68, 'Voluptatibus sed facilis consequatur iure a veritatis incidunt. Reprehenderit animi voluptate rerum assumenda inventore. Sed eum minus vero necessitatibus et. A et qui deserunt.'),
	(317, 152, 17, '2020-01-24 02:55:07', '2019-12-27 21:28:44', 272, 'Eum ut doloribus aspernatur rem. Modi animi voluptas voluptatem. Est fuga nesciunt sit illo dolor. Voluptate dolores quia dolorem quaerat aspernatur laudantium.'),
	(318, 149, 17, '2020-02-05 18:10:12', '2020-02-16 06:20:46', 204, 'Fuga voluptas quam placeat aspernatur autem. Quia hic hic eos dolore quis rerum. Provident similique voluptatem sit earum.'),
	(319, 148, 17, '2020-02-05 12:19:36', '2020-04-20 16:05:02', 272, 'Sed amet magni adipisci itaque ea. Dolorem laudantium dolorem officiis dignissimos accusamus architecto. Et ipsum nam dolorem molestiae.'),
	(320, 146, 17, '2020-04-11 00:14:28', '2020-02-29 19:28:53', 204, 'Cum laboriosam quo delectus temporibus culpa. Rerum dicta est non ullam. Atque nobis ut accusantium. Illum fugit eius laborum ut vel.'),
	(321, 143, 17, '2020-02-06 09:12:02', '2020-03-17 22:40:31', 68, 'Illo occaecati provident ipsam. Sunt nesciunt qui ut et pariatur ut. Dolores eos officiis quibusdam officiis quod ipsum.'),
	(322, 145, 17, '2020-01-24 03:13:52', '2020-02-16 14:22:01', 612, 'Iure non expedita et. Assumenda nobis consequuntur aut dolor. Ab debitis vitae blanditiis neque.'),
	(323, 147, 18, '2020-01-31 17:57:23', '2020-02-06 02:09:44', 1312, 'Libero voluptatem aut deserunt dolores eligendi a quisquam consequuntur. Ea laboriosam sed dicta amet itaque ea. Officiis est temporibus ut commodi. Quis dolores facilis reprehenderit iure.'),
	(324, 144, 19, '2020-02-07 00:51:06', '2020-04-18 06:35:12', 725, 'At consequatur accusantium qui molestiae voluptate. Illo ut quo error quis. Sequi libero quia voluptatum autem et. Odit beatae modi vero eos sequi laboriosam corporis.'),
	(325, 149, 20, '2020-04-22 09:01:13', '2019-12-20 18:01:52', 488, 'Expedita quisquam rerum ea omnis fugit qui est. Et sequi mollitia repellat non exercitationem aut in. Tenetur soluta omnis ut officiis excepturi et dignissimos. Sint ratione consequatur est autem pariatur eos quia numquam. Praesentium rerum a qui nostrum in iure quaerat voluptatem.'),
	(326, 147, 21, '2020-02-17 07:26:21', '2020-04-17 16:11:33', 224, 'Est ipsum totam sit ipsam quaerat. Recusandae quaerat placeat voluptatem corrupti sit eius quos. Reprehenderit omnis nesciunt reiciendis odio voluptatibus praesentium.'),
	(327, 151, 21, '2020-04-18 11:24:19', '2020-02-23 20:09:10', 448, 'Quae in architecto cum est dolores saepe rerum. Voluptates voluptatem et alias nulla eos. Ipsam voluptatem suscipit nobis dolorem. Tenetur ipsa quas aliquid explicabo.'),
	(328, 143, 21, '2020-02-26 01:13:35', '2019-10-29 02:08:48', 336, 'Omnis est molestias sit nihil explicabo sequi ratione eos. Molestiae voluptatum nisi vel non. Explicabo eveniet consectetur qui maxime ad molestiae.'),
	(329, 150, 22, '2020-03-14 17:08:27', '2019-12-23 16:00:57', 372, 'A et quia commodi. Eaque commodi id quisquam consectetur aut ea in. Est ex iusto non earum itaque. Sunt doloribus possimus eligendi omnis.'),
	(330, 151, 22, '2020-04-13 15:02:49', '2020-01-05 04:50:58', 496, 'Occaecati temporibus sit enim omnis aut. Recusandae ut ipsam ab sit nam. Distinctio suscipit cum corporis repellendus. Ratione in iure nulla voluptatum aut quia aut.'),
	(331, 149, 22, '2020-04-16 16:11:37', '2020-01-30 04:36:16', 310, 'Animi sit itaque autem sequi quod est. Blanditiis at animi laudantium. Ullam natus sit culpa cum. Voluptas dignissimos nihil dolores rerum optio velit omnis incidunt.'),
	(332, 144, 24, '2020-02-09 22:34:03', '2020-04-01 20:51:51', 561, 'Quis odit laborum excepturi sed dignissimos. Et et at rem ea et maiores omnis. Ex dolore et necessitatibus ut sit rem repellendus. Hic non ipsam laboriosam.'),
	(333, 147, 24, '2020-02-02 00:14:13', '2019-12-18 04:47:40', 561, 'Nihil officia sit nostrum. Commodi est dolores velit praesentium aut dignissimos. Debitis laudantium ratione eos corporis suscipit. Autem commodi placeat et explicabo.'),
	(334, 149, 24, '2020-02-09 01:10:57', '2020-03-14 06:49:49', 187, 'Officiis nihil dicta molestiae amet. Labore molestias dolor id qui est excepturi. Est enim voluptatem commodi unde sint fugit omnis.'),
	(335, 148, 24, '2020-03-31 15:05:14', '2020-04-01 21:15:34', 1496, 'Et odit voluptate non hic. Quis soluta impedit fuga ipsam rerum. Perferendis sit ipsum maxime numquam aspernatur. Nostrum aliquid hic quod.'),
	(336, 145, 24, '2020-03-26 15:17:27', '2019-12-23 22:14:25', 1309, 'Repellat sunt et aut et voluptatum reiciendis. Voluptatem possimus dolorem cum similique fugiat dolorem. Atque ex tempora ut nulla quis a velit. Molestiae culpa eius unde rerum est sunt.'),
	(337, 148, 25, '2020-02-09 15:33:00', '2019-12-18 03:25:32', 1314, 'Et adipisci nihil debitis porro quo beatae illum nihil. Pariatur cupiditate earum et et. Ab nobis voluptates id odit.'),
	(338, 146, 25, '2020-02-11 09:27:27', '2020-03-10 23:19:20', 1460, 'Sed aut cupiditate exercitationem officiis omnis unde sit. Aut sed praesentium magni adipisci aliquid earum mollitia. Itaque est excepturi sit aut dolor. Quidem quibusdam ut laborum laborum.'),
	(339, 151, 25, '2020-04-06 13:57:51', '2020-03-18 20:10:51', 584, 'Occaecati aut eveniet porro omnis sit omnis vitae ut. In aut aut nostrum. Incidunt tempora sit minus ut officia consequatur eum dolor.'),
	(340, 150, 26, '2020-02-22 06:14:43', '2019-12-17 17:13:26', 747, 'Dolorem commodi sequi necessitatibus qui. Accusantium quia dolores numquam illum neque et dolores. Rem qui velit qui est deserunt atque. Aut ea molestiae suscipit consectetur temporibus porro.'),
	(341, 149, 26, '2020-04-01 04:24:50', '2019-11-24 05:16:20', 498, 'Repellendus ut aut id. Est id facere commodi exercitationem. Ut dignissimos laudantium unde quia voluptas.'),
	(342, 146, 26, '2020-03-29 22:35:12', '2020-02-25 19:15:27', 830, 'Explicabo sint dignissimos nulla id suscipit ut. Sequi pariatur molestias architecto id at esse et. Ut voluptatum et fugiat sunt voluptas voluptatibus assumenda.'),
	(343, 144, 28, '2020-02-17 12:21:56', '2020-04-20 14:52:54', 625, 'Similique repellat ad illo qui. Doloremque quia aspernatur rerum atque aut aut maxime nobis. Labore vel recusandae in quae et nulla sint. Dignissimos rerum doloremque quas amet maxime.'),
	(344, 147, 29, '2020-03-18 13:10:04', '2020-01-19 04:04:57', 880, 'Nisi illum quis non porro praesentium sit perferendis. Animi molestiae iure sed nostrum. Eos recusandae quaerat repellendus aspernatur facere reprehenderit enim eligendi.'),
	(345, 148, 29, '2020-03-20 02:50:01', '2019-11-08 06:07:34', 264, 'Inventore officia velit deleniti culpa incidunt. Inventore quae ex sunt sequi debitis adipisci. Officia earum animi officiis accusamus ipsum quo dolorem. Natus aut molestias aliquam sit.'),
	(346, 151, 29, '2020-02-24 22:13:34', '2020-01-01 14:59:10', 88, 'Consequatur eaque architecto voluptatem cum et reiciendis modi. Illum sed aut culpa incidunt ducimus quas explicabo. Minima ipsum asperiores totam vel labore corporis omnis. Voluptatum cupiditate repellat ex quia.'),
	(347, 144, 30, '2020-02-05 10:11:45', '2020-02-25 23:55:13', 1152, 'Illo repellendus at ut asperiores. Corrupti sint magnam error tempore. Eum ad rem voluptatibus odit voluptatem dolores explicabo. Alias ad delectus accusamus minus rerum fuga.'),
	(348, 149, 30, '2020-02-08 18:41:31', '2020-04-06 01:51:31', 288, 'Nesciunt provident cumque accusantium aut quasi ipsam facere. Doloremque atque quisquam omnis aut ducimus. Ullam sequi qui maiores esse.'),
	(349, 152, 30, '2020-02-09 05:23:27', '2020-02-27 10:13:34', 864, 'Excepturi ut sint natus sed. Esse ut beatae ullam sit nobis esse a. Rerum temporibus labore architecto quia hic deleniti.'),
	(350, 142, 29, '2020-05-02 00:00:00', '2020-05-01 12:11:12', 88, 'Avez-vous l\'outillage nécessaire ?');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;

-- Listage de la structure de la table site. category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_64C19C1727ACA70` (`parent_id`),
  CONSTRAINT `FK_64C19C1727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table site.category : ~17 rows (environ)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `parent_id`, `title`) VALUES
	(20, NULL, 'Aide à domicile'),
	(21, NULL, 'Bricolage maison'),
	(22, NULL, 'Travaux et rénovation'),
	(23, NULL, 'Déménagement'),
	(24, NULL, 'Livraison'),
	(25, NULL, 'Plomberie'),
	(26, NULL, 'Eléctricité'),
	(27, NULL, 'Jardin et extérieur'),
	(28, NULL, 'Garde d\'enfants'),
	(29, NULL, 'Animaux'),
	(30, NULL, 'Cours particulier'),
	(31, NULL, 'Informatique'),
	(32, NULL, 'Mécanique'),
	(33, NULL, 'Mode, beauté et bien être'),
	(34, NULL, 'Organisation Evénements'),
	(35, NULL, 'Conseil, administration et comptabilité'),
	(36, NULL, 'Covoiturage'),
	(37, NULL, 'Autres');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Listage de la structure de la table site. comment
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `rating` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C4F34D596` (`ad_id`),
  KEY `IDX_9474526CF675F31B` (`author_id`),
  CONSTRAINT `FK_9474526C4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`),
  CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table site.comment : ~42 rows (environ)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`id`, `ad_id`, `author_id`, `created_at`, `rating`, `content`) VALUES
	(57, 1, 148, '2020-04-23 12:54:04', 2, 'Tempore quo itaque quidem ut laboriosam pariatur. Maiores odio aut ut recusandae. Libero ipsam ea eaque sed in ut facilis. Omnis ut ipsum quae aut.'),
	(58, 1, 150, '2020-04-23 12:54:04', 3, 'Minima repudiandae eaque possimus. Atque dolorem debitis numquam tempore eos nulla porro. Doloribus non numquam aliquam tenetur velit cumque optio assumenda.'),
	(59, 1, 148, '2020-04-23 12:54:04', 3, 'Dicta et voluptates sed aut eaque natus. Id soluta unde omnis rem commodi facilis. In rerum eaque sed officiis similique quos. Fugiat dolores vitae officia doloribus fuga.'),
	(60, 2, 149, '2020-04-23 12:54:04', 5, 'Rerum beatae quibusdam fugiat iste rem error et. Harum dolorem autem ipsam nobis doloremque distinctio. Consectetur omnis voluptas voluptas sed.'),
	(61, 2, 151, '2020-04-23 12:54:04', 5, 'Id ut nihil quibusdam omnis consequatur. Itaque numquam id eum est nihil nihil provident quo. Cumque voluptatem laboriosam blanditiis labore.'),
	(62, 5, 143, '2020-04-23 12:54:04', 3, 'Qui cumque excepturi quia accusamus. Voluptas sed dolores sed molestiae voluptatem dolores autem. Facilis ut molestiae possimus incidunt deserunt enim. Suscipit culpa consequatur qui quis qui ratione.'),
	(63, 5, 143, '2020-04-23 12:54:04', 2, 'Molestias eum pariatur maxime fuga modi. Soluta sapiente quas rem repudiandae. Labore recusandae explicabo debitis numquam distinctio. Sint iusto iure modi voluptatum repellendus dolore totam.'),
	(64, 5, 149, '2020-04-23 12:54:04', 5, 'At ducimus itaque ullam incidunt qui consequatur tenetur necessitatibus. Quasi voluptatem delectus rerum soluta. A non temporibus hic qui numquam pariatur quibusdam officiis. Cum eos non consequuntur minima unde dolores quae.'),
	(65, 7, 148, '2020-04-23 12:54:04', 1, 'Unde consequuntur veniam est quia laudantium exercitationem. Dolore eaque neque et pariatur et sit aspernatur. Adipisci est ut excepturi est animi. Voluptate ad unde est ab. Id sit ut quasi assumenda.'),
	(66, 9, 150, '2020-04-23 12:54:04', 1, 'Accusantium similique et impedit nostrum earum expedita. Est voluptatem ducimus nam quo ut et. Est voluptas aut blanditiis laboriosam voluptatem ullam facere.'),
	(67, 10, 150, '2020-04-23 12:54:04', 2, 'Et dolorem aut a ipsum odit. Sed fugit architecto omnis pariatur. Quis itaque eos tenetur recusandae.'),
	(68, 10, 152, '2020-04-23 12:54:04', 2, 'Dolorem voluptate non et beatae voluptas vero. Deleniti animi ea inventore alias. Commodi cum voluptatibus hic expedita rerum vel aperiam.'),
	(69, 10, 146, '2020-04-23 12:54:04', 1, 'Voluptatem enim perferendis omnis quis iusto. Amet et dicta voluptatibus veritatis eveniet non. Voluptatem beatae unde quos voluptates impedit. Mollitia nisi fugit est ut.'),
	(70, 11, 143, '2020-04-23 12:54:04', 4, 'Ut iste nisi officiis porro necessitatibus. Nesciunt commodi aut vel assumenda iusto omnis numquam. Libero eveniet aut distinctio ullam. Dicta totam consequatur quam.'),
	(71, 11, 150, '2020-04-23 12:54:04', 4, 'At consectetur error sunt nostrum expedita quis atque. Est optio dolorem quis ut atque aperiam. Deleniti eveniet praesentium voluptatum assumenda.'),
	(72, 11, 152, '2020-04-23 12:54:04', 3, 'Ut omnis ullam et qui iste. Et id blanditiis repellendus modi. Aspernatur quo itaque quibusdam error blanditiis consequatur aut. Quae voluptates commodi sed sit veniam. Ut accusamus molestiae qui numquam accusantium.'),
	(73, 12, 152, '2020-04-23 12:54:04', 1, 'Temporibus ut odit consequatur tempore quia natus. Vel voluptatum quibusdam alias fuga enim enim debitis vel. Aut libero atque nisi quos quae voluptatem. Et sed consequatur sint reprehenderit rerum voluptates sed.'),
	(74, 13, 148, '2020-04-23 12:54:04', 2, 'Velit a rem id ut aut temporibus nesciunt voluptates. Quia praesentium et aut asperiores. Eveniet illum ex tempore aut. Dicta dolorum non neque aut sed dicta cupiditate. Exercitationem quod est est ut error consequatur praesentium.'),
	(75, 14, 145, '2020-04-23 12:54:04', 2, 'Provident voluptatum harum debitis. Rerum ex sequi explicabo autem quia quos. Eligendi ullam sit amet consequatur aliquam. Reprehenderit praesentium qui pariatur ex officiis quasi.'),
	(76, 14, 149, '2020-04-23 12:54:04', 1, 'Qui sunt magni iusto. Aliquam laudantium quibusdam sunt corporis earum in ut ipsam. Et quas itaque eos illum. Incidunt vel excepturi voluptatem.'),
	(77, 15, 151, '2020-04-23 12:54:04', 3, 'At velit animi dicta velit cumque ea sequi fugiat. Dicta perferendis dolorem eligendi eos sunt animi tenetur. Omnis sed perferendis reprehenderit.'),
	(78, 16, 152, '2020-04-23 12:54:04', 3, 'Autem excepturi possimus dolor. Error odit veritatis libero sunt accusantium voluptatem corrupti perferendis. Eaque totam aut sapiente laudantium. Sed nihil doloribus quibusdam perspiciatis quasi autem consequatur.'),
	(79, 17, 148, '2020-04-23 12:54:04', 5, 'Sed quia eos non dolor. Eos incidunt reprehenderit quidem quibusdam dolorem. Et beatae rerum a quis modi eveniet molestiae.'),
	(80, 17, 148, '2020-04-23 12:54:04', 2, 'Delectus earum velit et dolorem est at. Qui architecto dolores labore enim maxime. Qui ut sit voluptatem cum.'),
	(81, 18, 147, '2020-04-23 12:54:04', 1, 'Voluptatum culpa sequi dolore perferendis at. Et dignissimos rerum iusto dolorem temporibus est dolor. Necessitatibus ex ab et autem voluptatibus autem.'),
	(82, 19, 144, '2020-04-23 12:54:04', 1, 'Mollitia voluptatem nihil veniam velit ut aut. Aut maiores consequatur odio aut. A porro occaecati aut cumque. Ipsam suscipit est neque vitae.'),
	(83, 20, 149, '2020-04-23 12:54:04', 1, 'Necessitatibus quia asperiores in. Quas molestias sapiente vel quia. Reiciendis aut nemo dicta veniam dolorem in veritatis. Vel voluptas dolor et pariatur. Et animi facere nihil vel.'),
	(84, 21, 151, '2020-04-23 12:54:04', 3, 'Et est sit quis et ducimus aut natus. Voluptas omnis ut enim quo quasi.'),
	(85, 22, 150, '2020-04-23 12:54:04', 2, 'Corrupti quam pariatur voluptas maiores ea maiores possimus. Maxime asperiores facilis et quidem laborum. Et dolores molestiae et earum tenetur quaerat ipsam.'),
	(86, 22, 151, '2020-04-23 12:54:04', 3, 'Consequatur deleniti repellendus aut id voluptate. Explicabo maxime molestias eveniet corporis error. Suscipit voluptates rerum et numquam adipisci aut ut.'),
	(87, 24, 147, '2020-04-23 12:54:04', 4, 'Quis excepturi iste exercitationem facilis quas commodi ad. Autem explicabo eos optio eos in eum. Veritatis sint eaque odio inventore et nemo.'),
	(88, 24, 149, '2020-04-23 12:54:04', 5, 'Tenetur excepturi vel cumque qui. Labore adipisci incidunt cupiditate. Ipsa libero recusandae est rerum fugit iste.'),
	(89, 24, 145, '2020-04-23 12:54:04', 3, 'Est labore inventore fuga ipsum velit ipsum omnis consequatur. Ipsam aut eos earum omnis laboriosam. Consequuntur est consequatur est. Pariatur et at sunt iusto.'),
	(90, 25, 148, '2020-04-23 12:54:04', 2, 'Debitis aut dignissimos in dicta placeat. Et quod quasi eum. Laudantium assumenda et accusamus voluptatem ipsa ullam. Corporis fugiat sapiente qui sed molestiae dolorem natus ratione.'),
	(91, 25, 146, '2020-04-23 12:54:04', 4, 'Facere temporibus molestiae qui veniam deserunt. Temporibus voluptas nisi quibusdam quam eius. Exercitationem eaque itaque ipsum omnis vero illum quidem.'),
	(92, 25, 151, '2020-04-23 12:54:04', 2, 'Sit sequi autem ducimus qui eos et sint. Sed veritatis nostrum ut consectetur voluptatem quia. Cumque molestiae cupiditate eveniet dolor libero quis. A quas assumenda ut enim et.'),
	(93, 26, 149, '2020-04-23 12:54:04', 1, 'Quisquam quo aut qui optio aut dolorem. Eos nesciunt qui ut sint eum qui. Eveniet excepturi ut sequi quas occaecati rerum. Vero aspernatur molestiae eum esse reiciendis impedit.'),
	(94, 26, 146, '2020-04-23 12:54:04', 4, 'Labore quasi quibusdam aspernatur velit. Nulla blanditiis incidunt sed aspernatur sit voluptatem. Veniam dolor quia quis. Modi consequuntur voluptates quae quia.'),
	(95, 29, 147, '2020-04-23 12:54:04', 2, 'Sed non molestiae et repudiandae ipsum numquam. Ea harum sed sequi repellendus esse veritatis ut.'),
	(96, 29, 148, '2020-04-23 12:54:04', 5, 'Dolorem repellendus placeat sed aut nisi. Ut a quia debitis cum. Beatae aliquid aspernatur nisi placeat optio sed. Nisi autem deleniti saepe nam nulla cumque iste.'),
	(97, 30, 149, '2020-04-23 12:54:04', 3, 'Harum architecto qui numquam fugit rerum. Adipisci nemo tenetur eaque minima ut voluptas. Ullam tempore velit accusantium.');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Listage de la structure de la table site. migration_versions
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table site.migration_versions : ~23 rows (environ)
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
	('20200226105708', '2020-02-26 11:02:20'),
	('20200226113916', '2020-02-26 11:39:28'),
	('20200305111112', '2020-03-05 11:11:39'),
	('20200305111627', '2020-03-05 11:19:01'),
	('20200305114201', '2020-03-05 11:42:13'),
	('20200309103552', '2020-03-09 10:36:40'),
	('20200310115918', '2020-03-10 11:59:26'),
	('20200310132231', '2020-03-10 13:22:42'),
	('20200311094545', '2020-03-11 09:46:01'),
	('20200312103536', '2020-03-12 10:35:43'),
	('20200312113926', '2020-03-12 11:39:33'),
	('20200402111645', '2020-04-02 11:17:14'),
	('20200408111738', '2020-04-08 11:17:49'),
	('20200408121257', '2020-04-08 12:14:02'),
	('20200408122009', '2020-04-08 12:20:15'),
	('20200408122526', '2020-04-08 12:25:32'),
	('20200409113619', '2020-04-09 11:37:13'),
	('20200409114918', '2020-04-09 11:49:58'),
	('20200409120925', '2020-04-09 12:09:48'),
	('20200409125212', '2020-04-09 12:52:27'),
	('20200422120608', '2020-04-22 12:06:33'),
	('20200422123859', '2020-04-22 12:40:56'),
	('20200423125119', '2020-04-23 12:53:04');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;

-- Listage de la structure de la table site. product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table site.product : ~2 rows (environ)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `title`, `image`, `price`) VALUES
	(4, 'Offre n° 1', 'https://cdn.pixabay.com/photo/2015/10/03/20/47/piggy-bank-970340_960_720.jpg', 19.99),
	(5, 'Offre n° 2', 'https://cdn.pixabay.com/photo/2015/01/19/23/18/money-605075_960_720.jpg', 49.99),
	(6, 'Offre n° 3', 'https://cdn.pixabay.com/photo/2015/10/30/10/03/gold-1013618_960_720.jpg', 99.99);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Listage de la structure de la table site. role
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table site.role : ~0 rows (environ)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `title`) VALUES
	(5, 'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Listage de la structure de la table site. role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `IDX_332CA4DDD60322AC` (`role_id`),
  KEY `IDX_332CA4DDA76ED395` (`user_id`),
  CONSTRAINT `FK_332CA4DDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_332CA4DDD60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table site.role_user : ~0 rows (environ)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
	(5, 142);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Listage de la structure de la table site. user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table site.user : ~11 rows (environ)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `picture`, `hash`, `introduction`, `description`, `slug`) VALUES
	(142, 'Dez', 'Stevens', 'stevens@sfr.fr', 'https://vignette.wikia.nocookie.net/librerte/images/4/44/1200x630bb.jpg/revision/latest/scale-to-width-down/310?cb=20190904083842&path-prefix=fr', '$2y$13$k0aEpeoXkbSYQN9jwcoK9O7llsC7m.q4/NNs2.cPl/KG1wvG7cC7m', 'Omnis ea similique eos placeat velit.', '<p>Non excepturi voluptate culpa harum non nihil ad. Corrupti cum vel odit in. Nemo a commodi ut quisquam qui adipisci aspernatur.</p><p>Eveniet sapiente nostrum veniam error itaque fugit odit sed. Magni voluptatem aperiam illum quia ipsum. Omnis et cum blanditiis molestias laudantium. Vel amet distinctio nostrum velit quo tempora ut fugit.</p><p>Voluptate provident eveniet consectetur nemo at mollitia. Temporibus dolores dignissimos qui perspiciatis. Minus perspiciatis harum occaecati omnis. Et mollitia et neque corporis voluptatem accusantium. Qui similique quos accusantium quo.</p>', 'dez-stevens'),
	(143, 'Cassandre', 'Bogan', 'lavon96@yahoo.com', 'https://randomuser.me/api/portraits/men/99.jpg', '$2y$13$Sm8ehUodvsl7QEAD7pebL.PZLeul0wISYjvPhTbd41BD0xQzt/6nC', 'Quo eos aut fugiat.', '<p>Asperiores est vel quaerat. Aut pariatur cum ut delectus id libero dignissimos. Nostrum corrupti sint mollitia eos dolor velit. Quas aperiam dolore nihil autem ipsam facere quasi.</p><p>Qui quisquam iste doloribus cum natus soluta minus. Sed dolores sunt ut similique vel illum ratione excepturi. Non velit minus placeat est rem est consequatur.</p><p>Iure quo illo qui consequuntur enim ducimus. Quos consequatur vel provident modi quia nihil cumque. Cum quia aut rem expedita voluptatibus.</p>', 'cassandre-bogan'),
	(144, 'Soledad', 'Zieme', 'kihn.mara@yahoo.com', 'https://randomuser.me/api/portraits/men/58.jpg', '$2y$13$dFCyXurzJYAFlnyjxJB6ZebAGngaqzHhvOCBXwnVduCWXXek7elJC', 'Corporis fugit voluptas illo est qui architecto.', '<p>Velit maiores officia quis facere veniam. Quod et est ea incidunt veniam voluptas reprehenderit veniam. Omnis porro omnis aliquam libero necessitatibus cum.</p><p>Non quos dolores velit tempora delectus dolor unde. Accusantium vel fugiat natus quae eaque. Tenetur id cum sed.</p><p>Sapiente hic nulla eligendi accusantium fuga ut est. Cum harum harum culpa accusantium harum eos. Sed ut corrupti nostrum tempore enim aut dicta repellat.</p>', 'soledad-zieme'),
	(145, 'Johathan', 'Smith', 'emmett.weber@ohara.org', 'https://randomuser.me/api/portraits/men/98.jpg', '$2y$13$XYP1hfhfgqWlex6xMKVyFevkn7xxW3S8hy.JEW/Ytnz95kA74R6T6', 'Architecto sequi et iusto.', '<p>Eum aperiam nam dolores rem natus aut. Sit non rerum quia. Ut in sequi qui quos dicta officiis. Non eos facere et aperiam. Numquam adipisci nostrum molestias rerum ut aut ab vero.</p><p>Perferendis quaerat eveniet dolor cupiditate corporis consequuntur. Aut sint nihil voluptas praesentium. Est dignissimos occaecati ut atque non. Porro ea laboriosam ea consequatur qui id sunt dolore.</p><p>Quaerat harum nesciunt aut autem consequatur repellendus corrupti qui. Recusandae doloremque quia numquam quasi voluptatem. Ut quis placeat explicabo veritatis quia. Tenetur vero quia est doloremque consectetur.</p>', 'johathan-smith'),
	(146, 'Abbigail', 'Powlowski', 'dtremblay@yahoo.com', 'https://randomuser.me/api/portraits/women/88.jpg', '$2y$13$5z1dsHneftOR8rhJQSQ.1eFfS4LxCQgPsD.eBGX0sxnWqOpcYd6y.', 'Ipsa quo modi minus eos temporibus qui.', '<p>Libero nemo magni non in omnis aperiam. Repellat ex voluptatum non explicabo aut.</p><p>Qui ut quos officiis pariatur. Numquam illo dolor doloremque ut deserunt voluptatum ea. Unde voluptatum nemo tempore expedita et laudantium.</p><p>Aut eos ad nisi nam non et maxime. Nam dolor reprehenderit id similique reprehenderit ut iusto. Architecto laudantium aut voluptatum laudantium vel.</p>', 'abbigail-powlowski'),
	(147, 'Jaclyn', 'Beier', 'oda.spinka@yahoo.com', 'https://randomuser.me/api/portraits/men/9.jpg', '$2y$13$5zgxqr6EuKgWZu05GHy13ekVerRcAOh7Fs3/lGXVNCVp6tCE3Dml.', 'Ea adipisci sunt reiciendis exercitationem.', '<p>Quae earum illo ad facilis eum ex aut. Odit ea rerum quisquam sunt iste non enim debitis. Numquam vero ut neque officia non nostrum.</p><p>Repellendus accusantium voluptas et libero et commodi. Facilis necessitatibus dolor excepturi. Occaecati voluptate sed placeat autem voluptas ipsam. Minima vel hic voluptas non commodi amet.</p><p>Omnis perferendis inventore eius asperiores rerum. Tempore consequatur sed hic non laudantium non inventore. Dolorem at consequatur et provident excepturi aliquam.</p>', 'jaclyn-beier'),
	(148, 'Gage', 'Morar', 'jacques52@hotmail.com', 'https://randomuser.me/api/portraits/men/99.jpg', '$2y$13$5nbau/7NG3ANXvZ2RufRReTDypRv6qWgpx2ku3z/FBx6lMQ1lZI9u', 'Autem ab aut voluptatem sapiente aut tempora dolorum.', '<p>Excepturi ut sequi asperiores odio. Inventore quasi molestiae amet et ad dicta. Quis pariatur maxime quod esse. Qui inventore similique qui ducimus repellat fugit.</p><p>Consequatur tempora aliquid beatae excepturi magnam. Et dolor dolores soluta molestiae totam. Fuga blanditiis dolorem dicta quisquam quia quos. Est qui voluptate quibusdam magni corrupti voluptas illo.</p><p>Nostrum assumenda earum quisquam ullam ipsa. Dolores culpa rerum possimus sit molestiae molestiae debitis nihil. Molestiae est eum laboriosam alias. Ab doloribus esse in sequi.</p>', 'gage-morar'),
	(149, 'Landen', 'Legros', 'heidenreich.cristian@hotmail.com', 'https://randomuser.me/api/portraits/men/30.jpg', '$2y$13$bd9U20Rxqm0iHOWkJtWF1.LbhsZ5kF99egvNvMTXqOaow6eS1e.qK', 'Porro corporis rem est.', '<p>Excepturi provident cupiditate asperiores fuga. Non voluptatum nihil dolores quod sit. Qui velit impedit impedit dolorum quas fugiat. Ullam esse qui et eveniet.</p><p>Iure animi culpa ipsa sed deleniti. Amet sint optio officiis sunt. Consequatur expedita ipsam possimus dolore.</p><p>Unde eius sit consequuntur sit est aspernatur nam. Cupiditate ea ea molestiae ea voluptatem molestias quidem. Et ipsum officiis qui qui reprehenderit. Vel aut est quos non sapiente.</p>', 'landen-legros'),
	(150, 'Callie', 'Lynch', 'kassulke.andreane@gmail.com', 'https://randomuser.me/api/portraits/women/36.jpg', '$2y$13$TOWJsqjHRMjjiP0SLN16luFS87rWsuVI2PHeFmZh4bO1sYveC5NFe', 'Id suscipit laboriosam accusamus.', '<p>Autem harum soluta est nesciunt. Ducimus architecto molestiae incidunt. Pariatur deserunt at modi perferendis.</p><p>Possimus incidunt a placeat velit quibusdam. Aut consequatur accusamus et error non. Non maxime est earum sint voluptatem ducimus repellat.</p><p>Dolor molestiae reiciendis reprehenderit doloremque accusantium. Non deleniti dolore tempore enim natus. Rem rerum molestiae eum praesentium iste laudantium delectus.</p>', 'callie-lynch'),
	(151, 'Ernest', 'Wunsch', 'jules.robel@yahoo.com', 'https://randomuser.me/api/portraits/women/11.jpg', '$2y$13$dUjrEXhKwD3X2XqV84ODvervS96jK7BIQ7.4EV6p9vIhIiwdnISSC', 'Quisquam hic maiores nobis voluptate id quo ut qui.', '<p>Distinctio veritatis repellat est doloribus. Laborum aut placeat nobis. Laudantium hic placeat dolorem debitis a. Id tempore ipsum quae dolorum deserunt sequi esse assumenda.</p><p>Voluptas omnis impedit incidunt odit. Et omnis aut tenetur fugit voluptates. Quas quis sint aut. Necessitatibus ullam repellat animi et quo laboriosam sit.</p><p>Ex velit repudiandae ut quis. Nemo praesentium omnis impedit. Laboriosam inventore veritatis ex. Consequuntur soluta ratione est.</p>', 'ernest-wunsch'),
	(152, 'Estelle', 'Hodkiewicz', 'kellen.goodwin@hotmail.com', 'https://randomuser.me/api/portraits/women/6.jpg', '$2y$13$KazKoqVok5uJSjJNIw6yK.3hYRF/sihVnRtuAjWq1F3wVnv45KXu6', 'Sunt impedit et pariatur hic rerum a.', '<p>Distinctio voluptatem voluptas blanditiis et omnis. Sapiente officiis est officiis magnam consequatur quos quia aliquid. Dolor earum voluptatem id et voluptatem aliquid. Animi perspiciatis libero dolorum doloremque.</p><p>Vitae quae et et qui sed quo. Error cum aut ducimus necessitatibus quae voluptas. Beatae aspernatur enim distinctio molestias. Soluta ipsum reprehenderit enim ea molestiae qui. Et dolore quibusdam eum aut recusandae occaecati.</p><p>Aperiam debitis labore sint molestiae tempore quidem tenetur. Voluptates deleniti dolores architecto repellat qui sint culpa. Et velit eum aut minus similique ea quod. Cupiditate velit dolorem ut cupiditate deserunt sequi fuga.</p>', 'estelle-hodkiewicz'),
	(153, 'Centre', 'Afpa', 'afpa@afpa.fr', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Logo_Afpa.jpg/220px-Logo_Afpa.jpg', '$2y$13$bu1/YRDtbDt8eHI5eHybBeoYvYq.mNH93UqUdgKeeoltW30dAO2YO', 'ceci est une introduction', 'ceci est une description je modifie mes informations\r\nceci est une description je modifie mes informations', 'centre-afpa');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
