/*
Navicat MySQL Data Transfer

Source Server         : homestead
Source Server Version : 80026
Source Host           : 192.168.10.10:3306
Source Database       : larabbs

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2023-11-20 18:33:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `post_count` int NOT NULL DEFAULT '0' COMMENT '帖子数',
  PRIMARY KEY (`id`),
  KEY `categories_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '分享', '分享创造，分享发现', '0');
INSERT INTO `categories` VALUES ('2', '教程', '开发技巧、推荐扩展包等', '0');
INSERT INTO `categories` VALUES ('3', '问答', '请保持友善，互帮互助', '0');
INSERT INTO `categories` VALUES ('4', '公告', '站点公告', '0');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('49', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('65', '2014_10_12_100000_create_password_resets_table', '2');
INSERT INTO `migrations` VALUES ('66', '2023_11_18_140338_add_avatar_and_introduction_to_users_table', '2');
INSERT INTO `migrations` VALUES ('67', '2023_11_19_153034_create_categories_table', '2');
INSERT INTO `migrations` VALUES ('68', '2023_11_19_160518_seed_categories_data', '2');
INSERT INTO `migrations` VALUES ('69', '2023_11_19_161454_create_topics_table', '2');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `reply_count` int unsigned NOT NULL DEFAULT '0',
  `view_count` int unsigned NOT NULL DEFAULT '0',
  `last_reply_user_id` int unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topics_title_index` (`title`),
  KEY `topics_user_id_index` (`user_id`),
  KEY `topics_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES ('1', 'Architecto temporibus est qui et nihil aut.', 'Non ex dolor porro officiis voluptatem. Harum aliquam illo rem quae.', '26', '1', '0', '0', '0', '0', 'Architecto temporibus est qui et nihil aut.', null, '2023-11-06 11:57:08', '2023-11-11 14:22:32');
INSERT INTO `topics` VALUES ('2', 'Non beatae et aut rerum.', 'Rerum ullam adipisci sed accusamus incidunt neque. Nulla repellat voluptate ut voluptatum molestiae facere earum.', '8', '4', '0', '0', '0', '0', 'Non beatae et aut rerum.', null, '2023-10-31 12:46:52', '2023-11-05 20:30:14');
INSERT INTO `topics` VALUES ('3', 'Laudantium iste delectus voluptas eligendi.', 'Consequuntur voluptatum numquam ut autem nulla aliquam. Ut dolore assumenda ut. Ducimus et qui vero doloremque. Omnis nihil atque libero enim. Animi sunt repellat in excepturi.', '23', '1', '0', '0', '0', '0', 'Laudantium iste delectus voluptas eligendi.', null, '2023-10-23 22:18:23', '2023-10-26 10:33:06');
INSERT INTO `topics` VALUES ('4', 'Qui dignissimos dolor dolorem et similique voluptas quae eius.', 'Quod temporibus dolores deserunt quidem illo ex. Et recusandae occaecati quasi voluptates nihil alias. Ipsa voluptas explicabo praesentium temporibus. Odit et fuga commodi molestiae quam.', '27', '1', '0', '0', '0', '0', 'Qui dignissimos dolor dolorem et similique voluptas quae eius.', null, '2023-10-22 15:55:16', '2023-10-28 08:51:25');
INSERT INTO `topics` VALUES ('5', 'Placeat amet error molestiae fuga odit repellendus necessitatibus.', 'Odit quia consequatur expedita blanditiis molestiae distinctio laborum. Quo inventore cum ab nobis qui qui in est. Rerum quia beatae repudiandae tempora. Ab minima ut praesentium.', '31', '3', '0', '0', '0', '0', 'Placeat amet error molestiae fuga odit repellendus necessitatibus.', null, '2023-10-28 22:58:00', '2023-11-14 09:40:48');
INSERT INTO `topics` VALUES ('6', 'Non architecto hic vitae tenetur est.', 'Aut voluptatum qui hic assumenda accusantium dolorem. Delectus quisquam et quod beatae expedita et. Voluptate et esse aperiam praesentium perferendis.', '2', '3', '0', '0', '0', '0', 'Non architecto hic vitae tenetur est.', null, '2023-10-30 00:24:22', '2023-11-18 07:27:35');
INSERT INTO `topics` VALUES ('7', 'Culpa unde ducimus autem voluptatum minima.', 'Reprehenderit quia exercitationem voluptatem officiis facere. Ipsum ullam ea ullam qui. Consectetur officiis commodi consequuntur corrupti sit. Ut totam odio quis.', '31', '1', '0', '0', '0', '0', 'Culpa unde ducimus autem voluptatum minima.', null, '2023-10-27 21:57:04', '2023-11-15 18:37:50');
INSERT INTO `topics` VALUES ('8', 'Sed magnam in et facilis.', 'Quis doloribus incidunt natus sit quibusdam. Et aspernatur tempora nihil ut. At fugit error nesciunt qui. Veniam eos non veritatis aperiam.', '22', '4', '0', '0', '0', '0', 'Sed magnam in et facilis.', null, '2023-11-06 08:10:11', '2023-11-07 23:15:14');
INSERT INTO `topics` VALUES ('9', 'Eos perspiciatis voluptatem mollitia quis quisquam sed architecto.', 'Dolores maiores sit nihil ex nesciunt magnam voluptate. Aut deleniti veniam iusto omnis. Sit officia alias officia pariatur.', '22', '4', '0', '0', '0', '0', 'Eos perspiciatis voluptatem mollitia quis quisquam sed architecto.', null, '2023-10-28 12:48:56', '2023-10-30 12:27:29');
INSERT INTO `topics` VALUES ('10', 'Expedita architecto nesciunt minima quia.', 'Dolores dolorum vero ut ut. Sit nihil debitis commodi dicta soluta velit voluptatem. Nemo voluptas illum nihil voluptates porro voluptas. In cupiditate qui rerum corrupti.', '17', '3', '0', '0', '0', '0', 'Expedita architecto nesciunt minima quia.', null, '2023-11-02 11:12:48', '2023-11-09 01:05:49');
INSERT INTO `topics` VALUES ('11', 'Aut tempora consequatur eius qui impedit error.', 'Aspernatur rerum repellat at dolor corporis dolores nihil. Nemo eum corrupti nisi repudiandae natus dolorem beatae. Deleniti laborum qui voluptatem ea dolor odio magnam.', '26', '3', '0', '0', '0', '0', 'Aut tempora consequatur eius qui impedit error.', null, '2023-10-25 16:07:37', '2023-11-12 21:45:08');
INSERT INTO `topics` VALUES ('12', 'Quia consequatur corrupti veritatis vero assumenda.', 'Omnis et est modi sit. Vel sed recusandae commodi consequatur. Cupiditate adipisci praesentium tenetur voluptatem.', '23', '4', '0', '0', '0', '0', 'Quia consequatur corrupti veritatis vero assumenda.', null, '2023-10-23 14:20:52', '2023-11-08 15:20:18');
INSERT INTO `topics` VALUES ('13', 'Quo quia et rerum corrupti praesentium veritatis ut.', 'Repellendus eveniet illo ipsam. Eius deserunt aliquam assumenda eaque aut dolores. Sapiente facere et harum totam aliquid doloribus reiciendis. Sit eos corrupti nam.', '24', '1', '0', '0', '0', '0', 'Quo quia et rerum corrupti praesentium veritatis ut.', null, '2023-10-23 04:08:12', '2023-10-25 10:21:19');
INSERT INTO `topics` VALUES ('14', 'Quis quam quis vero et reprehenderit alias.', 'Dolores sit repellat est tenetur dolor. Unde eum eligendi est voluptas et voluptas. Rerum ipsam qui maxime incidunt quis cupiditate tempora.', '12', '2', '0', '0', '0', '0', 'Quis quam quis vero et reprehenderit alias.', null, '2023-10-24 12:35:53', '2023-11-10 06:53:40');
INSERT INTO `topics` VALUES ('15', 'Veritatis rerum placeat sequi iusto et tempore earum.', 'Neque voluptate non similique ut dolorem nemo. Minima aut non error ea adipisci ducimus. Ab est nisi adipisci.', '26', '3', '0', '0', '0', '0', 'Veritatis rerum placeat sequi iusto et tempore earum.', null, '2023-10-25 11:59:36', '2023-11-15 17:03:58');
INSERT INTO `topics` VALUES ('16', 'Atque veniam alias nisi quis et impedit.', 'Exercitationem et et est dolores id. Nihil necessitatibus quas voluptas rerum eveniet rerum. Tempore impedit est vero aut pariatur repudiandae.', '5', '3', '0', '0', '0', '0', 'Atque veniam alias nisi quis et impedit.', null, '2023-10-21 21:18:10', '2023-10-23 03:46:07');
INSERT INTO `topics` VALUES ('17', 'Aspernatur cum hic iste voluptate tempora quia velit.', 'Aut et porro nostrum est. Totam magni natus eum voluptas ullam tempora. Minima eveniet ullam aliquid ex repellendus aut odit est. Ducimus autem aperiam nam reprehenderit repellendus fugiat.', '3', '2', '0', '0', '0', '0', 'Aspernatur cum hic iste voluptate tempora quia velit.', null, '2023-10-24 22:22:25', '2023-10-26 18:04:13');
INSERT INTO `topics` VALUES ('18', 'Itaque modi deleniti at itaque doloribus voluptates.', 'Necessitatibus illo sed optio minus voluptas consequatur minima nobis. Non optio consequatur exercitationem aut a. Ipsa quibusdam reiciendis et quo accusantium. Et sit autem assumenda.', '4', '1', '0', '0', '0', '0', 'Itaque modi deleniti at itaque doloribus voluptates.', null, '2023-10-22 01:01:30', '2023-11-19 09:19:18');
INSERT INTO `topics` VALUES ('19', 'Sit maiores quibusdam pariatur doloribus corporis beatae est.', 'Quidem omnis perspiciatis odit. In quis eaque eum error culpa. Praesentium dicta eum quia beatae laborum. Qui ea provident odit dignissimos aut molestiae iste.', '4', '2', '0', '0', '0', '0', 'Sit maiores quibusdam pariatur doloribus corporis beatae est.', null, '2023-11-05 21:47:32', '2023-11-19 13:20:16');
INSERT INTO `topics` VALUES ('20', 'A fugiat tenetur eaque incidunt ratione quaerat.', 'Totam autem blanditiis aut esse veritatis. Atque eos suscipit sunt esse. Quas dolores voluptatem ea accusantium quod iusto explicabo.', '11', '1', '0', '0', '0', '0', 'A fugiat tenetur eaque incidunt ratione quaerat.', null, '2023-10-21 11:06:34', '2023-10-21 20:01:25');
INSERT INTO `topics` VALUES ('21', 'Aliquam ad voluptate et alias distinctio voluptatem.', 'Optio modi rerum eum sit molestiae provident ut. Provident est voluptatem ab odio cupiditate eos qui. Quasi nihil adipisci consequuntur. Rerum quod fugit dicta est dolores aut.', '12', '4', '0', '0', '0', '0', 'Aliquam ad voluptate et alias distinctio voluptatem.', null, '2023-10-19 21:12:18', '2023-10-19 22:23:22');
INSERT INTO `topics` VALUES ('22', 'Rem in maxime enim voluptas illum.', 'Deserunt cupiditate adipisci quisquam omnis architecto quia. Minus nemo explicabo odio optio quia voluptatem.', '28', '2', '0', '0', '0', '0', 'Rem in maxime enim voluptas illum.', null, '2023-10-31 09:06:41', '2023-10-31 22:42:31');
INSERT INTO `topics` VALUES ('23', 'Architecto hic facilis esse repudiandae similique est ipsam repellendus.', 'Culpa dolor nihil non vel a. Aut quasi praesentium accusamus quia vel. Ratione aliquam ipsam vel.', '18', '1', '0', '0', '0', '0', 'Architecto hic facilis esse repudiandae similique est ipsam repellendus.', null, '2023-10-21 02:16:40', '2023-11-02 11:15:08');
INSERT INTO `topics` VALUES ('24', 'Cumque tempore dolor facilis consectetur consectetur aliquid.', 'Magni minus quae quibusdam voluptatibus distinctio veniam natus. Ipsa repudiandae a et amet quas. Necessitatibus aut id minus quia laudantium at. Amet ratione soluta dolor tempore enim dolor beatae.', '21', '4', '0', '0', '0', '0', 'Cumque tempore dolor facilis consectetur consectetur aliquid.', null, '2023-10-26 14:15:41', '2023-11-02 18:37:10');
INSERT INTO `topics` VALUES ('25', 'Eum iste vel soluta recusandae et eum sit.', 'Animi sequi at nulla eius distinctio autem. Ut quia qui perspiciatis occaecati voluptatibus.', '8', '3', '0', '0', '0', '0', 'Eum iste vel soluta recusandae et eum sit.', null, '2023-10-20 07:11:28', '2023-10-26 03:24:11');
INSERT INTO `topics` VALUES ('26', 'Quidem suscipit aut unde saepe aliquam quam cumque.', 'Quae et et qui velit autem. Est vero eum sed quis voluptatibus et quaerat quod. Sunt similique ut provident iusto recusandae vel. Dolorem non ut eaque praesentium eum.', '29', '4', '0', '0', '0', '0', 'Quidem suscipit aut unde saepe aliquam quam cumque.', null, '2023-10-27 05:48:53', '2023-11-18 10:34:16');
INSERT INTO `topics` VALUES ('27', 'Recusandae qui praesentium porro sint facilis quam non.', 'Rem velit facere quo veniam quos. Optio culpa possimus est beatae. Esse impedit atque voluptates mollitia quidem tenetur facilis culpa. Voluptas quis laborum quia sit.', '13', '4', '0', '0', '0', '0', 'Recusandae qui praesentium porro sint facilis quam non.', null, '2023-10-23 05:53:40', '2023-10-23 09:46:19');
INSERT INTO `topics` VALUES ('28', 'Aliquam doloribus quia illum ut.', 'Vero ex autem placeat veniam. Rerum repellat sed explicabo similique quaerat alias ab. Quia sit dolores omnis. Nam dolorem amet id omnis voluptatibus.', '23', '1', '0', '0', '0', '0', 'Aliquam doloribus quia illum ut.', null, '2023-11-04 08:13:52', '2023-11-05 23:27:22');
INSERT INTO `topics` VALUES ('29', 'Eaque corrupti quos praesentium debitis fugiat.', 'Eius ut vitae dolor esse eum fuga. Fugit enim ad eum reprehenderit dolorem. Officiis enim vel iure amet iusto id itaque dolores.', '26', '2', '0', '0', '0', '0', 'Eaque corrupti quos praesentium debitis fugiat.', null, '2023-10-24 00:23:58', '2023-11-17 07:09:26');
INSERT INTO `topics` VALUES ('30', 'Non voluptatem amet cupiditate quis quo.', 'Dicta non quis voluptas ipsum officia ipsa. Ipsa eveniet dolores et laborum iste. Molestias et ducimus cumque quaerat error voluptatem ut.', '9', '1', '0', '0', '0', '0', 'Non voluptatem amet cupiditate quis quo.', null, '2023-11-02 04:24:42', '2023-11-12 09:19:43');
INSERT INTO `topics` VALUES ('31', 'Debitis consequatur eos saepe ipsa.', 'Voluptatem dolores voluptates quisquam perferendis autem consequatur dolores. Tempore dolorem ut modi laboriosam. Saepe hic ut nam.', '17', '4', '0', '0', '0', '0', 'Debitis consequatur eos saepe ipsa.', null, '2023-10-22 20:05:56', '2023-11-02 05:44:40');
INSERT INTO `topics` VALUES ('32', 'Non magnam quaerat cumque nihil.', 'Aliquid suscipit libero quasi perferendis rerum. Delectus dolor culpa hic omnis deleniti quidem. Voluptatem adipisci et error praesentium vitae reprehenderit dolorum sint.', '11', '4', '0', '0', '0', '0', 'Non magnam quaerat cumque nihil.', null, '2023-10-31 09:39:45', '2023-11-19 09:55:36');
INSERT INTO `topics` VALUES ('33', 'Omnis molestiae ut hic asperiores hic.', 'Quos libero vero est et suscipit rerum quod. Commodi voluptas neque voluptas. Occaecati omnis et placeat. Accusamus est sint voluptas eaque velit.', '25', '4', '0', '0', '0', '0', 'Omnis molestiae ut hic asperiores hic.', null, '2023-11-01 00:08:15', '2023-11-02 15:06:55');
INSERT INTO `topics` VALUES ('34', 'Ratione illum commodi fugit explicabo vel inventore ut consequatur.', 'Tempora ullam fuga magni. Molestias maiores et voluptatem temporibus odit est. Placeat tempore ducimus distinctio consequatur.', '5', '3', '0', '0', '0', '0', 'Ratione illum commodi fugit explicabo vel inventore ut consequatur.', null, '2023-10-20 14:41:55', '2023-10-21 05:11:22');
INSERT INTO `topics` VALUES ('35', 'Tempore aut dignissimos non est beatae suscipit.', 'Sit non ut dolorem sed. Sunt occaecati nesciunt enim maxime dignissimos libero facere. Non voluptates sint enim ut quam earum quo.', '9', '3', '0', '0', '0', '0', 'Tempore aut dignissimos non est beatae suscipit.', null, '2023-10-26 08:02:45', '2023-11-16 06:17:33');
INSERT INTO `topics` VALUES ('36', 'Consequatur qui explicabo excepturi quisquam libero.', 'Et iure error nobis autem. Natus officiis beatae occaecati molestiae pariatur architecto aut perferendis. Iste sit quia magni vel molestias voluptas accusamus. Et maxime repellendus quo quod.', '8', '1', '0', '0', '0', '0', 'Consequatur qui explicabo excepturi quisquam libero.', null, '2023-11-06 13:06:33', '2023-11-07 03:22:33');
INSERT INTO `topics` VALUES ('37', 'Rerum voluptatem ea eius enim rerum temporibus mollitia.', 'Illum et rem distinctio id omnis. Accusantium quia nemo et quia. Quis modi distinctio alias asperiores voluptate at.', '23', '2', '0', '0', '0', '0', 'Rerum voluptatem ea eius enim rerum temporibus mollitia.', null, '2023-10-26 01:13:18', '2023-10-31 15:22:10');
INSERT INTO `topics` VALUES ('38', 'Suscipit voluptas est aspernatur delectus unde nam delectus.', 'Non voluptatem suscipit blanditiis est consequatur sed. Et accusamus nobis molestiae modi velit molestiae iusto. In et velit sit eligendi. Quis vel vitae et quam dolorem commodi.', '27', '4', '0', '0', '0', '0', 'Suscipit voluptas est aspernatur delectus unde nam delectus.', null, '2023-10-19 20:03:22', '2023-10-21 19:23:40');
INSERT INTO `topics` VALUES ('39', 'Repudiandae tenetur et aperiam et iste mollitia.', 'Quo possimus accusamus perspiciatis iure labore sint ut odio. Ex in et et quam. Omnis quia architecto explicabo et. Ut non voluptatibus dolorem.', '13', '2', '0', '0', '0', '0', 'Repudiandae tenetur et aperiam et iste mollitia.', null, '2023-11-04 10:45:17', '2023-11-19 03:59:25');
INSERT INTO `topics` VALUES ('40', 'Tenetur ipsa ipsa repellendus perferendis.', 'Animi animi dolores et aliquid illo id. Fugiat sed sit debitis autem optio alias. Id quidem ut quaerat sint.', '1', '2', '0', '0', '0', '0', 'Tenetur ipsa ipsa repellendus perferendis.', null, '2023-10-21 06:23:40', '2023-10-21 08:10:33');
INSERT INTO `topics` VALUES ('41', 'Odit libero natus consequuntur id quos molestias ut provident.', 'Cumque cupiditate inventore neque unde atque sunt. Sed omnis nulla aut minus quis. Numquam non est repellendus aliquid vero aut enim.', '19', '2', '0', '0', '0', '0', 'Odit libero natus consequuntur id quos molestias ut provident.', null, '2023-10-20 11:08:13', '2023-10-20 15:43:47');
INSERT INTO `topics` VALUES ('42', 'Culpa repellendus sit optio accusamus enim.', 'Quos sed vel soluta at qui nemo provident. Et maiores repellat debitis quam suscipit aut quibusdam. Eaque vel culpa molestiae. Reprehenderit distinctio quam commodi.', '2', '1', '0', '0', '0', '0', 'Culpa repellendus sit optio accusamus enim.', null, '2023-10-23 01:21:38', '2023-11-10 10:16:29');
INSERT INTO `topics` VALUES ('43', 'Molestias aut veritatis similique.', 'Tempore quis voluptates error animi quia. Odio doloribus similique cupiditate possimus libero amet et. Magni ut et ipsum nisi itaque.', '26', '1', '0', '0', '0', '0', 'Molestias aut veritatis similique.', null, '2023-10-30 13:47:17', '2023-11-03 14:59:47');
INSERT INTO `topics` VALUES ('44', 'Iure sunt dolorum dolorem reiciendis qui.', 'Itaque libero non quia aut. Adipisci magnam sunt aliquam architecto dignissimos. Necessitatibus cum illum error et sint. Nemo in labore ratione deleniti et laboriosam dolorem itaque.', '20', '2', '0', '0', '0', '0', 'Iure sunt dolorum dolorem reiciendis qui.', null, '2023-10-24 00:15:32', '2023-11-15 23:59:50');
INSERT INTO `topics` VALUES ('45', 'Labore et qui ea rem earum occaecati vitae.', 'Neque reiciendis occaecati ea adipisci. Necessitatibus minus et in corrupti ut. Dolores nihil qui dolor. Saepe odio inventore accusantium deleniti est.', '4', '4', '0', '0', '0', '0', 'Labore et qui ea rem earum occaecati vitae.', null, '2023-10-29 07:11:23', '2023-11-07 18:18:08');
INSERT INTO `topics` VALUES ('46', 'Architecto laudantium nemo vel quibusdam qui.', 'Sapiente commodi aperiam quo quo recusandae. Animi dicta nesciunt officiis deserunt natus. Cum ut mollitia quidem quibusdam est quibusdam dolor.', '17', '2', '0', '0', '0', '0', 'Architecto laudantium nemo vel quibusdam qui.', null, '2023-11-12 15:57:37', '2023-11-15 14:35:47');
INSERT INTO `topics` VALUES ('47', 'Vel vitae odio minus harum exercitationem earum aut.', 'Officia mollitia rerum nihil quidem. Nihil deleniti maxime molestiae consequatur et quod quia. Facilis eum asperiores sunt.', '22', '4', '0', '0', '0', '0', 'Vel vitae odio minus harum exercitationem earum aut.', null, '2023-10-30 04:08:53', '2023-10-31 07:49:39');
INSERT INTO `topics` VALUES ('48', 'Cupiditate omnis optio dolorem.', 'Aliquam veniam est tempora placeat et inventore placeat. Illo dolore temporibus ratione illo laudantium rem.', '2', '3', '0', '0', '0', '0', 'Cupiditate omnis optio dolorem.', null, '2023-10-22 23:03:52', '2023-10-26 20:22:28');
INSERT INTO `topics` VALUES ('49', 'Et quod adipisci et incidunt sint quos.', 'Nostrum excepturi inventore maxime non excepturi. Non tempore aut quia vel omnis.', '18', '4', '0', '0', '0', '0', 'Et quod adipisci et incidunt sint quos.', null, '2023-10-20 10:05:06', '2023-10-28 04:59:59');
INSERT INTO `topics` VALUES ('50', 'Iste id reiciendis facilis est deleniti quia.', 'Eius quia magni voluptatem voluptatum vel. Voluptate vero voluptatem aut fugit voluptatem nisi minus quasi. Dolores vero dolorem quo.', '18', '4', '0', '0', '0', '0', 'Iste id reiciendis facilis est deleniti quia.', null, '2023-10-22 05:37:03', '2023-10-28 17:50:03');
INSERT INTO `topics` VALUES ('51', 'Nesciunt officia quaerat neque.', 'Harum amet aut dolorem distinctio. Ipsum maxime provident minus. Exercitationem iure velit incidunt aut unde magni.', '3', '4', '0', '0', '0', '0', 'Nesciunt officia quaerat neque.', null, '2023-10-21 11:15:43', '2023-11-06 22:05:36');
INSERT INTO `topics` VALUES ('52', 'Illo doloribus laborum commodi velit possimus non quam.', 'Ea quidem laboriosam commodi deserunt adipisci deserunt. Id ut ut ipsum veniam. Non et consequuntur facere et maiores.', '22', '2', '0', '0', '0', '0', 'Illo doloribus laborum commodi velit possimus non quam.', null, '2023-11-05 12:12:49', '2023-11-07 19:17:44');
INSERT INTO `topics` VALUES ('53', 'Aut quisquam est nihil quidem qui et.', 'Qui incidunt occaecati aut facere. Corrupti illo amet sint non. Sequi corporis et accusantium eum corporis.', '8', '1', '0', '0', '0', '0', 'Aut quisquam est nihil quidem qui et.', null, '2023-11-17 09:26:49', '2023-11-18 05:40:41');
INSERT INTO `topics` VALUES ('54', 'Tempora voluptate optio iusto sed quia vitae enim.', 'Sint optio libero incidunt sed. Molestiae autem soluta aut et voluptas. Provident est similique et voluptate error et laboriosam cum.', '5', '4', '0', '0', '0', '0', 'Tempora voluptate optio iusto sed quia vitae enim.', null, '2023-10-25 16:58:19', '2023-11-02 12:28:05');
INSERT INTO `topics` VALUES ('55', 'Sit aut iusto numquam alias sint.', 'Dolorum et est impedit est voluptas non. Est omnis repellendus consequuntur aut porro. Iure quam culpa earum aperiam.', '13', '1', '0', '0', '0', '0', 'Sit aut iusto numquam alias sint.', null, '2023-10-31 04:53:31', '2023-11-18 10:12:39');
INSERT INTO `topics` VALUES ('56', 'Odit ea quia natus aliquam et voluptatum ex.', 'Optio velit expedita minima nisi tenetur et ut. Ab qui cum odio doloribus consequatur. Illo enim numquam nihil nesciunt cumque maxime.', '29', '4', '0', '0', '0', '0', 'Odit ea quia natus aliquam et voluptatum ex.', null, '2023-10-27 03:57:45', '2023-10-31 00:27:26');
INSERT INTO `topics` VALUES ('57', 'Eos est labore hic mollitia quia tempore.', 'Ipsum qui aut dicta non. Est sint consequatur quibusdam. Et iusto suscipit eaque laudantium aut. Et ipsum quisquam illo quis molestias.', '28', '3', '0', '0', '0', '0', 'Eos est labore hic mollitia quia tempore.', null, '2023-10-29 03:26:04', '2023-11-09 10:29:54');
INSERT INTO `topics` VALUES ('58', 'Sint voluptas excepturi illum consequatur dolores.', 'Dolor aspernatur quae non est. Laborum distinctio voluptatem aspernatur molestiae. Est eius excepturi dolorum est iste possimus.', '6', '2', '0', '0', '0', '0', 'Sint voluptas excepturi illum consequatur dolores.', null, '2023-10-20 15:06:31', '2023-11-09 17:15:25');
INSERT INTO `topics` VALUES ('59', 'Debitis non delectus sapiente eaque ut corrupti expedita.', 'Est ea eos beatae consectetur tenetur non. Enim quia nam provident unde eveniet provident. Dolore odit aut voluptas perferendis. Doloribus qui voluptatum consectetur autem quae non nihil.', '15', '2', '0', '0', '0', '0', 'Debitis non delectus sapiente eaque ut corrupti expedita.', null, '2023-10-23 02:14:59', '2023-11-01 17:51:24');
INSERT INTO `topics` VALUES ('60', 'Delectus ut ab facere.', 'Tempore velit quo tempora magni quisquam dolor aut. Quisquam et nemo totam sit eos quaerat. Excepturi omnis aperiam recusandae et.', '13', '2', '0', '0', '0', '0', 'Delectus ut ab facere.', null, '2023-10-20 05:41:18', '2023-11-13 18:57:48');
INSERT INTO `topics` VALUES ('61', 'Modi fugiat cupiditate quibusdam illum culpa.', 'Dignissimos recusandae quasi distinctio et. In odio eveniet suscipit rerum dolores a. Deserunt omnis tempora aut in ducimus. Et quia totam adipisci aliquam culpa voluptas cumque.', '18', '1', '0', '0', '0', '0', 'Modi fugiat cupiditate quibusdam illum culpa.', null, '2023-10-23 00:01:29', '2023-11-04 12:55:41');
INSERT INTO `topics` VALUES ('62', 'Quibusdam fugit dignissimos ut dolorem.', 'Natus porro architecto et officia. Reprehenderit sunt et non voluptatem quod et. Consequatur quo veritatis vero officiis odit eligendi cupiditate.', '26', '2', '0', '0', '0', '0', 'Quibusdam fugit dignissimos ut dolorem.', null, '2023-10-30 06:32:16', '2023-11-09 16:37:42');
INSERT INTO `topics` VALUES ('63', 'Architecto eos eaque nesciunt quam ex aut.', 'Optio nihil non beatae ea labore. Vel voluptas quasi eum rerum. Sapiente ex nostrum consequuntur corrupti ea illo quidem. Fugiat qui deserunt quia voluptas.', '26', '1', '0', '0', '0', '0', 'Architecto eos eaque nesciunt quam ex aut.', null, '2023-11-02 07:55:17', '2023-11-14 00:17:25');
INSERT INTO `topics` VALUES ('64', 'Itaque expedita expedita officiis consectetur vel necessitatibus fugit dolores.', 'Nihil necessitatibus nulla qui perspiciatis deserunt. Nostrum aspernatur quidem facilis rerum quas facere. Voluptatem molestiae expedita delectus perspiciatis aliquid impedit et nihil.', '28', '1', '0', '0', '0', '0', 'Itaque expedita expedita officiis consectetur vel necessitatibus fugit dolores.', null, '2023-10-21 13:59:03', '2023-10-21 19:20:53');
INSERT INTO `topics` VALUES ('65', 'Veritatis aut molestiae qui voluptatem at et laboriosam.', 'Officiis beatae reprehenderit et. Ab voluptas suscipit est. Suscipit blanditiis dicta cumque voluptates ut. Vel commodi ut nam est in cupiditate.', '1', '3', '0', '0', '0', '0', 'Veritatis aut molestiae qui voluptatem at et laboriosam.', null, '2023-11-09 09:17:36', '2023-11-09 09:23:50');
INSERT INTO `topics` VALUES ('66', 'Eius nesciunt cupiditate quaerat.', 'Laborum odio ut nostrum eum animi ea. Officiis eum eius omnis accusantium voluptatem quo. Perspiciatis voluptatem necessitatibus architecto autem.', '1', '4', '0', '0', '0', '0', 'Eius nesciunt cupiditate quaerat.', null, '2023-10-26 20:50:12', '2023-10-27 14:52:49');
INSERT INTO `topics` VALUES ('67', 'Rerum ab asperiores ex aut voluptatem.', 'Est omnis consequuntur laboriosam quae aspernatur. Quo vitae molestiae unde aspernatur sed. Occaecati repellat qui quaerat dolore sed molestias nemo voluptatem. Fugiat a explicabo esse.', '1', '2', '0', '0', '0', '0', 'Rerum ab asperiores ex aut voluptatem.', null, '2023-11-05 20:22:28', '2023-11-10 22:42:24');
INSERT INTO `topics` VALUES ('68', 'Voluptatem odit est nam quam cumque voluptatum debitis voluptas.', 'Ea dolorum temporibus aut qui. Enim sint ea eveniet adipisci magni. Corporis culpa et similique aut repellendus est. Maiores totam est voluptas laudantium cumque laboriosam qui.', '15', '4', '0', '0', '0', '0', 'Voluptatem odit est nam quam cumque voluptatum debitis voluptas.', null, '2023-10-22 17:23:32', '2023-10-27 09:49:16');
INSERT INTO `topics` VALUES ('69', 'Quaerat dolore laudantium sint inventore adipisci voluptatem minima.', 'Illum sunt dolorem magni et deleniti. Rem eos a voluptas ut.', '9', '1', '0', '0', '0', '0', 'Quaerat dolore laudantium sint inventore adipisci voluptatem minima.', null, '2023-10-20 09:42:28', '2023-10-20 16:38:23');
INSERT INTO `topics` VALUES ('70', 'Sed quia neque voluptate consequatur soluta vitae impedit.', 'Quod culpa accusamus voluptatem veniam. Cupiditate debitis fugiat ut officiis magni ratione. Eveniet a magnam rerum nihil et sit delectus.', '20', '1', '0', '0', '0', '0', 'Sed quia neque voluptate consequatur soluta vitae impedit.', null, '2023-11-01 17:23:14', '2023-11-03 10:55:05');
INSERT INTO `topics` VALUES ('71', 'Nobis placeat amet inventore nisi saepe enim quae.', 'Quae quam sit animi hic perspiciatis. Cum autem quas ut.', '21', '3', '0', '0', '0', '0', 'Nobis placeat amet inventore nisi saepe enim quae.', null, '2023-10-24 04:28:36', '2023-10-30 09:01:50');
INSERT INTO `topics` VALUES ('72', 'Qui dolores voluptas optio distinctio velit tempore.', 'Hic eaque et et labore omnis nihil. Amet iusto quis pariatur cupiditate repellat ab ea eum. Omnis quia iure totam velit ullam.', '18', '1', '0', '0', '0', '0', 'Qui dolores voluptas optio distinctio velit tempore.', null, '2023-10-23 04:26:26', '2023-10-28 00:15:59');
INSERT INTO `topics` VALUES ('73', 'Dicta repellat enim suscipit culpa ipsum.', 'Occaecati itaque aut voluptatum debitis ratione veniam. Illum nisi rerum in alias non eaque. Ipsam enim itaque rem sit.', '10', '4', '0', '0', '0', '0', 'Dicta repellat enim suscipit culpa ipsum.', null, '2023-10-22 23:12:21', '2023-10-27 00:49:57');
INSERT INTO `topics` VALUES ('74', 'Asperiores sint dolor accusantium veniam consectetur optio nemo.', 'Tenetur quisquam occaecati dicta aliquam. Fuga assumenda non rerum libero distinctio. A nesciunt quia eaque modi. Rerum rerum voluptates dignissimos voluptates fugiat praesentium nisi quisquam.', '7', '1', '0', '0', '0', '0', 'Asperiores sint dolor accusantium veniam consectetur optio nemo.', null, '2023-11-05 04:17:03', '2023-11-09 14:48:07');
INSERT INTO `topics` VALUES ('75', 'Qui est velit in iure sunt.', 'Et velit placeat amet fuga. Sit consequatur dolorum quia nisi blanditiis eveniet quos dolorem. Eos fugiat dolores provident minus distinctio. Et velit aliquid et sint voluptate sit rerum.', '19', '4', '0', '0', '0', '0', 'Qui est velit in iure sunt.', null, '2023-10-25 02:11:30', '2023-11-10 10:14:16');
INSERT INTO `topics` VALUES ('76', 'Ut incidunt necessitatibus ut quae.', 'Necessitatibus accusamus optio accusamus vitae dolor. Debitis hic eos similique excepturi. Ipsa dolores et asperiores aut porro amet. Non saepe vero possimus laboriosam voluptas.', '25', '3', '0', '0', '0', '0', 'Ut incidunt necessitatibus ut quae.', null, '2023-11-01 08:18:59', '2023-11-07 06:25:10');
INSERT INTO `topics` VALUES ('77', 'Aperiam est fugiat tenetur.', 'Iusto magni id magni molestiae. Dolorem sed sit provident odio. Numquam aut et tempora est. Nostrum laudantium asperiores odit porro.', '7', '4', '0', '0', '0', '0', 'Aperiam est fugiat tenetur.', null, '2023-10-26 07:47:26', '2023-10-29 12:51:02');
INSERT INTO `topics` VALUES ('78', 'Voluptatem ut et at aut est.', 'Nam itaque minus facilis laudantium error. Quo animi laborum voluptatum ut corrupti perspiciatis. Illo et quasi tempore soluta. Magni exercitationem qui quis ut sunt. Ut labore error vitae ut.', '9', '1', '0', '0', '0', '0', 'Voluptatem ut et at aut est.', null, '2023-10-24 14:18:22', '2023-11-09 04:01:06');
INSERT INTO `topics` VALUES ('79', 'Autem quia aperiam quia aut voluptatem nobis.', 'Reprehenderit quae corrupti eum temporibus. Dolorem laudantium ad numquam laborum maiores molestiae assumenda. Quo doloremque ea libero eius totam architecto id.', '25', '3', '0', '0', '0', '0', 'Autem quia aperiam quia aut voluptatem nobis.', null, '2023-11-05 14:08:09', '2023-11-18 21:35:47');
INSERT INTO `topics` VALUES ('80', 'Est laboriosam voluptates neque fugiat.', 'Sed vitae in qui impedit odio eveniet. Illo earum exercitationem temporibus aut voluptas. Vero libero molestiae distinctio deleniti dolor.', '14', '1', '0', '0', '0', '0', 'Est laboriosam voluptates neque fugiat.', null, '2023-11-05 20:55:44', '2023-11-08 12:58:44');
INSERT INTO `topics` VALUES ('81', 'Ut quia id non.', 'Quas delectus repellendus accusamus id iure corrupti. Praesentium quo vel placeat similique. Reiciendis voluptatem unde facilis cum et in consequatur corrupti.', '4', '2', '0', '0', '0', '0', 'Ut quia id non.', null, '2023-10-31 11:59:51', '2023-11-01 04:11:29');
INSERT INTO `topics` VALUES ('82', 'Deserunt eos quia illum nesciunt.', 'Perspiciatis aut quos veritatis. Odio labore perferendis in iste. Quam ipsum quia sunt beatae aliquam. Dolores consectetur eum quia non sunt iusto. Rerum magnam impedit reprehenderit.', '29', '1', '0', '0', '0', '0', 'Deserunt eos quia illum nesciunt.', null, '2023-10-21 17:24:29', '2023-11-07 15:13:37');
INSERT INTO `topics` VALUES ('83', 'Dignissimos nemo maxime accusamus maiores dolorem recusandae repellendus.', 'Esse nisi repellendus repellat. Aliquam voluptatem labore similique doloremque. Dolor molestiae blanditiis molestiae animi minima.', '30', '2', '0', '0', '0', '0', 'Dignissimos nemo maxime accusamus maiores dolorem recusandae repellendus.', null, '2023-10-27 00:42:11', '2023-11-06 01:13:56');
INSERT INTO `topics` VALUES ('84', 'Et ut similique enim molestias dolorum et expedita.', 'Omnis asperiores rem hic provident eos. Sed quibusdam maiores quas dolores. Et eum voluptatem voluptatem quas pariatur facere. Et cupiditate vitae magnam consequuntur aliquam molestias.', '26', '1', '0', '0', '0', '0', 'Et ut similique enim molestias dolorum et expedita.', null, '2023-10-26 17:38:14', '2023-11-15 18:50:36');
INSERT INTO `topics` VALUES ('85', 'Voluptas recusandae rem cum officiis odio cupiditate magni.', 'Voluptas voluptatem id sapiente voluptas. Sunt nisi enim similique vel et voluptatem. Qui beatae a aut. Deserunt consequatur saepe assumenda rerum alias sunt laudantium ea.', '16', '2', '0', '0', '0', '0', 'Voluptas recusandae rem cum officiis odio cupiditate magni.', null, '2023-11-01 02:28:06', '2023-11-17 19:48:49');
INSERT INTO `topics` VALUES ('86', 'Sequi in fuga et.', 'Enim nobis eos ratione assumenda soluta sed cum molestiae. Dolorem est quo culpa ea tenetur aut autem. Hic enim ut fuga qui explicabo cum. Saepe porro voluptatem qui impedit voluptatem consectetur.', '20', '1', '0', '0', '0', '0', 'Sequi in fuga et.', null, '2023-10-28 03:19:34', '2023-11-01 02:16:38');
INSERT INTO `topics` VALUES ('87', 'Amet nemo possimus dolores molestiae illum.', 'Quaerat aut porro nam consequatur et ipsum et. Iure non vel magnam qui esse ab expedita perferendis. Qui harum voluptatibus excepturi et dolorem blanditiis quia. Nisi ea non enim vitae.', '12', '2', '0', '0', '0', '0', 'Amet nemo possimus dolores molestiae illum.', null, '2023-10-19 23:49:55', '2023-10-20 14:26:55');
INSERT INTO `topics` VALUES ('88', 'Quia maiores corrupti dicta sunt.', 'Odio aut placeat cupiditate qui commodi et molestiae. Vel voluptas praesentium nihil aut voluptas. Sint quae rerum nemo et in blanditiis. Dolorem numquam nemo asperiores vel.', '12', '3', '0', '0', '0', '0', 'Quia maiores corrupti dicta sunt.', null, '2023-10-26 05:08:17', '2023-11-09 07:19:12');
INSERT INTO `topics` VALUES ('89', 'Delectus ea soluta labore voluptates nisi et consectetur.', 'Quia temporibus libero rerum sed rem molestiae quam vero. Quis blanditiis ducimus eligendi et dignissimos tempore. Excepturi doloremque et vel molestiae tempore qui ut.', '11', '2', '0', '0', '0', '0', 'Delectus ea soluta labore voluptates nisi et consectetur.', null, '2023-11-03 07:46:14', '2023-11-18 17:15:55');
INSERT INTO `topics` VALUES ('90', 'Magnam necessitatibus delectus ut atque similique nostrum.', 'Qui sunt voluptatum ut non veniam quod corrupti. Non possimus excepturi ut minima praesentium. Provident est non cum in facere possimus.', '17', '4', '0', '0', '0', '0', 'Magnam necessitatibus delectus ut atque similique nostrum.', null, '2023-10-20 07:34:23', '2023-10-20 18:23:07');
INSERT INTO `topics` VALUES ('91', 'Nostrum qui voluptatem aut pariatur qui voluptas facere vel.', 'Necessitatibus unde et molestias laborum. Aut nihil est ut ut. Et aspernatur cupiditate doloribus ducimus dolor. Rerum laudantium harum omnis eos.', '14', '2', '0', '0', '0', '0', 'Nostrum qui voluptatem aut pariatur qui voluptas facere vel.', null, '2023-10-24 12:30:19', '2023-10-29 21:19:53');
INSERT INTO `topics` VALUES ('92', 'Ducimus blanditiis dolorem et voluptatem eos.', 'Facilis corporis hic accusamus reiciendis ratione minus. Et labore aut enim. Modi et cumque dolores soluta voluptate. Hic eum ea inventore itaque maxime a.', '20', '3', '0', '0', '0', '0', 'Ducimus blanditiis dolorem et voluptatem eos.', null, '2023-10-20 10:40:47', '2023-10-24 16:45:10');
INSERT INTO `topics` VALUES ('93', 'Adipisci ab omnis quos velit et et eligendi.', 'Dolorum atque recusandae voluptatum aut. Quia dolores eum qui nisi. Asperiores quod sunt sunt accusantium aperiam iste. Quibusdam at cumque iusto non repellat.', '8', '1', '0', '0', '0', '0', 'Adipisci ab omnis quos velit et et eligendi.', null, '2023-10-22 23:48:29', '2023-11-17 00:57:14');
INSERT INTO `topics` VALUES ('94', 'Est in ab quia enim voluptatem atque.', 'Perspiciatis praesentium placeat nesciunt nesciunt non quia. Et quaerat repellat dolore hic. Nihil voluptatem nostrum rerum incidunt. Dolor perferendis dignissimos quasi.', '3', '3', '0', '0', '0', '0', 'Est in ab quia enim voluptatem atque.', null, '2023-10-20 07:08:50', '2023-10-20 15:49:50');
INSERT INTO `topics` VALUES ('95', 'Dolores maiores rerum perspiciatis repellendus est a aliquam aspernatur.', 'Magnam totam qui et in. Voluptates inventore sit sunt perspiciatis quibusdam. Velit rerum laboriosam quia et. Voluptatem error necessitatibus accusantium quis.', '11', '4', '0', '0', '0', '0', 'Dolores maiores rerum perspiciatis repellendus est a aliquam aspernatur.', null, '2023-11-06 21:48:56', '2023-11-11 13:14:17');
INSERT INTO `topics` VALUES ('96', 'Aut iusto dignissimos harum aut.', 'Eius vero ea earum vel ullam quo sequi. Minima earum autem dolores voluptate. Voluptas unde unde corporis voluptatem inventore beatae.', '25', '1', '0', '0', '0', '0', 'Aut iusto dignissimos harum aut.', null, '2023-11-10 07:58:18', '2023-11-12 14:18:20');
INSERT INTO `topics` VALUES ('97', 'Praesentium expedita velit ratione non.', 'Aliquid sunt aut asperiores quia possimus hic labore. Dignissimos doloribus dicta velit doloribus eligendi in. Et repellendus rerum ex possimus.', '17', '4', '0', '0', '0', '0', 'Praesentium expedita velit ratione non.', null, '2023-10-31 05:42:50', '2023-11-17 20:53:37');
INSERT INTO `topics` VALUES ('98', 'In consequuntur dicta quia sint rem.', 'Minima ut architecto atque autem quia iure accusamus ab. Ut et repudiandae minus sed nemo ipsum. Ducimus aperiam temporibus enim.', '24', '3', '0', '0', '0', '0', 'In consequuntur dicta quia sint rem.', null, '2023-10-19 20:02:08', '2023-10-19 20:11:26');
INSERT INTO `topics` VALUES ('99', 'Debitis sequi in aut perspiciatis dignissimos accusamus.', 'Dolore voluptatem animi facere doloribus aliquam dolore eveniet et. Repellendus fugit unde possimus. Optio assumenda non debitis et saepe nemo qui. Occaecati nemo nihil magni aut qui.', '25', '1', '0', '0', '0', '0', 'Debitis sequi in aut perspiciatis dignissimos accusamus.', null, '2023-11-09 06:31:05', '2023-11-10 11:10:45');
INSERT INTO `topics` VALUES ('100', 'Ut dicta voluptas quo aliquid officia ut.', 'Enim qui mollitia itaque ab placeat eveniet inventore. Dolor et voluptas ullam maxime. Eos quia autem sunt modi. Nam occaecati quos quo magnam est eaque et.', '2', '2', '0', '0', '0', '0', 'Ut dicta voluptas quo aliquid officia ut.', null, '2023-10-28 23:04:36', '2023-11-17 01:32:37');
INSERT INTO `topics` VALUES ('101', '哒哒哒哒哒哒多多多多', 'd', '31', '1', '0', '0', '0', '0', null, null, '2023-11-20 17:06:30', '2023-11-20 17:06:30');
INSERT INTO `topics` VALUES ('102', 's', 'q', '31', '1', '0', '0', '0', '0', 'q', null, '2023-11-20 17:21:37', '2023-11-20 17:21:37');
INSERT INTO `topics` VALUES ('103', '1', '1', '31', '2', '0', '0', '0', '0', '1', null, '2023-11-20 17:21:57', '2023-11-20 17:21:57');
INSERT INTO `topics` VALUES ('104', '1', '1', '31', '2', '0', '0', '0', '0', '1', null, '2023-11-20 17:24:39', '2023-11-20 17:24:39');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Summer', 'summer@example.com', '2023-11-19 19:55:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uObjSRSR3aK413J9rimrZ8Y60xXQeByKdFRfadthGHcmt8zMCKAfhM5AOXF3', '2003-06-20 06:17:57', '2023-11-19 19:59:13', 'https://cdn.learnku.com/uploads/images/201710/14/1/ZqM7iaP4CR.png', null);
INSERT INTO `users` VALUES ('2', 'Prof. Joy Frami IV', 'bcartwright@example.net', '2023-11-19 19:55:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2013-11-23 15:07:10', '2013-11-23 15:07:10', null, null);
INSERT INTO `users` VALUES ('3', 'Matteo Ebert', 'west.jovany@example.org', '2023-11-19 19:55:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1990-03-14 07:13:56', '1990-03-14 07:13:56', null, null);
INSERT INTO `users` VALUES ('4', 'Lance Reinger', 'heidenreich.emile@example.net', '2023-11-19 19:55:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2010-06-03 14:49:07', '2010-06-03 14:49:07', null, null);
INSERT INTO `users` VALUES ('5', 'Katheryn Yundt', 'lila32@example.com', '2023-11-19 19:55:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1971-08-19 10:43:12', '1971-08-19 10:43:12', null, null);
INSERT INTO `users` VALUES ('6', 'Douglas DuBuque', 'sdoyle@example.com', '2023-11-19 19:55:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2020-09-06 20:02:59', '2020-09-06 20:02:59', null, null);
INSERT INTO `users` VALUES ('7', 'Prof. Jarret Dickinson', 'roman85@example.net', '2023-11-19 19:55:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1980-05-30 08:13:53', '1980-05-30 08:13:53', null, null);
INSERT INTO `users` VALUES ('8', 'Dina Bins', 'nritchie@example.org', '2023-11-19 19:55:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2012-07-09 12:39:31', '2012-07-09 12:39:31', null, null);
INSERT INTO `users` VALUES ('9', 'Dr. Brennan Spencer', 'xtorp@example.net', '2023-11-19 19:55:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1983-12-11 20:37:06', '1983-12-11 20:37:06', null, null);
INSERT INTO `users` VALUES ('10', 'Kayli Hayes', 'anna79@example.org', '2023-11-19 19:55:45', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1999-03-20 02:55:40', '1999-03-20 02:55:40', null, null);
INSERT INTO `users` VALUES ('11', 'Emil Bradtke', 'berry94@example.net', '2023-11-19 19:56:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2006-02-26 07:25:20', '2006-02-26 07:25:20', null, null);
INSERT INTO `users` VALUES ('12', 'Eldon Monahan MD', 'sierra61@example.net', '2023-11-19 19:56:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1991-12-15 01:03:51', '1991-12-15 01:03:51', null, null);
INSERT INTO `users` VALUES ('13', 'Claudie Kihn', 'marquardt.lon@example.org', '2023-11-19 19:56:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2016-01-21 02:42:17', '2016-01-21 02:42:17', null, null);
INSERT INTO `users` VALUES ('14', 'Zena Nitzsche', 'daugherty.emmitt@example.net', '2023-11-19 19:56:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2013-04-15 07:32:09', '2013-04-15 07:32:09', null, null);
INSERT INTO `users` VALUES ('15', 'Rosalind Roberts IV', 'destiney.schuppe@example.org', '2023-11-19 19:56:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1999-12-14 08:55:27', '1999-12-14 08:55:27', null, null);
INSERT INTO `users` VALUES ('16', 'Archibald Hartmann', 'lorenza32@example.com', '2023-11-19 19:56:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1995-08-20 11:37:30', '1995-08-20 11:37:30', null, null);
INSERT INTO `users` VALUES ('17', 'Dr. Andreanne Conn PhD', 'casper.ansley@example.com', '2023-11-19 19:56:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2023-05-15 05:18:49', '2023-05-15 05:18:49', null, null);
INSERT INTO `users` VALUES ('18', 'Dr. Nathanael O\'Kon', 'cgleichner@example.net', '2023-11-19 19:56:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1984-04-08 16:11:37', '1984-04-08 16:11:37', null, null);
INSERT INTO `users` VALUES ('19', 'Johnson Denesik', 'casper.cole@example.org', '2023-11-19 19:56:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2008-08-30 06:04:34', '2008-08-30 06:04:34', null, null);
INSERT INTO `users` VALUES ('20', 'Savanna Funk', 'larmstrong@example.com', '2023-11-19 19:56:40', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1980-10-20 21:33:05', '1980-10-20 21:33:05', null, null);
INSERT INTO `users` VALUES ('21', 'Prof. Mac Berge Jr.', 'berenice.douglas@example.net', '2023-11-19 19:59:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1977-06-14 12:07:52', '1977-06-14 12:07:52', 'https://cdn.learnku.com/uploads/images/201710/14/1/s5ehp11z6s.png', 'Est dolorem accusantium similique provident repudiandae inventore.');
INSERT INTO `users` VALUES ('22', 'Marley Lesch', 'cschuppe@example.com', '2023-11-19 19:59:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2013-10-09 03:19:41', '2013-10-09 03:19:41', 'https://cdn.learnku.com/uploads/images/201710/14/1/xAuDMxteQy.png', 'Non aut et molestiae aut eveniet.');
INSERT INTO `users` VALUES ('23', 'Buford Sawayn', 'dudley.wiza@example.net', '2023-11-19 19:59:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1990-05-20 06:33:28', '1990-05-20 06:33:28', 'https://cdn.learnku.com/uploads/images/201710/14/1/Lhd1SHqu86.png', 'Animi iusto cumque a quisquam.');
INSERT INTO `users` VALUES ('24', 'Harvey Bradtke', 'ronny.bailey@example.com', '2023-11-19 19:59:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2019-03-09 08:45:07', '2019-03-09 08:45:07', 'https://cdn.learnku.com/uploads/images/201710/14/1/s5ehp11z6s.png', 'Facere dolorum unde voluptates molestiae eaque non.');
INSERT INTO `users` VALUES ('25', 'Betty Tillman III', 'ivory86@example.com', '2023-11-19 19:59:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1984-03-06 12:36:30', '1984-03-06 12:36:30', 'https://cdn.learnku.com/uploads/images/201710/14/1/LOnMrqbHJn.png', 'Tempore dolor et saepe modi sit ut.');
INSERT INTO `users` VALUES ('26', 'Mr. Horace Greenfelder', 'pmetz@example.com', '2023-11-19 19:59:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2012-09-04 11:45:02', '2012-09-04 11:45:02', 'https://cdn.learnku.com/uploads/images/201710/14/1/s5ehp11z6s.png', 'Ipsa officiis omnis enim at sunt natus.');
INSERT INTO `users` VALUES ('27', 'Dr. Cristobal Kilback V', 'jayme84@example.com', '2023-11-19 19:59:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1995-02-05 22:34:50', '1995-02-05 22:34:50', 'https://cdn.learnku.com/uploads/images/201710/14/1/LOnMrqbHJn.png', 'Rem cum libero rem eum aliquid.');
INSERT INTO `users` VALUES ('28', 'Kirstin McCullough', 'gutkowski.beulah@example.com', '2023-11-19 19:59:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1999-10-21 20:48:29', '1999-10-21 20:48:29', 'https://cdn.learnku.com/uploads/images/201710/14/1/Lhd1SHqu86.png', 'Qui debitis minima ullam et expedita.');
INSERT INTO `users` VALUES ('29', 'Myrna Russel', 'kari97@example.org', '2023-11-19 19:59:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '1973-11-07 19:09:48', '1973-11-07 19:09:48', 'https://cdn.learnku.com/uploads/images/201710/14/1/LOnMrqbHJn.png', 'Ut voluptatem id doloribus nulla et nihil.');
INSERT INTO `users` VALUES ('30', 'Dr. Princess Hirthe PhD', 'vandervort.bradford@example.net', '2023-11-19 19:59:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', null, '2010-07-13 09:45:44', '2010-07-13 09:45:44', 'https://cdn.learnku.com/uploads/images/201710/14/1/Lhd1SHqu86.png', 'Eos perspiciatis nostrum et quis ut dolorem ullam quia.');
INSERT INTO `users` VALUES ('31', 'admin', 'ccc@qq.com', '2023-11-19 20:01:07', '$2y$10$1lhQ0b4nMKr9GEsuBjdynuiGqK0WLP/3pUHoqAcliRzVk.ZymQFhe', 'JTzwHM5arqqk37MtzgAJTuO47eKDsbyGOW2mjLBFtRFO0RiDZhF8ackHaTdb', '2023-11-19 20:00:46', '2023-11-19 20:01:19', 'http://larabbs.test/uploads/images/avatars/202311/19/31_1700395279_PA51cqcqIE.png', null);
