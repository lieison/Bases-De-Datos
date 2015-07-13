-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2015 a las 20:13:50
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `wp_patricia_dalponte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-07-06 22:48:36', '2015-07-06 22:48:36', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_newsletter`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `surname` varchar(100) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL DEFAULT 'n',
  `status` char(1) NOT NULL DEFAULT 'S',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(50) NOT NULL DEFAULT '',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(4) NOT NULL DEFAULT '',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) NOT NULL DEFAULT '',
  `profile_2` varchar(255) NOT NULL DEFAULT '',
  `profile_3` varchar(255) NOT NULL DEFAULT '',
  `profile_4` varchar(255) NOT NULL DEFAULT '',
  `profile_5` varchar(255) NOT NULL DEFAULT '',
  `profile_6` varchar(255) NOT NULL DEFAULT '',
  `profile_7` varchar(255) NOT NULL DEFAULT '',
  `profile_8` varchar(255) NOT NULL DEFAULT '',
  `profile_9` varchar(255) NOT NULL DEFAULT '',
  `profile_10` varchar(255) NOT NULL DEFAULT '',
  `profile_11` varchar(255) NOT NULL DEFAULT '',
  `profile_12` varchar(255) NOT NULL DEFAULT '',
  `profile_13` varchar(255) NOT NULL DEFAULT '',
  `profile_14` varchar(255) NOT NULL DEFAULT '',
  `profile_15` varchar(255) NOT NULL DEFAULT '',
  `profile_16` varchar(255) NOT NULL DEFAULT '',
  `profile_17` varchar(255) NOT NULL DEFAULT '',
  `profile_18` varchar(255) NOT NULL DEFAULT '',
  `profile_19` varchar(255) NOT NULL DEFAULT '',
  `profile_20` varchar(255) NOT NULL DEFAULT '',
  `referrer` varchar(50) NOT NULL DEFAULT '',
  `http_referer` varchar(255) NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0',
  `flow` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_newsletter_emails`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `message_text` longtext COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `send_on` int(11) NOT NULL DEFAULT '0',
  `track` tinyint(4) NOT NULL DEFAULT '0',
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_ci,
  `preferences` longtext COLLATE utf8mb4_unicode_ci,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_newsletter_stats`
--

CREATE TABLE IF NOT EXISTS `wp_newsletter_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` int(11) NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `anchor` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `email_id` (`email_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2053 ;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Dalponte', 'yes'),
(2, 'home', 'http://localhost/Dalponte', 'yes'),
(3, 'blogname', 'Patricia Dalponte', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@lieison.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:33:"cmssuperheroes/cmssuperheroes.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:27:"js_composer/js_composer.php";i:3;s:21:"newsletter/plugin.php";i:4;s:23:"revslider/revslider.php";i:5;s:29:"use-any-font/use-any-font.php";i:6;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '-6', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:61:"C:\\wamp\\www\\Dalponte/wp-content/themes/wp_piero/style-rtl.css";i:1;s:57:"C:\\wamp\\www\\Dalponte/wp-content/themes/wp_piero/style.css";i:2;s:0:"";}', 'no'),
(41, 'template', 'wp_piero', 'yes'),
(42, 'stylesheet', 'wp_piero', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31535', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '2', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31535', 'yes'),
(89, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:3:{s:4:"read";b:1;s:10:"edit_posts";b:0;s:12:"delete_posts";b:0;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:32:{s:19:"wp_inactive_widgets";a:0:{}s:19:"cshero-blog-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"cshero-widget-left";N;s:19:"cshero-widget-right";N;s:25:"cshero-widget-hidden-menu";N;s:26:"cshero-header-top-widget-1";N;s:26:"cshero-header-top-widget-2";N;s:27:"cshero-header-top2-widget-1";N;s:27:"cshero-header-top2-widget-2";N;s:30:"cshero-header-content-widget-1";N;s:30:"cshero-header-content-widget-2";N;s:34:"cshero-header-fixed-content-widget";N;s:22:"cshero-bottom-widget-1";N;s:22:"cshero-bottom-widget-2";N;s:22:"cshero-bottom-widget-3";N;s:22:"cshero-bottom-widget-4";N;s:22:"cshero-footer-widget-1";N;s:22:"cshero-footer-widget-2";N;s:22:"cshero-footer-widget-3";N;s:22:"cshero-footer-widget-4";N;s:33:"cshero-slidingbar-bottom-widget-1";N;s:33:"cshero-slidingbar-bottom-widget-2";N;s:28:"cshero-slidingbar-newsletter";N;s:19:"woocommerce_sidebar";N;s:25:"woocommerce_wg_full_width";N;s:17:"megamenu_sidebar1";N;s:17:"megamenu_sidebar2";N;s:17:"megamenu_sidebar3";N;s:19:"cshero-debug-widget";N;s:24:"cshero-widget-in-content";N;s:18:"cshero-search-area";N;s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:10:{i:1436811304;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1436814689;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1436816340;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1436819106;a:2:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1436821612;a:1:{s:14:"redux_tracking";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1436827723;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1436827795;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1436832000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1436887130;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(100, '_transient_random_seed', '8100b4653358b58b041146cbc098a302', 'yes'),
(101, 'nonce_key', 'vl!sc6HI)_/uZ~;T,f-VF49Z?uMsNAbltY_zGsrHu[-rK=[+|LLt=X~shv:($_IU', 'yes'),
(102, 'nonce_salt', ';GZ5Bl0ANq,)SAv//HZ*57V 5/nE? RD_gQB+s8W^dWwr,c8oEgMHv+4!<,W!RC!', 'yes'),
(111, 'auth_key', '{n)n AR)=gO*cvx[T1-fb>Z@%(46HPrSvA|$E,Vj@xU@}9XG~/J&<Ki*tnM02gy3', 'yes'),
(112, 'auth_salt', 'wnrlqKHms@d[ ol^WBzf: U) RC,,I{wPd]1<TFJCE2*e$Oo5[H!60$RxhHdsSS4', 'yes'),
(113, 'logged_in_key', ')x*?Mi ud1&ZmL gZe!dasGqh0SxM,jF#-(ESQ_32@IoTE2nvNk4cw(0l3<,0fsP', 'yes'),
(114, 'logged_in_salt', '}KmwV^Y|[tMtBw2SF>b_B4jV4sDW?VL?XjVS8T-[Uk!5mtkzY32.jwBp5VQR+5r5', 'yes'),
(115, '_site_transient_timeout_browser_bfa58c308f5ca3be02504bfe8661769b', '1436827798', 'yes'),
(116, '_site_transient_browser_bfa58c308f5ca3be02504bfe8661769b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"39.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(119, 'can_compress_scripts', '1', 'yes'),
(137, '_transient_twentyfifteen_categories', '1', 'yes'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(158, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1436277753;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(159, 'current_theme', 'WP Piero', 'yes'),
(160, 'theme_mods_wp_piero', 'a:1:{i:0;b:0;}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(162, 'redux-framework-tracking', 'a:3:{s:8:"dev_mode";b:0;s:4:"hash";s:32:"d6d2a0c75fea25ccbf80cd5968fdbc5c";s:14:"allow_tracking";s:3:"yes";}', 'yes'),
(163, 'smof_data', 'a:375:{s:6:"layout";b:0;s:12:"layout_width";s:6:"1200px";s:15:"container_width";s:6:"1200px";s:11:"page_loader";b:0;s:17:"page_loader_style";s:6:"simple";s:14:"page_loader_bg";a:2:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:3:"1.0";}s:17:"page_loader_color";a:2:{s:5:"color";s:7:"#59d7c5";s:5:"alpha";s:3:"1.0";}s:18:"page_loader_color2";a:2:{s:5:"color";s:7:"#59d7c5";s:5:"alpha";s:3:"1.0";}s:13:"smooth_scroll";b:0;s:8:"dev_mode";b:1;s:7:"favicon";a:1:{s:3:"url";s:76:"http://localhost/Dalponte/wp-content/themes/wp_piero/images/logo/favicon.ico";}s:10:"space_head";s:0:"";s:10:"space_body";s:0:"";s:5:"theme";s:8:"wp-piero";s:15:"background-body";a:6:{s:16:"background-color";s:7:"#FFFFFF";s:16:"background-image";s:0:"";s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";}s:4:"logo";a:1:{s:3:"url";s:73:"http://localhost/Dalponte/wp-content/themes/wp_piero/images/logo/logo.png";}s:10:"logo_width";s:4:"24px";s:14:"logo_alignment";s:4:"left";s:11:"margin_logo";s:1:"0";s:12:"padding_logo";s:1:"0";s:18:"logo_header_sticky";a:1:{s:3:"url";s:80:"http://localhost/Dalponte/wp-content/themes/wp_piero/images/logo/logo-sticky.png";}s:29:"header_sticky_logo_max_height";s:4:"24px";s:21:"sticky_logo_alignment";s:4:"left";s:18:"sticky_margin_logo";s:0:"";s:19:"sticky_padding_logo";s:0:"";s:13:"header_layout";s:2:"v1";s:17:"header_full_width";b:0;s:16:"header_fixed_top";b:0;s:22:"header_content_widgets";b:1;s:21:"header_headings_color";s:0:"";s:17:"header_text_color";s:0:"";s:17:"header_link_color";s:0:"";s:23:"header_link_hover_color";s:0:"";s:17:"background-header";a:6:{s:16:"background-color";s:7:"#FFFFFF";s:16:"background-image";s:0:"";s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";}s:18:"header_transparent";s:1:"1";s:18:"header_bg_parallax";b:0;s:20:"header_border_bottom";b:0;s:26:"header_border_bottom_style";s:4:"none";s:27:"header_border_bottom_height";s:1:"0";s:26:"header_border_bottom_color";a:2:{s:5:"color";s:0:"";s:5:"alpha";s:3:"1.0";}s:13:"header_margin";s:1:"0";s:14:"header_padding";s:1:"0";s:18:"header_top_widgets";b:0;s:19:"header_top_bg_color";s:7:"#333333";s:25:"header_top_headings_color";s:4:"#fff";s:21:"header_top_text_color";s:4:"#fff";s:21:"header_top_link_color";s:7:"#888888";s:27:"header_top_link_hover_color";s:4:"#fff";s:26:"header_top_widgets_columns";s:1:"2";s:20:"header_top_widgets_1";s:36:"col-xs-12 col-sm-6 col-md-6 col-lg-6";s:20:"header_top_widgets_2";s:47:"col-xs-12 col-sm-6 col-md-6 col-lg-6 text-right";s:18:"header_top_padding";s:6:"12px 0";s:19:"header_top2_widgets";b:0;s:20:"header_top2_bg_color";s:7:"#ffffff";s:26:"header_top2_headings_color";s:7:"#aaaaaa";s:22:"header_top2_text_color";s:7:"#aaaaaa";s:22:"header_top2_link_color";s:7:"#aaaaaa";s:28:"header_top2_link_hover_color";s:7:"#333333";s:27:"header_top2_widgets_columns";s:1:"2";s:21:"header_top2_widgets_1";s:36:"col-xs-12 col-sm-6 col-md-6 col-lg-6";s:21:"header_top2_widgets_2";s:47:"col-xs-12 col-sm-6 col-md-6 col-lg-6 text-right";s:19:"header_top2_padding";s:6:"12px 0";s:32:"header_top2_widgets_border_color";a:2:{s:5:"color";s:4:"#eee";s:5:"alpha";s:3:"1.0";}s:22:"default_search_padding";s:17:"0px 10px 0px 10px";s:30:"default_hidden_sidebar_padding";s:17:"0px 10px 0px 10px";s:13:"header_sticky";b:1;s:24:"sticky_header_full_width";b:0;s:20:"header_sticky_tablet";b:0;s:20:"header_sticky_mobile";b:0;s:22:"header_sticky_bg_color";a:2:{s:5:"color";s:7:"#ffffff";s:5:"alpha";s:3:"1.0";}s:26:"header_sticky_border_color";a:2:{s:5:"color";s:4:"#eee";s:5:"alpha";s:3:"1.0";}s:20:"header_sticky_height";s:4:"60px";s:21:"sticky_search_padding";s:17:"0px 10px 0px 10px";s:29:"sticky_hidden_sidebar_padding";s:17:"0px 10px 0px 10px";s:12:"header_width";s:5:"300px";s:15:"header_position";s:4:"left";s:24:"header_fixed_menu_appear";s:6:"flyout";s:30:"header_content_widgets_columns";s:1:"2";s:24:"header_content_widgets_1";s:36:"col-xs-12 col-sm-6 col-md-6 col-lg-6";s:24:"header_content_widgets_2";s:36:"col-xs-12 col-sm-6 col-md-6 col-lg-6";s:10:"nav_height";s:5:"100px";s:13:"menu_position";s:5:"right";s:16:"menu_item_button";b:0;s:19:"dropdown_menu_width";s:5:"210px";s:30:"menu_first_level_text_uppecase";b:1;s:18:"enable_menu_border";b:0;s:17:"menu_border_color";s:7:"#111111";s:31:"menu_second_level_text_uppecase";b:1;s:29:"menu_second_level_line_height";s:6:"normal";s:23:"arrow_parents_item_menu";b:0;s:13:"menu_bg_color";s:11:"transparent";s:25:"menu_fontsize_first_level";s:4:"12px";s:16:"menu_first_color";s:7:"#111111";s:22:"menu_hover_first_color";s:7:"#59d7c5";s:23:"menu_active_first_color";s:7:"#59d7c5";s:25:"menu_bg_hover_color_first";a:2:{s:5:"color";s:0:"";s:5:"alpha";s:3:"1.0";}s:27:"menu_bg_actived_color_first";a:2:{s:5:"color";s:0:"";s:5:"alpha";s:1:"1";}s:11:"nav_padding";s:6:"0 19px";s:10:"nav_margin";s:3:"0px";s:17:"menu_sub_bg_color";s:7:"#ffffff";s:23:"menu_fontsize_sub_level";s:4:"13px";s:14:"menu_sub_color";s:7:"#878787";s:19:"menu_bg_hover_color";s:11:"transparent";s:20:"menu_sub_hover_color";s:7:"#59d7c5";s:21:"menu_sub_active_color";s:7:"#59d7c5";s:18:"menu_sub_sep_color";s:7:"#eeeeee";s:20:"sticky_menu_bg_color";s:11:"transparent";s:32:"sticky_menu_fontsize_first_level";s:4:"12px";s:23:"sticky_menu_first_color";s:4:"#111";s:29:"sticky_menu_hover_first_color";s:7:"#59d7c5";s:30:"sticky_menu_active_first_color";s:7:"#59d7c5";s:32:"sticky_menu_bg_hover_color_first";a:2:{s:5:"color";s:0:"";s:5:"alpha";s:3:"1.0";}s:34:"sticky_menu_bg_actived_color_first";a:2:{s:5:"color";s:0:"";s:5:"alpha";s:1:"1";}s:18:"sticky_nav_padding";s:6:"0 19px";s:17:"sticky_nav_margin";s:3:"0px";s:24:"sticky_menu_sub_bg_color";s:7:"#ffffff";s:30:"sticky_menu_fontsize_sub_level";s:4:"13px";s:21:"sticky_menu_sub_color";s:7:"#878787";s:26:"sticky_menu_bg_hover_color";s:11:"transparent";s:27:"sticky_menu_sub_hover_color";s:7:"#59d7c5";s:28:"sticky_menu_sub_active_color";s:7:"#59d7c5";s:25:"sticky_menu_sub_sep_color";s:7:"#eeeeee";s:20:"mobile_menu_bg_color";s:7:"#ffffff";s:23:"mobile_menu_first_color";s:7:"#111111";s:29:"mobile_menu_hover_first_color";s:7:"#5ad7c5";s:21:"mobile_menu_sub_color";s:7:"#333333";s:27:"mobile_menu_sub_hover_color";s:7:"#5ad7c5";s:25:"mobile_menu_sub_sep_color";s:7:"#eeeeee";s:21:"enable_hidden_sidebar";b:0;s:23:"hidden_sidebar_position";s:5:"right";s:20:"hidden_sidebar_width";s:5:"220px";s:21:"hidden_sidebar_height";s:5:"320px";s:16:"bottom_1_widgets";b:0;s:24:"bottom_1_widgets_columns";s:1:"2";s:18:"bottom_1_widgets_1";s:36:"col-xs-12 col-sm-6 col-md-3 col-lg-3";s:18:"bottom_1_widgets_2";s:36:"col-xs-12 col-sm-6 col-md-3 col-lg-3";s:18:"bottom_1_widgets_3";s:36:"col-xs-12 col-sm-6 col-md-3 col-lg-3";s:18:"bottom_1_widgets_4";s:36:"col-xs-12 col-sm-6 col-md-3 col-lg-3";s:17:"background-bottom";a:6:{s:16:"background-color";s:7:"#FFFFFF";s:16:"background-image";s:0:"";s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";}s:20:"bottom_1_bg_parallax";b:0;s:16:"bottom_1_padding";s:0:"";s:15:"bottom_1_margin";s:0:"";s:23:"bottom_1_headings_color";s:0:"";s:19:"bottom_1_text_color";s:0:"";s:19:"bottom_1_link_color";s:0:"";s:25:"bottom_1_link_hover_color";s:0:"";s:13:"footer_layout";s:2:"f1";s:17:"footer_full_width";b:0;s:13:"footer_to_top";b:1;s:18:"footer_top_widgets";b:1;s:26:"footer_top_widgets_columns";s:1:"4";s:20:"footer_top_widgets_1";s:36:"col-xs-12 col-sm-6 col-md-3 col-lg-3";s:20:"footer_top_widgets_2";s:36:"col-xs-12 col-sm-6 col-md-3 col-lg-3";s:20:"footer_top_widgets_3";s:36:"col-xs-12 col-sm-6 col-md-3 col-lg-3";s:20:"footer_top_widgets_4";s:36:"col-xs-12 col-sm-6 col-md-3 col-lg-3";s:21:"footer_headings_color";s:4:"#fff";s:28:"footer_top_heading_font_size";s:4:"14px";s:28:"footer_top_heading_uppercase";b:1;s:24:"footer_top_heading_style";s:7:"default";s:17:"footer_text_color";s:4:"#fff";s:17:"footer_link_color";s:4:"#fff";s:23:"footer_link_hover_color";s:7:"#5bd7c5";s:19:"footer_social_color";s:4:"#fff";s:25:"footer_social_hover_color";s:7:"#5bd7c5";s:23:"footer_top_border_style";s:4:"none";s:23:"footer_top_border_color";s:0:"";s:23:"footer_top_border_width";s:0:"";s:21:"background-footer-top";a:6:{s:16:"background-color";s:7:"#111111";s:16:"background-image";s:0:"";s:17:"background-repeat";s:0:"";s:15:"background-size";s:0:"";s:21:"background-attachment";s:0:"";s:19:"background-position";s:0:"";}s:22:"footer_top_bg_parallax";b:0;s:18:"footer_top_padding";s:8:"80px 0px";s:17:"footer_top_margin";s:1:"0";s:21:"footer_bottom_widgets";b:1;s:29:"footer_bottom_widgets_columns";s:1:"1";s:23:"footer_bottom_widgets_1";s:39:"col-xs-12 col-sm-12 col-md-12 col-lg-12";s:23:"footer_bottom_widgets_2";s:36:"col-xs-12 col-sm-6 col-md-6 col-lg-6";s:34:"text_align_footer_bottom_widgets_1";s:4:"left";s:34:"text_align_footer_bottom_widgets_2";s:6:"center";s:22:"footer_bottom_bg_color";s:7:"#9d9d9d";s:28:"footer_bottom_headings_color";s:7:"#ffffff";s:24:"footer_bottom_text_color";s:7:"#FFFFFF";s:24:"footer_bottom_link_color";s:7:"#FFFFFF";s:30:"footer_bottom_link_hover_color";s:7:"#FFFFFF";s:26:"footer_bottom_border_style";s:4:"none";s:26:"footer_bottom_border_color";s:0:"";s:26:"footer_bottom_border_width";s:0:"";s:21:"footer_bottom_padding";s:6:"37px 0";s:20:"footer_bottom_margin";s:1:"0";s:16:"button_uppercase";b:1;s:16:"button_font_size";s:4:"12px";s:17:"button_font_style";s:9:"400normal";s:21:"button_letter_spacing";s:3:"1px";s:18:"button_padding_top";s:4:"15px";s:20:"button_padding_right";s:4:"28px";s:21:"button_padding_bottom";s:4:"15px";s:19:"button_padding_left";s:4:"28px";s:13:"button_margin";s:1:"0";s:19:"button_border_style";s:5:"solid";s:19:"button_border_color";s:7:"#111111";s:25:"button_border_color_hover";s:7:"#59d7c5";s:19:"button_border_width";s:15:"2px 2px 2px 2px";s:20:"button_border_radius";s:4:"30px";s:26:"button_gradient_text_color";s:7:"#FFFFFF";s:32:"button_gradient_text_color_hover";s:7:"#FFFFFF";s:25:"button_gradient_top_color";a:2:{s:5:"color";s:7:"#111111";s:5:"alpha";s:1:"1";}s:31:"button_gradient_top_color_hover";a:2:{s:5:"color";s:7:"#59d7c5";s:5:"alpha";s:1:"1";}s:24:"button_primary_font_size";s:4:"12px";s:27:"button_primary_border_style";s:5:"solid";s:27:"button_primary_border_color";s:7:"#59d7c5";s:33:"button_primary_border_color_hover";s:7:"#111111";s:27:"button_primary_border_width";s:15:"2px 2px 2px 2px";s:28:"button_primary_border_radius";s:4:"30px";s:25:"button_primary_text_color";s:7:"#FFFFFF";s:31:"button_primary_text_color_hover";s:7:"#FFFFFF";s:31:"button_primary_background_color";a:2:{s:5:"color";s:7:"#59d7c5";s:5:"alpha";s:1:"1";}s:37:"button_primary_background_color_hover";a:2:{s:5:"color";s:7:"#111111";s:5:"alpha";s:1:"1";}s:16:"page_title_boxed";b:0;s:20:"page_title_bar_align";s:4:"left";s:16:"title_bar_length";s:2:"20";s:14:"title_bar_size";s:4:"16px";s:23:"page_title_image_height";s:4:"50px";s:16:"page_title_color";s:7:"#111111";s:23:"page_title_border_color";s:0:"";s:21:"page_title_border_top";b:0;s:24:"page_title_border_bottom";b:0;s:21:"background-page-title";a:6:{s:16:"background-color";s:7:"#f7f7f7";s:16:"background-image";s:4:"none";s:17:"background-repeat";s:7:"inherit";s:15:"background-size";s:7:"inherit";s:21:"background-attachment";s:7:"inherit";s:19:"background-position";s:7:"inherit";}s:22:"page_title_bg_parallax";b:0;s:18:"page_title_padding";s:6:"60px 0";s:17:"page_title_margin";s:9:"0 0 100px";s:15:"breadcrumb_show";b:0;s:17:"breadcrumb_mobile";b:0;s:21:"breadcrumb_text_align";s:5:"right";s:21:"breacrumb_home_prefix";s:4:"Home";s:22:"breadcrumbs_text_color";s:7:"#858585";s:24:"breadcrumbs_item_padding";s:10:"0 10px 0 0";s:21:"breadcrumbs_separator";s:1:"/";s:19:"preset_color_scheme";s:7:"preset1";s:13:"primary_color";s:7:"#111111";s:15:"secondary_color";s:7:"#59d7c5";s:13:"form_bg_color";s:11:"transparent";s:15:"form_text_color";s:7:"#868686";s:21:"form_text_color_hover";s:7:"#111111";s:19:"form_field_bg_color";s:7:"#FFFFFF";s:25:"form_field_bg_color_hover";s:7:"#FFFFFF";s:17:"form_border_style";s:5:"solid";s:17:"form_border_width";s:3:"1px";s:17:"form_border_color";s:7:"#eeeeee";s:23:"form_border_color_hover";s:7:"#59d7c5";s:11:"form_shadow";s:4:"none";s:17:"form_shadow_hover";s:4:"none";s:18:"form_border_radius";s:1:"0";s:16:"content_bg_color";s:11:"transparent";s:16:"bg_content_image";a:1:{s:3:"url";s:0:"";}s:15:"bg_content_full";b:1;s:17:"bg_content_repeat";s:6:"repeat";s:20:"main_content_padding";s:1:"0";s:23:"main_content_margin_top";s:1:"0";s:26:"main_content_margin_bottom";s:1:"0";s:10:"link_color";s:7:"#111111";s:16:"link_color_hover";s:7:"#59d7c5";s:12:"typography_0";a:8:{s:5:"color";s:4:"#888";s:11:"font-weight";s:3:"300";s:10:"font-style";s:0:"";s:11:"font-family";s:9:"Open Sans";s:6:"google";b:1;s:9:"font-size";s:4:"14px";s:11:"line-height";s:4:"26px";s:10:"text-align";s:0:"";}s:12:"typography_2";a:8:{s:5:"color";s:4:"#111";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:11:"font-family";s:10:"Montserrat";s:6:"google";b:1;s:9:"font-size";s:4:"13px";s:11:"line-height";s:4:"13px";s:10:"text-align";s:0:"";}s:21:"typography_selector_2";s:184:".cshero-dropdown > li > a, .btn, button, .button,.readmore ,.nav-label, .cshero-product-price, .add_to_cart_button, .wpb_tabs.style1 ul.wpb_tabs_nav li a,\r\n.primary-sidebar ul > li > a";s:13:"typography_h1";a:8:{s:5:"color";s:4:"#111";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:11:"font-family";s:10:"Montserrat";s:6:"google";b:1;s:9:"font-size";s:4:"36px";s:11:"line-height";s:4:"36px";s:10:"text-align";s:0:"";}s:13:"typography_h2";a:8:{s:5:"color";s:4:"#111";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:11:"font-family";s:10:"Montserrat";s:6:"google";b:1;s:9:"font-size";s:4:"30px";s:11:"line-height";s:4:"30px";s:10:"text-align";s:0:"";}s:13:"typography_h3";a:8:{s:5:"color";s:4:"#111";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:11:"font-family";s:10:"Montserrat";s:6:"google";b:1;s:9:"font-size";s:4:"24px";s:11:"line-height";s:4:"24px";s:10:"text-align";s:0:"";}s:13:"typography_h4";a:8:{s:5:"color";s:4:"#111";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:11:"font-family";s:10:"Montserrat";s:6:"google";b:1;s:9:"font-size";s:4:"20px";s:11:"line-height";s:4:"20px";s:10:"text-align";s:0:"";}s:13:"typography_h5";a:8:{s:5:"color";s:4:"#111";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:11:"font-family";s:10:"Montserrat";s:6:"google";b:1;s:9:"font-size";s:4:"14px";s:11:"line-height";s:4:"14px";s:10:"text-align";s:0:"";}s:13:"typography_h6";a:8:{s:5:"color";s:4:"#111";s:11:"font-weight";s:3:"400";s:10:"font-style";s:0:"";s:11:"font-family";s:10:"Montserrat";s:6:"google";b:1;s:9:"font-size";s:4:"13px";s:11:"line-height";s:4:"13px";s:10:"text-align";s:0:"";}s:12:"typography_3";a:8:{s:5:"color";s:0:"";s:11:"font-weight";s:0:"";s:11:"font-family";s:0:"";s:10:"font-style";s:0:"";s:6:"google";b:1;s:9:"font-size";s:0:"";s:11:"line-height";s:0:"";s:10:"text-align";s:0:"";}s:21:"typography_selector_3";s:0:"";s:12:"typography_4";a:8:{s:5:"color";s:0:"";s:11:"font-weight";s:0:"";s:10:"font-style";s:0:"";s:11:"font-family";s:0:"";s:6:"google";b:1;s:9:"font-size";s:0:"";s:11:"line-height";s:0:"";s:10:"text-align";s:0:"";}s:21:"typography_selector_4";s:0:"";s:12:"typography_5";a:8:{s:5:"color";s:0:"";s:11:"font-weight";s:0:"";s:10:"font-style";s:0:"";s:11:"font-family";s:0:"";s:6:"google";b:1;s:9:"font-size";s:0:"";s:11:"line-height";s:0:"";s:10:"text-align";s:0:"";}s:21:"typography_selector_5";s:0:"";s:12:"typography_6";a:8:{s:5:"color";s:0:"";s:11:"font-weight";s:0:"";s:10:"font-style";s:0:"";s:11:"font-family";s:0:"";s:6:"google";b:1;s:9:"font-size";s:0:"";s:11:"line-height";s:0:"";s:10:"text-align";s:0:"";}s:21:"typography_selector_6";s:0:"";s:12:"typography_7";a:8:{s:5:"color";s:0:"";s:11:"font-weight";s:0:"";s:10:"font-style";s:0:"";s:11:"font-family";s:0:"";s:6:"google";b:1;s:9:"font-size";s:0:"";s:11:"line-height";s:0:"";s:10:"text-align";s:0:"";}s:21:"typography_selector_7";s:0:"";s:12:"typography_8";a:8:{s:5:"color";s:0:"";s:11:"font-weight";s:0:"";s:10:"font-style";s:0:"";s:11:"font-family";s:0:"";s:6:"google";b:1;s:9:"font-size";s:0:"";s:11:"line-height";s:0:"";s:10:"text-align";s:0:"";}s:21:"typography_selector_8";s:0:"";s:12:"typography_9";a:8:{s:5:"color";s:0:"";s:11:"font-weight";s:0:"";s:10:"font-style";s:0:"";s:11:"font-family";s:0:"";s:6:"google";b:1;s:9:"font-size";s:0:"";s:11:"line-height";s:0:"";s:10:"text-align";s:0:"";}s:21:"typography_selector_9";s:0:"";s:13:"typography_10";a:8:{s:5:"color";s:0:"";s:11:"font-weight";s:0:"";s:10:"font-style";s:0:"";s:11:"font-family";s:0:"";s:6:"google";b:1;s:9:"font-size";s:0:"";s:11:"line-height";s:0:"";s:10:"text-align";s:0:"";}s:22:"typography_selector_10";s:0:"";s:13:"typography_11";a:8:{s:5:"color";s:0:"";s:11:"font-weight";s:0:"";s:10:"font-style";s:0:"";s:11:"font-family";s:0:"";s:6:"google";b:1;s:9:"font-size";s:0:"";s:11:"line-height";s:0:"";s:10:"text-align";s:0:"";}s:22:"typography_selector_11";s:0:"";s:13:"typography_12";a:8:{s:5:"color";s:0:"";s:11:"font-weight";s:0:"";s:10:"font-style";s:0:"";s:11:"font-family";s:0:"";s:6:"google";b:1;s:9:"font-size";s:0:"";s:11:"line-height";s:0:"";s:10:"text-align";s:0:"";}s:22:"typography_selector_12";s:0:"";s:11:"blog_layout";s:11:"right-fixed";s:18:"blog_title_heading";s:2:"h4";s:17:"blog_full_content";b:1;s:16:"introtext_length";s:2:"45";s:14:"search_heading";b:0;s:17:"search_page_title";b:1;s:27:"search_page_title_animation";b:0;s:18:"search_breadcrumbs";b:0;s:11:"search_view";s:7:"Excerpt";s:15:"archive_heading";b:0;s:18:"archive_page_title";b:1;s:28:"archive_page_title_animation";b:0;s:19:"archive_breadcrumbs";b:0;s:19:"archive_posts_title";b:1;s:20:"post_featured_images";b:1;s:17:"show_full_content";b:1;s:19:"archive_date_format";s:5:"M d Y";s:12:"archive_post";s:1:"1";s:15:"post_page_title";b:1;s:25:"post_page_title_animation";b:0;s:16:"post_breadcrumbs";b:0;s:15:"show_post_title";b:1;s:18:"show_comments_post";b:1;s:14:"show_tags_post";b:0;s:16:"show_social_post";b:1;s:20:"show_navigation_post";b:1;s:11:"post_layout";s:11:"right-fixed";s:10:"post_style";s:4:"base";s:16:"post_date_format";s:5:"M d Y";s:13:"related_posts";b:0;s:12:"page_heading";b:0;s:15:"page_page_title";b:1;s:25:"page_page_title_animation";b:1;s:16:"page_breadcrumbs";b:1;s:18:"show_comments_page";b:0;s:11:"page_layout";s:10:"full-fixed";s:20:"page_featured_images";b:1;s:20:"detail_title_heading";s:2:"h3";s:13:"detail_detail";b:1;s:11:"detail_date";b:1;s:13:"detail_author";b:1;s:15:"detail_category";b:1;s:11:"detail_tags";b:0;s:15:"detail_comments";b:1;s:11:"detail_like";b:1;s:13:"detail_social";b:1;s:11:"show_rating";b:0;s:24:"details_portfolio_layout";s:25:"vertical-floating-sidebar";s:32:"details_portfolio_gallery_layout";s:4:"grid";s:15:"enable_one_page";b:0;s:17:"page_scroll_speed";s:3:"750";s:18:"page_scroll_offset";s:1:"0";s:18:"page_scroll_easing";s:6:"jswing";s:16:"team_about_title";s:20:"A little about me...";s:25:"team_show_subtitleription";b:1;s:19:"team_excerpt_length";s:3:"100";s:17:"team_show_socials";b:1;s:21:"portfolio_about_title";s:17:"About the Project";s:30:"portfolio_show_subtitleription";b:1;s:24:"portfolio_excerpt_length";s:3:"100";s:27:"portfolio_show_custom_field";b:1;s:27:"portfolio_custom_field_icon";s:16:"fa fa-bookmark-o";s:28:"portfolio_custom_field_title";s:12:"Custom Field";s:19:"portfolio_show_date";b:1;s:19:"portfolio_date_icon";s:13:"fa fa-clock-o";s:20:"portfolio_date_title";s:4:"Date";s:23:"portfolio_show_category";b:1;s:23:"portfolio_category_icon";s:10:"fa fa-tags";s:24:"portfolio_category_title";s:8:"Category";s:19:"portfolio_show_like";b:1;s:19:"portfolio_like_icon";s:13:"fa fa-heart-o";s:20:"portfolio_like_title";s:5:"Likes";s:20:"portfolio_show_share";b:1;s:21:"portfolio_share_title";s:6:"Shares";s:16:"use_font_awesome";b:1;s:17:"use_font_ionicons";b:1;s:17:"use_font_pestroke";b:1;s:11:"404_heading";b:0;s:14:"404_page_title";b:0;s:24:"404_page_title_animation";b:0;s:15:"404_breadcrumbs";b:0;s:8:"404_type";s:7:"Default";s:9:"404_image";a:1:{s:3:"url";s:73:"http://localhost/Dalponte/wp-content/themes/wp_piero/images/404/spman.jpg";}s:11:"404_page_id";s:0:"";s:14:"woo_full_width";s:5:"boxed";s:19:"woo_number_products";s:1:"9";s:10:"custom_css";s:0:"";}', 'yes'),
(164, 'smof_data-transients', 'a:2:{s:14:"changed_values";a:0:{}s:9:"last_save";i:1436379345;}', 'yes'),
(167, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.2.1";}', 'yes'),
(168, 'newsletter_logger_secret', '5f635ccf', 'yes'),
(169, 'newsletter_main', 'a:9:{s:12:"smtp_enabled";i:0;s:11:"return_path";s:0:"";s:8:"reply_to";s:0:"";s:12:"sender_email";s:20:"newsletter@localhost";s:11:"sender_name";s:17:"Patricia Dalponte";s:6:"editor";i:0;s:13:"scheduler_max";i:100;s:12:"lock_message";s:120:"<p>This content is protected, only newsletter subscribers can access it. Subscribe now!</p>\r\n        {subscription_form}";s:7:"api_key";s:10:"e1d5be1c7f";}', 'yes'),
(170, 'cms_superheroes_client', '1', 'yes'),
(171, 'cms_superheroes_portfolio', '1', 'yes'),
(172, 'cms_superheroes_pricing', '1', 'yes'),
(173, 'cms_superheroes_team', '1', 'yes'),
(174, 'cms_superheroes_testimonials', '1', 'yes'),
(175, 'cms_superheroes_restaurant', '1', 'yes'),
(176, 'cms_superheroes_events', '1', 'yes'),
(177, 'vc_version', '4.6', 'yes'),
(178, 'newsletter_extension_versions', 'a:0:{}', 'no'),
(179, 'newsletter_main_version', '1.2.2', 'yes'),
(180, 'newsletter', 'a:19:{s:12:"profile_text";s:305:"<p>Change your subscription preferences to get what you are most interested in.</p>\r\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\r\n    </p>\r\n    {profile_form}\r\n    <p>To cancel your subscription, <a href=''{unsubscription_confirm_url}''>click here</a>.</p>";s:21:"profile_email_changed";s:123:"Your email has been changed, an activation email has been sent. Please follow the instructions to activate the new address.";s:13:"profile_error";s:147:"Your email is not valid or already in use by another subscriber or another generic error has been found. Check your data or contact the site owner.";s:10:"error_text";s:173:"<p>This subscription can''t be completed, sorry. The email address is blocked or already subscribed. You should contact the owner to unlock that email address. Thank you.</p>";s:22:"already_confirmed_text";s:99:"<p>This email address is already subscribed, anyway a welcome email has been resent. Thank you.</p>";s:18:"subscribe_wp_users";i:0;s:17:"subscription_text";s:19:"{subscription_form}";s:17:"confirmation_text";s:271:"<p>You have successfully subscribed to the newsletter. You''ll\r\nreceive a confirmation email in few minutes. Please follow the\r\nlink in it to confirm your subscription. If the email takes\r\nmore than 15 minutes to appear in your mailbox, please check\r\nyour spam folder.</p>";s:20:"confirmation_subject";s:53:"Please confirm subscription - {blog_title} newsletter";s:20:"confirmation_message";s:434:"<p>Hi {name},</p>\r\n<p>A newsletter subscription request for this email address was\r\nreceived. Please confirm it by <a href="{subscription_confirm_url}"><strong>clicking here</strong></a>. If you cannot\r\nclick the link, please use the following link:</p>\r\n\r\n<p>{subscription_confirm_url}</p>\r\n\r\n<p>If you did not make this subscription request, just ignore this\r\nmessage.</p>\r\n<p>Thank you!<br>\r\n<a href=''{blog_url}''>{blog_url}</a></p>";s:14:"confirmed_text";s:62:"<p>Your subscription has been confirmed! Thank you {name}!</p>";s:17:"confirmed_subject";s:22:"Welcome aboard, {name}";s:17:"confirmed_message";s:281:"<p>This message confirms your subscription to the {blog_title} newsletter.</p>\r\n<p>Thank you!<br>\r\n<a href=''{blog_url}''>{blog_url}</a></p>\r\n<p>To unsubscribe, <a href=''{unsubscription_url}''>click here</a>.  To change subscriber options,\r\n<a href=''{profile_url}''>click here</a>.</p>";s:18:"confirmed_tracking";s:0:"";s:19:"unsubscription_text";s:111:"<p>Please confirm that you want to unsubscribe by <a href=''{unsubscription_confirm_url}''>clicking here</a>.</p>";s:25:"unsubscription_error_text";s:118:"<p>The subscriber was not found, it probably has already been removed. No further actions are required. Thank you.</p>";s:17:"unsubscribed_text";s:53:"<p>Your subscription has been deleted. Thank you.</p>";s:20:"unsubscribed_subject";s:8:"Goodbye!";s:20:"unsubscribed_message";s:198:"<p>This message confirms that you have unsubscribed from the {blog_title} newsletter.</p>\r\n<p>You''re welcome to sign up again anytime.</p>\r\n<p>Thank you!<br>\r\n<a href=''{blog_url}''>{blog_url}</a></p>";}', 'yes'),
(181, 'newsletter_profile', 'a:61:{s:5:"email";s:5:"Email";s:11:"email_error";s:24:"The email is not correct";s:4:"name";s:4:"Name";s:10:"name_error";s:23:"The name is not correct";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:28:"The last name is not correct";s:14:"surname_status";i:0;s:3:"sex";s:3:"I''m";s:7:"privacy";s:51:"Subscribing I accept the privacy rules of this site";s:13:"privacy_error";s:37:"You must accept the privacy statement";s:14:"privacy_status";i:0;s:9:"subscribe";s:9:"Subscribe";s:4:"save";s:4:"Save";s:12:"title_female";s:4:"Mrs.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:4:"None";s:13:"list_1_status";i:0;s:13:"list_2_status";i:0;s:13:"list_3_status";i:0;s:13:"list_4_status";i:0;s:13:"list_5_status";i:0;s:13:"list_6_status";i:0;s:13:"list_7_status";i:0;s:13:"list_8_status";i:0;s:13:"list_9_status";i:0;s:14:"list_10_status";i:0;s:14:"list_11_status";i:0;s:14:"list_12_status";i:0;s:14:"list_13_status";i:0;s:14:"list_14_status";i:0;s:14:"list_15_status";i:0;s:14:"list_16_status";i:0;s:14:"list_17_status";i:0;s:14:"list_18_status";i:0;s:14:"list_19_status";i:0;s:14:"list_20_status";i:0;s:16:"profile_1_status";i:0;s:16:"profile_2_status";i:0;s:16:"profile_3_status";i:0;s:16:"profile_4_status";i:0;s:16:"profile_5_status";i:0;s:16:"profile_6_status";i:0;s:16:"profile_7_status";i:0;s:16:"profile_8_status";i:0;s:16:"profile_9_status";i:0;s:17:"profile_10_status";i:0;s:17:"profile_11_status";i:0;s:17:"profile_12_status";i:0;s:17:"profile_13_status";i:0;s:17:"profile_14_status";i:0;s:17:"profile_15_status";i:0;s:17:"profile_16_status";i:0;s:17:"profile_17_status";i:0;s:17:"profile_18_status";i:0;s:17:"profile_19_status";i:0;s:17:"profile_20_status";i:0;}', 'yes'),
(182, 'newsletter_subscription_version', '1.1.5', 'yes'),
(183, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"default";}', 'yes'),
(184, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(185, 'newsletter_emails_version', '1.1.1', 'yes'),
(186, 'newsletter_users', 'a:0:{}', 'yes'),
(189, 'newsletter_users_version', '1.0.4', 'yes'),
(190, 'newsletter_statistics', 'a:1:{s:3:"key";s:32:"63a38bfd6cf89ec88067b25b4a8e590f";}', 'yes'),
(191, 'newsletter_statistics_version', '1.1.1', 'yes'),
(192, 'newsletter_feed', 'a:0:{}', 'yes'),
(193, 'newsletter_feed_version', '1.0.0', 'yes'),
(194, 'revslider_checktables', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(196, 'newsletter_diagnostic_cron_calls', 'a:300:{i:0;i:1436380954;i:1;i:1436381012;i:2;i:1436381252;i:3;i:1436381314;i:4;i:1436381552;i:5;i:1436381612;i:6;i:1436381853;i:7;i:1436381912;i:8;i:1436382153;i:9;i:1436382212;i:10;i:1436382452;i:11;i:1436382512;i:12;i:1436382752;i:13;i:1436382816;i:14;i:1436383052;i:15;i:1436383112;i:16;i:1436383353;i:17;i:1436383413;i:18;i:1436383652;i:19;i:1436383712;i:20;i:1436383952;i:21;i:1436384012;i:22;i:1436384253;i:23;i:1436384312;i:24;i:1436384372;i:25;i:1436384553;i:26;i:1436384602;i:27;i:1436384915;i:28;i:1436385157;i:29;i:1436385224;i:30;i:1436385407;i:31;i:1436385527;i:32;i:1436385796;i:33;i:1436386051;i:34;i:1436386111;i:35;i:1436386352;i:36;i:1436386412;i:37;i:1436386626;i:38;i:1436386713;i:39;i:1436386948;i:40;i:1436387064;i:41;i:1436387127;i:42;i:1436387295;i:43;i:1436387611;i:44;i:1436387935;i:45;i:1436388115;i:46;i:1436388222;i:47;i:1436388419;i:48;i:1436388577;i:49;i:1436388731;i:50;i:1436388800;i:51;i:1436389031;i:52;i:1436389114;i:53;i:1436389114;i:54;i:1436389310;i:55;i:1436389413;i:56;i:1436389611;i:57;i:1436389702;i:58;i:1436389910;i:59;i:1436390012;i:60;i:1436390222;i:61;i:1436390326;i:62;i:1436390510;i:63;i:1436390603;i:64;i:1436390810;i:65;i:1436390899;i:66;i:1436391144;i:67;i:1436391204;i:68;i:1436391243;i:69;i:1436391425;i:70;i:1436391516;i:71;i:1436391708;i:72;i:1436391847;i:73;i:1436392028;i:74;i:1436392104;i:75;i:1436392306;i:76;i:1436392416;i:77;i:1436392606;i:78;i:1436392704;i:79;i:1436392928;i:80;i:1436393018;i:81;i:1436393208;i:82;i:1436453859;i:83;i:1436453922;i:84;i:1436454111;i:85;i:1436454281;i:86;i:1436454480;i:87;i:1436454529;i:88;i:1436454730;i:89;i:1436454849;i:90;i:1436455088;i:91;i:1436455120;i:92;i:1436455428;i:93;i:1436455429;i:94;i:1436455706;i:95;i:1436456004;i:96;i:1436456325;i:97;i:1436456608;i:98;i:1436456905;i:99;i:1436457207;i:100;i:1436457509;i:101;i:1436457803;i:102;i:1436458110;i:103;i:1436458110;i:104;i:1436458402;i:105;i:1436458730;i:106;i:1436459002;i:107;i:1436459303;i:108;i:1436459599;i:109;i:1436459900;i:110;i:1436460202;i:111;i:1436460504;i:112;i:1436460805;i:113;i:1436461107;i:114;i:1436461116;i:115;i:1436461428;i:116;i:1436461724;i:117;i:1436462027;i:118;i:1436462302;i:119;i:1436462616;i:120;i:1436462917;i:121;i:1436463202;i:122;i:1436463501;i:123;i:1436463816;i:124;i:1436464116;i:125;i:1436464408;i:126;i:1436464700;i:127;i:1436464721;i:128;i:1436464722;i:129;i:1436465000;i:130;i:1436465309;i:131;i:1436465634;i:132;i:1436465906;i:133;i:1436466240;i:134;i:1436466545;i:135;i:1436466907;i:136;i:1436467150;i:137;i:1436470815;i:138;i:1436471023;i:139;i:1436471326;i:140;i:1436471627;i:141;i:1436471910;i:142;i:1436472207;i:143;i:1436472532;i:144;i:1436472799;i:145;i:1436473101;i:146;i:1436473401;i:147;i:1436473521;i:148;i:1436473701;i:149;i:1436473703;i:150;i:1436474006;i:151;i:1436474345;i:152;i:1436474430;i:153;i:1436474682;i:154;i:1436540513;i:155;i:1436540583;i:156;i:1436540667;i:157;i:1436540956;i:158;i:1436541222;i:159;i:1436541504;i:160;i:1436541546;i:161;i:1436541813;i:162;i:1436542112;i:163;i:1436542426;i:164;i:1436542701;i:165;i:1436543027;i:166;i:1436543328;i:167;i:1436543624;i:168;i:1436543901;i:169;i:1436544126;i:170;i:1436544205;i:171;i:1436544514;i:172;i:1436544813;i:173;i:1436545134;i:174;i:1436545412;i:175;i:1436545748;i:176;i:1436546054;i:177;i:1436546300;i:178;i:1436546627;i:179;i:1436546960;i:180;i:1436547306;i:181;i:1436547503;i:182;i:1436547747;i:183;i:1436547817;i:184;i:1436548146;i:185;i:1436548418;i:186;i:1436548418;i:187;i:1436548705;i:188;i:1436549022;i:189;i:1436549327;i:190;i:1436549620;i:191;i:1436549899;i:192;i:1436550215;i:193;i:1436550519;i:194;i:1436550801;i:195;i:1436551171;i:196;i:1436551410;i:197;i:1436551701;i:198;i:1436552050;i:199;i:1436552342;i:200;i:1436555991;i:201;i:1436555992;i:202;i:1436556273;i:203;i:1436556277;i:204;i:1436556512;i:205;i:1436556512;i:206;i:1436556824;i:207;i:1436557114;i:208;i:1436557175;i:209;i:1436557407;i:210;i:1436557708;i:211;i:1436558003;i:212;i:1436558305;i:213;i:1436558631;i:214;i:1436558915;i:215;i:1436559250;i:216;i:1436559542;i:217;i:1436559602;i:218;i:1436559842;i:219;i:1436559962;i:220;i:1436560147;i:221;i:1436560448;i:222;i:1436560782;i:223;i:1436560786;i:224;i:1436561026;i:225;i:1436561301;i:226;i:1436561630;i:227;i:1436561637;i:228;i:1436561923;i:229;i:1436562211;i:230;i:1436562412;i:231;i:1436562505;i:232;i:1436562880;i:233;i:1436563113;i:234;i:1436563209;i:235;i:1436563400;i:236;i:1436563705;i:237;i:1436564056;i:238;i:1436564319;i:239;i:1436564608;i:240;i:1436564901;i:241;i:1436565202;i:242;i:1436565206;i:243;i:1436565504;i:244;i:1436565808;i:245;i:1436565809;i:246;i:1436566182;i:247;i:1436566471;i:248;i:1436566709;i:249;i:1436566832;i:250;i:1436800154;i:251;i:1436800164;i:252;i:1436800227;i:253;i:1436800400;i:254;i:1436800742;i:255;i:1436801008;i:256;i:1436801358;i:257;i:1436801605;i:258;i:1436801938;i:259;i:1436802223;i:260;i:1436802523;i:261;i:1436802826;i:262;i:1436803103;i:263;i:1436803404;i:264;i:1436803737;i:265;i:1436803741;i:266;i:1436803821;i:267;i:1436803999;i:268;i:1436804002;i:269;i:1436804309;i:270;i:1436804609;i:271;i:1436804916;i:272;i:1436805201;i:273;i:1436805605;i:274;i:1436805645;i:275;i:1436805650;i:276;i:1436805908;i:277;i:1436805980;i:278;i:1436806112;i:279;i:1436806454;i:280;i:1436806509;i:281;i:1436806809;i:282;i:1436806814;i:283;i:1436807437;i:284;i:1436807738;i:285;i:1436808022;i:286;i:1436808336;i:287;i:1436808619;i:288;i:1436808917;i:289;i:1436809248;i:290;i:1436809596;i:291;i:1436809669;i:292;i:1436809674;i:293;i:1436809814;i:294;i:1436809815;i:295;i:1436810240;i:296;i:1436810443;i:297;i:1436810501;i:298;i:1436810706;i:299;i:1436811070;}', 'no'),
(201, 'revslider-update-check-short', '1436800107', 'yes'),
(251, '_site_transient_timeout_browser_136cca92af65e57cdff6fa0749e579e4', '1436902412', 'yes'),
(252, '_site_transient_browser_136cca92af65e57cdff6fa0749e579e4', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"43.0.2357.130";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(299, 'woocommerce_default_country', 'GB', 'yes'),
(300, 'woocommerce_allowed_countries', 'all', 'yes'),
(301, 'woocommerce_specific_allowed_countries', '', 'yes'),
(302, 'woocommerce_demo_store', 'no', 'yes'),
(303, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(304, 'woocommerce_api_enabled', 'yes', 'yes'),
(305, 'woocommerce_currency', 'GBP', 'yes'),
(306, 'woocommerce_currency_pos', 'left', 'yes'),
(307, 'woocommerce_price_thousand_sep', ',', 'yes'),
(308, 'woocommerce_price_decimal_sep', '.', 'yes'),
(309, 'woocommerce_price_num_decimals', '2', 'yes'),
(310, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(311, 'woocommerce_enable_chosen', 'yes', 'no'),
(312, 'woocommerce_shop_page_id', '5', 'yes'),
(313, 'woocommerce_shop_page_display', '', 'yes'),
(314, 'woocommerce_category_archive_display', '', 'yes'),
(315, 'woocommerce_default_catalog_orderby', 'title', 'yes'),
(316, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(317, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(318, 'woocommerce_weight_unit', 'kg', 'yes'),
(319, 'woocommerce_dimension_unit', 'cm', 'yes'),
(320, 'woocommerce_enable_review_rating', 'yes', 'no'),
(321, 'woocommerce_review_rating_required', 'yes', 'no'),
(322, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(323, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(324, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:4:"crop";b:1;}', 'yes'),
(325, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(326, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"90";s:6:"height";s:2:"90";s:4:"crop";i:1;}', 'yes'),
(327, 'woocommerce_file_download_method', 'force', 'no'),
(328, 'woocommerce_downloads_require_login', 'no', 'no'),
(329, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(330, 'woocommerce_manage_stock', 'yes', 'yes'),
(331, 'woocommerce_hold_stock_minutes', '60', 'no'),
(332, 'woocommerce_notify_low_stock', 'yes', 'no'),
(333, 'woocommerce_notify_no_stock', 'yes', 'no'),
(334, 'woocommerce_stock_email_recipient', 'info@lieison.com', 'no'),
(335, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(336, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(337, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(338, 'woocommerce_stock_format', '', 'yes'),
(339, 'woocommerce_calc_taxes', 'no', 'yes'),
(340, 'woocommerce_prices_include_tax', 'no', 'yes'),
(341, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(342, 'woocommerce_default_customer_address', 'base', 'yes'),
(343, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(344, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(345, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(346, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(347, 'woocommerce_price_display_suffix', '', 'yes'),
(348, 'woocommerce_tax_display_cart', 'excl', 'no'),
(349, 'woocommerce_tax_total_display', 'itemized', 'no'),
(350, 'woocommerce_enable_coupons', 'yes', 'no'),
(351, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(352, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(353, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(354, 'woocommerce_cart_page_id', '6', 'yes'),
(355, 'woocommerce_checkout_page_id', '7', 'yes'),
(356, 'woocommerce_terms_page_id', '', 'no'),
(357, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(358, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(359, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(360, 'woocommerce_calc_shipping', 'yes', 'yes'),
(361, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(362, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(363, 'woocommerce_shipping_method_format', '', 'no'),
(364, 'woocommerce_ship_to_billing', 'yes', 'no'),
(365, 'woocommerce_ship_to_billing_address_only', 'no', 'no'),
(366, 'woocommerce_ship_to_countries', '', 'yes'),
(367, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(368, 'woocommerce_myaccount_page_id', '8', 'yes'),
(369, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(370, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(371, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(372, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(373, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(374, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(375, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(376, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(377, 'woocommerce_registration_generate_username', 'yes', 'no'),
(378, 'woocommerce_registration_generate_password', 'no', 'no'),
(379, 'woocommerce_email_from_name', 'Patricia Dalponte', 'no'),
(380, 'woocommerce_email_from_address', 'info@lieison.com', 'no'),
(381, 'woocommerce_email_header_image', '', 'no'),
(382, 'woocommerce_email_footer_text', 'Patricia Dalponte - Powered by WooCommerce', 'no'),
(383, 'woocommerce_email_base_color', '#557da1', 'no'),
(384, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(385, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(386, 'woocommerce_email_text_color', '#505050', 'no'),
(390, '_wc_needs_pages', '1', 'yes'),
(394, '_transient_timeout_woocommerce_processing_order_count', '1467836436', 'no'),
(395, '_transient_woocommerce_processing_order_count', '0', 'no'),
(397, '_transient_timeout_wc_upgrade_notice_2.1.12', '1436386845', 'no'),
(398, '_transient_wc_upgrade_notice_2.1.12', '<div class="wc_plugin_upgrade_notice">2.3.0 is a major update so it is important that you make backups, test extensions and your theme prior to updating, and ensure extensions are 2.3 compatible. Developers should catch up with <a href="http://develop.woothemes.com/">develop.woothemes.com</a> to see what has been happening in core.</div> ', 'no'),
(399, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(402, '_transient_woocommerce_cache_excluded_uris', 'a:0:{}', 'yes'),
(403, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(407, 'woocommerce_ship_to_destination', 'billing', 'no'),
(410, 'woocommerce_admin_notices', 'a:1:{i:0;s:19:"translation_upgrade";}', 'yes'),
(417, 'revslider-static-css', '', 'yes'),
(428, '_transient_timeout_wc_low_stock_count', '1438892681', 'no'),
(429, '_transient_wc_low_stock_count', '0', 'no'),
(430, '_transient_timeout_wc_outofstock_count', '1438892681', 'no'),
(431, '_transient_wc_outofstock_count', '0', 'no'),
(436, 'woocommerce_version', '2.3.13', 'yes'),
(441, 'woocommerce_db_version', '2.3.13', 'yes'),
(442, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(444, 'revslider-valid-notice', 'false', 'yes'),
(448, 'woocommerce_allow_tracking', 'yes', 'yes'),
(449, 'woocommerce_tracker_last_send', '1436300845', 'yes'),
(453, '_site_transient_timeout_available_translations', '1436311729', 'yes'),
(454, '_site_transient_available_translations', 'a:58:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:57:37";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 06:36:25";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 18:55:51";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-30 08:59:10";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-03 00:26:43";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-05 15:36:06";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 13:39:01";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-05 20:09:08";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-15 10:49:37";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-12 09:59:32";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.5/haz.zip";s:3:"iso";a:1:{i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 19:32:58";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 08:22:08";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:43:50";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-23 18:44:13";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:59:29";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-08 07:10:14";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-10 17:07:58";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-09 10:15:05";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-23 22:36:27";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-31 11:58:44";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 09:29:23";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-29 08:27:12";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-06 10:10:09";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 07:01:28";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-05 10:51:50";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-29 06:37:03";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(455, 'WPLANG', 'es_ES', 'yes'),
(493, '_site_transient_timeout_browser_15410307a78e759e4ece7f4a71b65018', '1436974300', 'yes'),
(494, '_site_transient_browser_15410307a78e759e4ece7f4a71b65018', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"43.0.2357.132";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(522, 'wpb_js_composer_license_activation_notified', 'yes', 'yes'),
(666, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(667, 'widget_widget_cart_search', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(668, 'widget_cs_categories_content', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(669, 'widget_cs_instagram_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(670, 'widget_ww_news_tabs', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(671, 'widget_cs_recent_comments', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(672, 'widget_recent-posts-v1', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(673, 'widget_cs_recent_post_v2', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(674, 'widget_cs-tweets-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(675, 'widget_cs_facebook_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(676, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(677, 'widget_newsletterwidget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(678, 'widget_newslettercustomwidget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(679, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(680, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(681, 'widget_rev-slider-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(683, 'widget_cs_social_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(685, 'widget_woo_categories_filter', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(686, 'widget_woocommerce_widget_cart', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(687, 'widget_woocommerce_layered_nav', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(688, 'widget_woocommerce_layered_nav_filters', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(689, 'widget_woocommerce_price_filter', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(690, 'widget_woocommerce_product_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(691, 'widget_woocommerce_products', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(692, 'widget_woocommerce_product_search', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(693, 'widget_woocommerce_product_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(694, 'widget_woocommerce_recently_viewed_products', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(695, 'widget_woocommerce_recent_reviews', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(696, 'widget_woocommerce_top_rated_products', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(892, '_transient_timeout_redux-spectrum-css_style_cdn_is_up', '1436472364', 'no'),
(893, '_transient_redux-spectrum-css_style_cdn_is_up', '1', 'no'),
(894, '_transient_timeout_qtip-css_style_cdn_is_up', '1436472368', 'no'),
(895, '_transient_qtip-css_style_cdn_is_up', '1', 'no'),
(896, '_transient_timeout_select2-js_script_cdn_is_up', '1436472370', 'no'),
(897, '_transient_select2-js_script_cdn_is_up', '1', 'no'),
(898, '_transient_timeout_qtip-js_script_cdn_is_up', '1436472371', 'no'),
(899, '_transient_qtip-js_script_cdn_is_up', '1', 'no'),
(900, '_transient_timeout_redux-spectrum-js_script_cdn_is_up', '1436472372', 'no'),
(901, '_transient_redux-spectrum-js_script_cdn_is_up', '1', 'no'),
(902, '_transient_timeout_ace-editor-js_script_cdn_is_up', '1436472374', 'no'),
(903, '_transient_ace-editor-js_script_cdn_is_up', '1', 'no'),
(978, '_transient_timeout_select2-css_style_cdn_is_up', '1436475993', 'no'),
(979, '_transient_select2-css_style_cdn_is_up', '1', 'no'),
(983, '_transient_timeout_redux_tracking_cache', '1436994415', 'no'),
(984, '_transient_redux_tracking_cache', '1', 'no'),
(1084, 'revslider-latest-version', '4.6.93', 'yes'),
(1085, 'revslider-notices', 'a:0:{}', 'yes'),
(1098, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1436465571', 'yes'),
(1099, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(1107, 'uaf_css_updated_timestamp', '1436458015', 'yes'),
(1108, 'uaf_current_version', '4.3.4', 'yes'),
(1109, 'uaf_font_data', '{"150709040632":{"font_name":"Essence Sans Bold","font_path":"150709040631Essence-Sans-Bold"}}', 'yes'),
(1113, 'uaf_server_status', 'test_successfull', 'yes'),
(1114, 'uaf_server_msg', '', 'yes'),
(1124, 'uaf_font_implement', '{"150709040655":{"font_key":"150709040632","font_elements":"body, h1, h2, h3, h4, h5, h6, p, blockquote, li, a"}}', 'yes'),
(1153, 'uaf_api_key', '6FGSKI7IG3TTHNLTA0VPXIN150709110605', 'yes'),
(1840, 'woocommerce_language_pack_version', 'a:2:{i:0;s:6:"2.3.13";i:1;s:5:"es_ES";}', 'yes'),
(1841, '_site_transient_timeout_theme_roots', '1436802006', 'yes'),
(1842, '_site_transient_theme_roots', 'a:2:{s:13:"twentyfifteen";s:7:"/themes";s:8:"wp_piero";s:7:"/themes";}', 'yes'),
(1844, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.2.2";s:12:"last_checked";i:1436800223;}', 'yes'),
(1845, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1436800224;}', 'yes'),
(1846, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1436809677;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.2.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:62:"http://downloads.wordpress.org/plugin/contact-form-7.4.2.1.zip";}s:21:"newsletter/plugin.php";O:8:"stdClass":6:{s:2:"id";s:4:"8171";s:4:"slug";s:10:"newsletter";s:6:"plugin";s:21:"newsletter/plugin.php";s:11:"new_version";s:5:"3.8.4";s:3:"url";s:41:"https://wordpress.org/plugins/newsletter/";s:7:"package";s:52:"http://downloads.wordpress.org/plugin/newsletter.zip";}s:29:"use-any-font/use-any-font.php";O:8:"stdClass":6:{s:2:"id";s:5:"36704";s:4:"slug";s:12:"use-any-font";s:6:"plugin";s:29:"use-any-font/use-any-font.php";s:11:"new_version";s:5:"4.3.4";s:3:"url";s:43:"https://wordpress.org/plugins/use-any-font/";s:7:"package";s:60:"http://downloads.wordpress.org/plugin/use-any-font.4.3.4.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:6:"2.3.13";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"http://downloads.wordpress.org/plugin/woocommerce.2.3.13.zip";}}}', 'yes'),
(1851, '_transient_timeout_wc_admin_report', '1436886818', 'no'),
(1852, '_transient_wc_admin_report', 'a:1:{s:32:"9315b8222ac0642a6f17a000e5d0ffc6";a:0:{}}', 'no'),
(1853, '_transient_timeout_plugin_slugs', '1436896082', 'no'),
(1854, '_transient_plugin_slugs', 'a:7:{i:0;s:33:"cmssuperheroes/cmssuperheroes.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:21:"newsletter/plugin.php";i:3;s:23:"revslider/revslider.php";i:4;s:29:"use-any-font/use-any-font.php";i:5;s:27:"woocommerce/woocommerce.php";i:6;s:27:"js_composer/js_composer.php";}', 'no'),
(1855, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1436843649', 'no'),
(1856, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(2052, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=409 ;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page.php'),
(2, 4, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(3, 4, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:30:"[your-name] <info@lieison.com>";s:4:"body";s:180:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Patricia Dalponte (http://localhost/Dalponte)";s:9:"recipient";s:16:"info@lieison.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:36:"Patricia Dalponte <info@lieison.com>";s:4:"body";s:122:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Patricia Dalponte (http://localhost/Dalponte)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:26:"Reply-To: info@lieison.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 4, '_messages', 'a:6:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:31:"Please fill the required field.";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'en_US'),
(8, 2, '_edit_lock', '1436810775:1'),
(9, 2, '_wpb_vc_js_status', 'true'),
(10, 2, 'cs_layout', '1'),
(11, 2, 'cs_page_layout', ''),
(12, 2, 'cs_sidebar_left', ''),
(13, 2, 'cs_sidebar_right', ''),
(14, 2, 'cs_onepage', ''),
(15, 2, 'cs_onepage_speed', ''),
(16, 2, 'cs_onepage_offset', ''),
(17, 2, 'cs_onepage_easing', 'jswing'),
(18, 2, 'cs_body_bg_color', ''),
(19, 2, 'cs_body_bg_image', ''),
(20, 2, 'cs_body_bg_repeat', ''),
(21, 2, 'cs_body_bg_size', ''),
(22, 2, 'cs_body_bg_attachment', ''),
(23, 2, 'cs_body_bg_position', ''),
(24, 2, 'cs_body_custom_class', ''),
(25, 2, 'cs_page_header', ''),
(26, 2, 'cs_header_setting', '0'),
(27, 2, 'cs_header_full_width', ''),
(28, 2, 'cs_header_position', ''),
(29, 2, 'cs_header_top_widgets', '0'),
(30, 2, 'cs_enable_hidden_sidebar', ''),
(31, 2, 'cs_header_logo_image', ''),
(32, 2, 'cs_header_fixed_menu_color', ''),
(33, 2, 'cs_header_fixed_menu_color_hover', ''),
(34, 2, 'cs_header_fixed_menu_color_active', ''),
(35, 2, 'cs_header_fixed_top', ''),
(36, 2, 'cs_header_border_bottom', ''),
(37, 2, 'cs_header_border_bottom_style', 'none'),
(38, 2, 'cs_header_border_bottom_height', ''),
(39, 2, 'cs_header_border_bottom_color', ''),
(40, 2, 'cs_header_bg_color', ''),
(41, 2, 'cs_header_bg_image', ''),
(42, 2, 'cs_header_bg_repeat', ''),
(43, 2, 'cs_header_bg_size', ''),
(44, 2, 'cs_header_bg_attachment', ''),
(45, 2, 'cs_header_bg_position', ''),
(46, 2, 'cs_header_bg_parallax', ''),
(47, 2, 'cs_show_sticky_header', ''),
(48, 2, 'cs_sticky_header_full_width', ''),
(49, 2, 'cs_nav_height', ''),
(50, 2, 'cs_menu_item_button', ''),
(51, 2, 'cs_menu_position', ''),
(52, 2, 'cs_main_navigation', ''),
(53, 2, 'cs_top_navigation', ''),
(54, 2, 'cs_left_navigation', ''),
(55, 2, 'cs_right_navigation', ''),
(56, 2, 'cs_404_pages', ''),
(57, 2, 'cs_sticky_navigation', ''),
(58, 2, 'cs_page_title_setting', '1'),
(59, 2, 'cs_page_title_enable', '0'),
(60, 2, 'cs_title_bar_align', ''),
(61, 2, 'cs_title_bar_color', ''),
(62, 2, 'cs_page_title_custom_size', ''),
(63, 2, 'cs_page_title_custom_text', ''),
(64, 2, 'cs_page_title_custom_subheader_text', ''),
(65, 2, 'cs_page_title_custom_subheader_text_color', ''),
(66, 2, 'cs_page_title_background_color', ''),
(67, 2, 'cs_page_title_bg', ''),
(68, 2, 'cs_page_title_bg_repeat', ''),
(69, 2, 'cs_page_title_bg_size', ''),
(70, 2, 'cs_page_title_bg_attachment', ''),
(71, 2, 'cs_page_title_bg_position', ''),
(72, 2, 'cs_page_title_bg_parallax', ''),
(73, 2, 'cs_page_title_padding', ''),
(74, 2, 'cs_page_title_margin', ''),
(75, 2, 'cs_page_title_class', ''),
(76, 2, 'cs_breadcrumb', '0'),
(77, 2, 'cs_breadcrumb_text_align', ''),
(78, 2, 'cs_breadcrumb_color', ''),
(79, 2, 'cs_breadcrumb_text', ''),
(80, 2, 'cs_footer_top_widgets', ''),
(81, 2, 'cs_footer_top_bg_color', 'rgba(3, 148, 141, 1)'),
(82, 2, 'cs_footer_top_bg_image', ''),
(83, 2, 'cs_footer_top_bg_repeat', ''),
(84, 2, 'cs_footer_top_bg_size', ''),
(85, 2, 'cs_footer_top_bg_attachment', ''),
(86, 2, 'cs_footer_top_bg_position', ''),
(87, 2, 'cs_footer_top_bg_parallax', ''),
(88, 2, 'cs_footer_bottom_enable', '1'),
(89, 2, 'cs_page_category', ''),
(90, 2, 'cs_portfolio_category', ''),
(91, 2, 'cs_page_limit', ''),
(92, 2, 'cs_page_masonry_columns', '1'),
(93, 2, 'cs_page_masonry_loadmore', ''),
(94, 2, 'cs_page_masonry_filter', ''),
(95, 2, 'cs_header_top2_widgets', ''),
(96, 2, 'cs_header_top2_widgets_border_color', ''),
(97, 2, 'cs_logo', ''),
(98, 2, 'cs_logo_alignment', ''),
(99, 2, 'cs_margin_logo', ''),
(100, 2, 'cs_padding_logo', ''),
(101, 2, 'cs_arrow_parents_item_menu', ''),
(102, 2, 'cs_header3_menu_left_position', 'right'),
(103, 2, 'cs_header3_menu_right_position', 'left'),
(104, 2, 'cs_header_content_widgets', ''),
(105, 2, 'cs_header_content_widgets1', '1'),
(106, 2, 'cs_header_content_widgets2', '1'),
(107, 2, 'cs_header_fixed_content_widgets', '1'),
(108, 2, 'price', ''),
(109, 2, 'value', ''),
(110, 2, 'option_1', ''),
(111, 2, 'option_2', ''),
(112, 2, 'option_3', ''),
(113, 2, 'option_4', ''),
(114, 2, 'option_5', ''),
(115, 2, 'option_6', ''),
(116, 2, 'option_7', ''),
(117, 2, 'option_8', ''),
(118, 2, 'option_9', ''),
(119, 2, 'option_10', ''),
(120, 2, 'button_url', ''),
(121, 2, 'button_text', ''),
(122, 2, 'is_feature', ''),
(123, 2, 'best_value', ''),
(124, 2, 'team_position', ''),
(125, 2, 'team_qualification', ''),
(126, 2, 'team_experience', ''),
(127, 2, 'team_contact_info', ''),
(128, 2, 'team_email', ''),
(129, 2, 'team_facebook', ''),
(130, 2, 'team_twitter', ''),
(131, 2, 'team_google_plus', ''),
(132, 2, 'team_dribbble', ''),
(133, 2, 'team_youtube', ''),
(134, 2, 'team_rss', ''),
(135, 2, 'team_flickr', ''),
(136, 2, 'team_linkedin', ''),
(137, 2, 'team_vimeo', ''),
(138, 2, 'team_tumblr', ''),
(139, 2, 'team_pinterest', ''),
(140, 2, 'team_sky', ''),
(141, 2, 'team_github', ''),
(142, 2, 'team_instagram', ''),
(143, 2, 'slide_template', 'default'),
(151, 2, '_edit_last', '1'),
(152, 2, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(172, 27, '_wp_attached_file', '2015/07/patricia-dalponte-Slider-01.jpg'),
(173, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:550;s:4:"file";s:39:"2015/07/patricia-dalponte-Slider-01.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-300x138.jpg";s:5:"width";i:300;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"patricia-dalponte-Slider-01-1024x469.jpg";s:5:"width";i:1024;s:6:"height";i:469;s:9:"mime-type";s:10:"image/jpeg";}s:11:"related-img";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-180x138.jpg";s:5:"width";i:180;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-one";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-540x272.jpg";s:5:"width";i:540;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-two";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-460x295.jpg";s:5:"width";i:460;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-three";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-four";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-220x161.jpg";s:5:"width";i:220;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-full";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-940x400.jpg";s:5:"width";i:940;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"recent-posts";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-700x441.jpg";s:5:"width";i:700;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent-works-thumbnail";a:4:{s:4:"file";s:37:"patricia-dalponte-Slider-01-66x66.jpg";s:5:"width";i:66;s:6:"height";i:66;s:9:"mime-type";s:10:"image/jpeg";}s:13:"masonry-thumb";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-500x229.jpg";s:5:"width";i:500;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"patricia-dalponte-Slider-01-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-01-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:14:"resized_images";a:6:{i:0;s:9:"360x263_c";i:1;s:7:"50x50_c";i:2;s:7:"70x70_c";i:3;s:9:"100x100_c";i:4;s:8:"100x90_c";i:5;s:7:"90x90_c";}}}'),
(174, 28, '_wp_attached_file', '2015/07/patricia-dalponte-Slider-02.jpg'),
(175, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1201;s:6:"height";i:550;s:4:"file";s:39:"2015/07/patricia-dalponte-Slider-02.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"patricia-dalponte-Slider-02-1024x469.jpg";s:5:"width";i:1024;s:6:"height";i:469;s:9:"mime-type";s:10:"image/jpeg";}s:11:"related-img";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-180x138.jpg";s:5:"width";i:180;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-one";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-540x272.jpg";s:5:"width";i:540;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-two";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-460x295.jpg";s:5:"width";i:460;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-three";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-four";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-220x161.jpg";s:5:"width";i:220;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-full";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-940x400.jpg";s:5:"width";i:940;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"recent-posts";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-700x441.jpg";s:5:"width";i:700;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent-works-thumbnail";a:4:{s:4:"file";s:37:"patricia-dalponte-Slider-02-66x66.jpg";s:5:"width";i:66;s:6:"height";i:66;s:9:"mime-type";s:10:"image/jpeg";}s:13:"masonry-thumb";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-500x229.jpg";s:5:"width";i:500;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"patricia-dalponte-Slider-02-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-02-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(176, 29, '_wp_attached_file', '2015/07/patricia-dalponte-Slider-03.jpg'),
(177, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1201;s:6:"height";i:550;s:4:"file";s:39:"2015/07/patricia-dalponte-Slider-03.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-300x137.jpg";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"patricia-dalponte-Slider-03-1024x469.jpg";s:5:"width";i:1024;s:6:"height";i:469;s:9:"mime-type";s:10:"image/jpeg";}s:11:"related-img";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-180x138.jpg";s:5:"width";i:180;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-one";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-540x272.jpg";s:5:"width";i:540;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-two";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-460x295.jpg";s:5:"width";i:460;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-three";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-four";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-220x161.jpg";s:5:"width";i:220;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-full";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-940x400.jpg";s:5:"width";i:940;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"recent-posts";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-700x441.jpg";s:5:"width";i:700;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent-works-thumbnail";a:4:{s:4:"file";s:37:"patricia-dalponte-Slider-03-66x66.jpg";s:5:"width";i:66;s:6:"height";i:66;s:9:"mime-type";s:10:"image/jpeg";}s:13:"masonry-thumb";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-500x229.jpg";s:5:"width";i:500;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"patricia-dalponte-Slider-03-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:39:"patricia-dalponte-Slider-03-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(178, 31, '_wp_attached_file', '2015/07/ParalaxHome-01.jpg'),
(179, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:650;s:4:"file";s:26:"2015/07/ParalaxHome-01.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"ParalaxHome-01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"ParalaxHome-01-300x163.jpg";s:5:"width";i:300;s:6:"height";i:163;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"ParalaxHome-01-1024x555.jpg";s:5:"width";i:1024;s:6:"height";i:555;s:9:"mime-type";s:10:"image/jpeg";}s:11:"related-img";a:4:{s:4:"file";s:26:"ParalaxHome-01-180x138.jpg";s:5:"width";i:180;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-one";a:4:{s:4:"file";s:26:"ParalaxHome-01-540x272.jpg";s:5:"width";i:540;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-two";a:4:{s:4:"file";s:26:"ParalaxHome-01-460x295.jpg";s:5:"width";i:460;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-three";a:4:{s:4:"file";s:26:"ParalaxHome-01-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-four";a:4:{s:4:"file";s:26:"ParalaxHome-01-220x161.jpg";s:5:"width";i:220;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-full";a:4:{s:4:"file";s:26:"ParalaxHome-01-940x400.jpg";s:5:"width";i:940;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"recent-posts";a:4:{s:4:"file";s:26:"ParalaxHome-01-700x441.jpg";s:5:"width";i:700;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent-works-thumbnail";a:4:{s:4:"file";s:24:"ParalaxHome-01-66x66.jpg";s:5:"width";i:66;s:6:"height";i:66;s:9:"mime-type";s:10:"image/jpeg";}s:13:"masonry-thumb";a:4:{s:4:"file";s:26:"ParalaxHome-01-500x271.jpg";s:5:"width";i:500;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"ParalaxHome-01-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"ParalaxHome-01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"ParalaxHome-01-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(180, 2, '_wpb_shortcodes_custom_css', '.vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}'),
(181, 33, '_edit_last', '1'),
(182, 33, '_edit_lock', '1436558222:1'),
(183, 33, '_thumbnail_id', '27'),
(184, 33, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(185, 33, 'price', ''),
(186, 33, 'value', ''),
(187, 33, 'option_1', ''),
(188, 33, 'option_2', ''),
(189, 33, 'option_3', ''),
(190, 33, 'option_4', ''),
(191, 33, 'option_5', ''),
(192, 33, 'option_6', ''),
(193, 33, 'option_7', ''),
(194, 33, 'option_8', ''),
(195, 33, 'option_9', ''),
(196, 33, 'option_10', ''),
(197, 33, 'button_url', ''),
(198, 33, 'button_text', ''),
(199, 33, 'is_feature', ''),
(200, 33, 'best_value', ''),
(201, 33, 'team_position', ''),
(202, 33, 'team_qualification', ''),
(203, 33, 'team_experience', ''),
(204, 33, 'team_contact_info', ''),
(205, 33, 'team_email', ''),
(206, 33, 'team_facebook', ''),
(207, 33, 'team_twitter', ''),
(208, 33, 'team_google_plus', ''),
(209, 33, 'team_dribbble', ''),
(210, 33, 'team_youtube', ''),
(211, 33, 'team_rss', ''),
(212, 33, 'team_flickr', ''),
(213, 33, 'team_linkedin', ''),
(214, 33, 'team_vimeo', ''),
(215, 33, 'team_tumblr', ''),
(216, 33, 'team_pinterest', ''),
(217, 33, 'team_sky', ''),
(218, 33, 'team_github', ''),
(219, 33, 'team_instagram', ''),
(220, 33, 'slide_template', 'default'),
(221, 33, '_nectar_love', '0'),
(222, 49, '_edit_last', '1'),
(223, 49, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(224, 49, 'price', ''),
(225, 49, 'value', ''),
(226, 49, 'option_1', ''),
(227, 49, 'option_2', ''),
(228, 49, 'option_3', ''),
(229, 49, 'option_4', ''),
(230, 49, 'option_5', ''),
(231, 49, 'option_6', ''),
(232, 49, 'option_7', ''),
(233, 49, 'option_8', ''),
(234, 49, 'option_9', ''),
(235, 49, 'option_10', ''),
(236, 49, 'button_url', ''),
(237, 49, 'button_text', ''),
(238, 49, 'is_feature', ''),
(239, 49, 'best_value', ''),
(240, 49, 'team_position', ''),
(241, 49, 'team_qualification', ''),
(242, 49, 'team_experience', ''),
(243, 49, 'team_contact_info', ''),
(244, 49, 'team_email', ''),
(245, 49, 'team_facebook', ''),
(246, 49, 'team_twitter', ''),
(247, 49, 'team_google_plus', ''),
(248, 49, 'team_dribbble', ''),
(249, 49, 'team_youtube', ''),
(250, 49, 'team_rss', ''),
(251, 49, 'team_flickr', ''),
(252, 49, 'team_linkedin', ''),
(253, 49, 'team_vimeo', ''),
(254, 49, 'team_tumblr', ''),
(255, 49, 'team_pinterest', ''),
(256, 49, 'team_sky', ''),
(257, 49, 'team_github', ''),
(258, 49, 'team_instagram', ''),
(259, 49, 'slide_template', 'default'),
(260, 49, '_edit_lock', '1436558323:1'),
(261, 51, '_edit_last', '1'),
(262, 51, '_wp_page_template', 'page.php'),
(263, 51, '_wpb_vc_js_status', 'true'),
(264, 51, '_vc_post_settings', 'a:2:{s:7:"vc_grid";a:0:{}s:10:"vc_grid_id";a:0:{}}'),
(265, 51, 'cs_layout', '1'),
(266, 51, 'cs_page_layout', ''),
(267, 51, 'cs_sidebar_left', ''),
(268, 51, 'cs_sidebar_right', ''),
(269, 51, 'cs_onepage', '0'),
(270, 51, 'cs_onepage_speed', ''),
(271, 51, 'cs_onepage_offset', ''),
(272, 51, 'cs_onepage_easing', 'jswing'),
(273, 51, 'cs_body_bg_color', ''),
(274, 51, 'cs_body_bg_image', ''),
(275, 51, 'cs_body_bg_repeat', ''),
(276, 51, 'cs_body_bg_size', ''),
(277, 51, 'cs_body_bg_attachment', ''),
(278, 51, 'cs_body_bg_position', ''),
(279, 51, 'cs_body_custom_class', ''),
(280, 51, 'cs_page_header', ''),
(281, 51, 'cs_header_setting', ''),
(282, 51, 'cs_header_full_width', ''),
(283, 51, 'cs_header_position', ''),
(284, 51, 'cs_header_top_widgets', ''),
(285, 51, 'cs_enable_hidden_sidebar', ''),
(286, 51, 'cs_header_logo_image', ''),
(287, 51, 'cs_header_fixed_menu_color', ''),
(288, 51, 'cs_header_fixed_menu_color_hover', ''),
(289, 51, 'cs_header_fixed_menu_color_active', ''),
(290, 51, 'cs_header_fixed_top', ''),
(291, 51, 'cs_header_border_bottom', ''),
(292, 51, 'cs_header_border_bottom_style', 'none'),
(293, 51, 'cs_header_border_bottom_height', ''),
(294, 51, 'cs_header_border_bottom_color', ''),
(295, 51, 'cs_header_bg_color', ''),
(296, 51, 'cs_header_bg_image', ''),
(297, 51, 'cs_header_bg_repeat', ''),
(298, 51, 'cs_header_bg_size', ''),
(299, 51, 'cs_header_bg_attachment', ''),
(300, 51, 'cs_header_bg_position', ''),
(301, 51, 'cs_header_bg_parallax', ''),
(302, 51, 'cs_show_sticky_header', ''),
(303, 51, 'cs_sticky_header_full_width', ''),
(304, 51, 'cs_nav_height', ''),
(305, 51, 'cs_menu_item_button', ''),
(306, 51, 'cs_menu_position', ''),
(307, 51, 'cs_main_navigation', ''),
(308, 51, 'cs_top_navigation', ''),
(309, 51, 'cs_left_navigation', ''),
(310, 51, 'cs_right_navigation', ''),
(311, 51, 'cs_404_pages', ''),
(312, 51, 'cs_sticky_navigation', ''),
(313, 51, 'cs_page_title_setting', ''),
(314, 51, 'cs_page_title_enable', ''),
(315, 51, 'cs_title_bar_align', ''),
(316, 51, 'cs_title_bar_color', ''),
(317, 51, 'cs_page_title_custom_size', ''),
(318, 51, 'cs_page_title_custom_text', ''),
(319, 51, 'cs_page_title_custom_subheader_text', ''),
(320, 51, 'cs_page_title_custom_subheader_text_color', ''),
(321, 51, 'cs_page_title_background_color', ''),
(322, 51, 'cs_page_title_bg', ''),
(323, 51, 'cs_page_title_bg_repeat', ''),
(324, 51, 'cs_page_title_bg_size', ''),
(325, 51, 'cs_page_title_bg_attachment', ''),
(326, 51, 'cs_page_title_bg_position', ''),
(327, 51, 'cs_page_title_bg_parallax', ''),
(328, 51, 'cs_page_title_padding', ''),
(329, 51, 'cs_page_title_margin', ''),
(330, 51, 'cs_page_title_class', ''),
(331, 51, 'cs_breadcrumb', ''),
(332, 51, 'cs_breadcrumb_text_align', ''),
(333, 51, 'cs_breadcrumb_color', ''),
(334, 51, 'cs_breadcrumb_text', ''),
(335, 51, 'cs_footer_top_widgets', ''),
(336, 51, 'cs_footer_top_bg_color', 'rgba(3, 148, 141, 1)'),
(337, 51, 'cs_footer_top_bg_image', ''),
(338, 51, 'cs_footer_top_bg_repeat', ''),
(339, 51, 'cs_footer_top_bg_size', ''),
(340, 51, 'cs_footer_top_bg_attachment', ''),
(341, 51, 'cs_footer_top_bg_position', ''),
(342, 51, 'cs_footer_top_bg_parallax', ''),
(343, 51, 'cs_footer_bottom_enable', ''),
(344, 51, 'cs_page_category', ''),
(345, 51, 'cs_portfolio_category', ''),
(346, 51, 'cs_page_limit', ''),
(347, 51, 'cs_page_masonry_columns', '1'),
(348, 51, 'cs_page_masonry_loadmore', ''),
(349, 51, 'cs_page_masonry_filter', ''),
(350, 51, 'cs_header_top2_widgets', ''),
(351, 51, 'cs_header_top2_widgets_border_color', ''),
(352, 51, 'cs_logo', ''),
(353, 51, 'cs_logo_alignment', ''),
(354, 51, 'cs_margin_logo', ''),
(355, 51, 'cs_padding_logo', ''),
(356, 51, 'cs_arrow_parents_item_menu', ''),
(357, 51, 'cs_header3_menu_left_position', 'right'),
(358, 51, 'cs_header3_menu_right_position', 'left'),
(359, 51, 'cs_header_content_widgets', ''),
(360, 51, 'cs_header_content_widgets1', '1'),
(361, 51, 'cs_header_content_widgets2', '1'),
(362, 51, 'cs_header_fixed_content_widgets', '1'),
(363, 51, 'price', ''),
(364, 51, 'value', ''),
(365, 51, 'option_1', ''),
(366, 51, 'option_2', ''),
(367, 51, 'option_3', ''),
(368, 51, 'option_4', ''),
(369, 51, 'option_5', ''),
(370, 51, 'option_6', ''),
(371, 51, 'option_7', ''),
(372, 51, 'option_8', ''),
(373, 51, 'option_9', ''),
(374, 51, 'option_10', ''),
(375, 51, 'button_url', ''),
(376, 51, 'button_text', ''),
(377, 51, 'is_feature', ''),
(378, 51, 'best_value', ''),
(379, 51, 'team_position', ''),
(380, 51, 'team_qualification', ''),
(381, 51, 'team_experience', ''),
(382, 51, 'team_contact_info', ''),
(383, 51, 'team_email', ''),
(384, 51, 'team_facebook', ''),
(385, 51, 'team_twitter', ''),
(386, 51, 'team_google_plus', ''),
(387, 51, 'team_dribbble', ''),
(388, 51, 'team_youtube', ''),
(389, 51, 'team_rss', ''),
(390, 51, 'team_flickr', ''),
(391, 51, 'team_linkedin', ''),
(392, 51, 'team_vimeo', ''),
(393, 51, 'team_tumblr', ''),
(394, 51, 'team_pinterest', ''),
(395, 51, 'team_sky', ''),
(396, 51, 'team_github', ''),
(397, 51, 'team_instagram', ''),
(398, 51, 'slide_template', 'default'),
(399, 51, '_edit_lock', '1436810962:1'),
(400, 55, '_wp_attached_file', '2015/07/SobreNosotros-Imagen-02.jpg'),
(401, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:901;s:4:"file";s:35:"2015/07/SobreNosotros-Imagen-02.jpg";s:5:"sizes";a:14:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"related-img";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-180x138.jpg";s:5:"width";i:180;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-one";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-540x272.jpg";s:5:"width";i:540;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-two";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-460x295.jpg";s:5:"width";i:460;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-three";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-four";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-220x161.jpg";s:5:"width";i:220;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-full";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-901x400.jpg";s:5:"width";i:901;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"recent-posts";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-700x441.jpg";s:5:"width";i:700;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent-works-thumbnail";a:4:{s:4:"file";s:33:"SobreNosotros-Imagen-02-66x66.jpg";s:5:"width";i:66;s:6:"height";i:66;s:9:"mime-type";s:10:"image/jpeg";}s:13:"masonry-thumb";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"SobreNosotros-Imagen-02-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-02-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(402, 56, '_wp_attached_file', '2015/07/SobreNosotros-Imagen-03.jpg'),
(403, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:650;s:4:"file";s:35:"2015/07/SobreNosotros-Imagen-03.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-300x163.jpg";s:5:"width";i:300;s:6:"height";i:163;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"SobreNosotros-Imagen-03-1024x555.jpg";s:5:"width";i:1024;s:6:"height";i:555;s:9:"mime-type";s:10:"image/jpeg";}s:11:"related-img";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-180x138.jpg";s:5:"width";i:180;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-one";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-540x272.jpg";s:5:"width";i:540;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-two";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-460x295.jpg";s:5:"width";i:460;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-three";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-four";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-220x161.jpg";s:5:"width";i:220;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-full";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-940x400.jpg";s:5:"width";i:940;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"recent-posts";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-700x441.jpg";s:5:"width";i:700;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent-works-thumbnail";a:4:{s:4:"file";s:33:"SobreNosotros-Imagen-03-66x66.jpg";s:5:"width";i:66;s:6:"height";i:66;s:9:"mime-type";s:10:"image/jpeg";}s:13:"masonry-thumb";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-500x271.jpg";s:5:"width";i:500;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"SobreNosotros-Imagen-03-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-03-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(404, 57, '_wp_attached_file', '2015/07/SobreNosotros-Imagen-01.jpg'),
(405, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:350;s:4:"file";s:35:"2015/07/SobreNosotros-Imagen-01.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"SobreNosotros-Imagen-01-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"SobreNosotros-Imagen-01-1024x299.jpg";s:5:"width";i:1024;s:6:"height";i:299;s:9:"mime-type";s:10:"image/jpeg";}s:11:"related-img";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-180x138.jpg";s:5:"width";i:180;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-one";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-540x272.jpg";s:5:"width";i:540;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:13:"portfolio-two";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-460x295.jpg";s:5:"width";i:460;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:15:"portfolio-three";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-four";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-220x161.jpg";s:5:"width";i:220;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:14:"portfolio-full";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-940x350.jpg";s:5:"width";i:940;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:12:"recent-posts";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-700x350.jpg";s:5:"width";i:700;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}s:22:"recent-works-thumbnail";a:4:{s:4:"file";s:33:"SobreNosotros-Imagen-01-66x66.jpg";s:5:"width";i:66;s:6:"height";i:66;s:9:"mime-type";s:10:"image/jpeg";}s:13:"masonry-thumb";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-500x146.jpg";s:5:"width";i:500;s:6:"height";i:146;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"SobreNosotros-Imagen-01-90x90.jpg";s:5:"width";i:90;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"SobreNosotros-Imagen-01-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(406, 51, '_wpb_shortcodes_custom_css', '.vc_custom_1436804566860{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg?id=57) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1436807550913{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-03.jpg?id=56) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}'),
(407, 3, '_edit_last', '1'),
(408, 3, '_edit_lock', '1436800445:1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=65 ;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-07-06 22:48:36', '2015-07-06 22:48:36', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-07-06 22:48:36', '2015-07-06 22:48:36', '', 0, 'http://localhost/Dalponte/?p=1', 0, 'post', '', 1),
(2, 1, '2015-07-06 22:48:36', '2015-07-06 22:48:36', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="85px"][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" auto_scroll="1" content_align="text-center" crop_image="1" image_align="center" width_image="100" height_image="100" image_border="100%" move_slide="2"][/vc_column][/vc_row]', 'INICIO', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-07-10 14:06:07', '2015-07-10 20:06:07', '', 0, 'http://localhost/Dalponte/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-07-06 22:50:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-06 22:50:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/Dalponte/?p=3', 0, 'post', '', 0),
(4, 1, '2015-07-07 14:53:44', '2015-07-07 14:53:44', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <info@lieison.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Patricia Dalponte (http://localhost/Dalponte)\ninfo@lieison.com\nReply-To: [your-email]\n\n0\n0\n\n[your-subject]\nPatricia Dalponte <info@lieison.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Patricia Dalponte (http://localhost/Dalponte)\n[your-email]\nReply-To: info@lieison.com\n\n0\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2015-07-07 14:53:44', '2015-07-07 14:53:44', '', 0, 'http://localhost/Dalponte/?post_type=wpcf7_contact_form&p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2015-07-07 20:25:21', '2015-07-07 20:25:21', '', 'Shop', '', 'publish', 'closed', 'open', '', 'shop', '', '', '2015-07-07 20:25:21', '2015-07-07 20:25:21', '', 0, 'http://localhost/Dalponte/?page_id=5', 0, 'page', '', 0),
(6, 1, '2015-07-07 20:25:21', '2015-07-07 20:25:21', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'open', '', 'cart', '', '', '2015-07-07 20:25:21', '2015-07-07 20:25:21', '', 0, 'http://localhost/Dalponte/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-07-07 20:25:22', '2015-07-07 20:25:22', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'open', '', 'checkout', '', '', '2015-07-07 20:25:22', '2015-07-07 20:25:22', '', 0, 'http://localhost/Dalponte/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-07-07 20:25:22', '2015-07-07 20:25:22', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'open', '', 'my-account', '', '', '2015-07-07 20:25:22', '2015-07-07 20:25:22', '', 0, 'http://localhost/Dalponte/?page_id=8', 0, 'page', '', 0),
(13, 1, '2015-07-08 11:52:13', '2015-07-08 17:52:13', '[vc_row][vc_column][vc_column_text]\r\n<p style="text-align: center; font-size: 35px;">¿QUE HACEMOS?</p>\r\n[/vc_column_text][vc_empty_space][/vc_column][/vc_row][vc_row][vc_column width="1/2"][vc_column_text]\r\n<pre>   "Me fascina ver  a cada uno de nuestros clientes logrando sus objetivos y proyectándose con total seguridad"</pre>\r\n<pre style="text-align: right;"><strong>PATRICIA DALPONTE</strong></pre>\r\n[/vc_column_text][/vc_column][vc_column width="1/2"][vc_column_text]\r\n<pre style="text-align: justify;">Apoyar personas en  lograr la proyección de imagen que desean.</pre>\r\n<pre style="text-align: justify;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe. Apoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</pre>\r\n[/vc_column_text][/vc_column][/vc_row]', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-08 11:52:13', '2015-07-08 17:52:13', '', 2, 'http://localhost/Dalponte/?p=13', 0, 'revision', '', 0),
(18, 1, '2015-07-08 15:12:23', '2015-07-08 21:12:23', '[vc_row full_width="true"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]\r\n<p style="text-align: center; font-size: 35px;">¿QUE HACEMOS?</p>\r\n[/vc_column_text][vc_empty_space][/vc_column][/vc_row][vc_row][vc_column width="1/2"][vc_column_text]\r\n<pre>   "Me fascina ver  a cada uno de nuestros clientes logrando sus objetivos y proyectándose con total seguridad"</pre>\r\n<pre style="text-align: right;"><strong>PATRICIA DALPONTE</strong></pre>\r\n[/vc_column_text][/vc_column][vc_column width="1/2"][vc_column_text]\r\n<pre style="text-align: justify;">Apoyar personas en  lograr la proyección de imagen que desean.</pre>\r\n<pre style="text-align: justify;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe. Apoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</pre>\r\n[/vc_column_text][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-08 15:12:23', '2015-07-08 21:12:23', '', 2, 'http://localhost/Dalponte/?p=18', 0, 'revision', '', 0),
(23, 1, '2015-07-09 09:31:32', '2015-07-09 15:31:32', '[vc_row full_width="true"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]\r\n<p style="text-align: center; font-size: 35px;"><span style="font-family: ''Essence Sans Bold it'';">¿QUE HACEMOS?</span></p>\r\n[/vc_column_text][vc_empty_space][/vc_column][/vc_row][vc_row][vc_column width="1/2"][vc_column_text]\r\n<pre>   "Me fascina ver  a cada uno de nuestros clientes logrando sus objetivos y proyectándose con total seguridad"</pre>\r\n<pre style="text-align: right;"><strong>PATRICIA DALPONTE</strong></pre>\r\n[/vc_column_text][/vc_column][vc_column width="1/2"][vc_column_text]\r\n<pre style="text-align: justify;">Apoyar personas en  lograr la proyección de imagen que desean.</pre>\r\n<pre style="text-align: justify;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe. Apoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</pre>\r\n[/vc_column_text][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-09 09:31:32', '2015-07-09 15:31:32', '', 2, 'http://localhost/Dalponte/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-07-09 11:28:10', '2015-07-09 17:28:10', '[vc_row full_width="true"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space][vc_column_text]\r\n<p style="text-align: center; font-size: 35px;"><span style="font-family: ''Essence Sans Bold it'';">¿QUE HACEMOS?</span></p>\r\n[/vc_column_text][vc_empty_space][/vc_column][/vc_row][vc_row][vc_column width="1/2"][vc_column_text]\r\n<pre>   "Me fascina ver  a cada uno de nuestros clientes logrando sus objetivos y proyectándose con total seguridad"</pre>\r\n<pre style="text-align: right;"><strong>PATRICIA DALPONTE</strong></pre>\r\n[/vc_column_text][/vc_column][vc_column width="1/2"][vc_column_text]\r\n<pre style="text-align: justify;">Apoyar personas en  lograr la proyección de imagen que desean.</pre>\r\n<pre style="text-align: justify;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe. Apoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</pre>\r\n[/vc_column_text][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-09 11:28:10', '2015-07-09 17:28:10', '', 2, 'http://localhost/Dalponte/?p=24', 0, 'revision', '', 0),
(25, 1, '2015-07-09 12:09:48', '2015-07-09 18:09:48', '[vc_row full_width="true"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="100px"][vc_column_text]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;">¿QUE HACEMOS?</h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad\r\n"</span></p>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">PATRICIA DALPONTE</span></strong></p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias.   Organizar eventos para sectores productivos en la región Centroamericana y el Caribe. Apoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span></p>\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-09 12:09:48', '2015-07-09 18:09:48', '', 2, 'http://localhost/Dalponte/?p=25', 0, 'revision', '', 0),
(27, 1, '2015-07-09 14:12:36', '2015-07-09 20:12:36', '', 'patricia dalponte-Slider-01', '', 'inherit', 'open', 'open', '', 'patricia-dalponte-slider-01', '', '', '2015-07-09 14:12:36', '2015-07-09 20:12:36', '', 0, 'http://localhost/Dalponte/wp-content/uploads/2015/07/patricia-dalponte-Slider-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2015-07-09 14:12:40', '2015-07-09 20:12:40', '', 'patricia dalponte-Slider-02', '', 'inherit', 'open', 'open', '', 'patricia-dalponte-slider-02', '', '', '2015-07-09 14:12:40', '2015-07-09 20:12:40', '', 0, 'http://localhost/Dalponte/wp-content/uploads/2015/07/patricia-dalponte-Slider-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2015-07-09 14:12:44', '2015-07-09 20:12:44', '', 'patricia dalponte-Slider-03', '', 'inherit', 'open', 'open', '', 'patricia-dalponte-slider-03', '', '', '2015-07-09 14:12:44', '2015-07-09 20:12:44', '', 0, 'http://localhost/Dalponte/wp-content/uploads/2015/07/patricia-dalponte-Slider-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2015-07-09 14:15:02', '2015-07-09 20:15:02', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="100px"][vc_column_text]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;">¿QUE HACEMOS?</h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad\r\n"</span></p>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">PATRICIA DALPONTE</span></strong></p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de\r\nimagen que desean.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar\r\nsu imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span></p>\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" css=".vc_custom_1436472054136{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=26) !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-09 14:15:02', '2015-07-09 20:15:02', '', 2, 'http://localhost/Dalponte/?p=30', 0, 'revision', '', 0),
(31, 1, '2015-07-09 14:23:13', '2015-07-09 20:23:13', '', 'ParalaxHome-01', '', 'inherit', 'open', 'open', '', 'paralaxhome-01', '', '', '2015-07-09 14:23:13', '2015-07-09 20:23:13', '', 2, 'http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2015-07-09 14:40:25', '2015-07-09 20:40:25', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span></p>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span></p>\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-09 14:40:25', '2015-07-09 20:40:25', '', 2, 'http://localhost/Dalponte/?p=32', 0, 'revision', '', 0),
(33, 1, '2015-07-10 09:19:22', '2015-07-10 15:19:22', '<span style="font-size: 22pt; font-family: ''Essence Sans Bold'';">"Opinión de los clientes. opinión de los clientes. opinión de los clientes"</span>', 'testimonio1', '', 'publish', 'open', 'open', '', 'prueba', '', '', '2015-07-10 13:59:03', '2015-07-10 19:59:03', '', 0, 'http://localhost/Dalponte/?post_type=testimonial&#038;p=33', 0, 'testimonial', '', 0),
(34, 1, '2015-07-10 10:04:36', '2015-07-10 16:04:36', '<span style="font-size: 24pt; font-family: ''Essence Sans Bold'';">"Opinión de los clientes. opinión de los clientes. opinión de los clientes"</span>', '', '', 'inherit', 'open', 'open', '', '33-autosave-v1', '', '', '2015-07-10 10:04:36', '2015-07-10 16:04:36', '', 33, 'http://localhost/Dalponte/?p=34', 0, 'revision', '', 0),
(35, 1, '2015-07-10 10:51:54', '2015-07-10 16:51:54', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial heading_align="text-center" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 10:51:54', '2015-07-10 16:51:54', '', 2, 'http://localhost/Dalponte/?p=35', 0, 'revision', '', 0),
(36, 1, '2015-07-10 10:57:20', '2015-07-10 16:57:20', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial heading_align="text-center" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" show_readmore="1" read_more="Leer más" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 10:57:20', '2015-07-10 16:57:20', '', 2, 'http://localhost/Dalponte/?p=36', 0, 'revision', '', 0),
(37, 1, '2015-07-10 11:00:06', '2015-07-10 17:00:06', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial heading_align="text-center" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" show_readmore="1" read_more="Leer más" width_image="90" height_image="90" image_border="100%"][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" show_readmore="1" read_more="Hola mundo" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:00:06', '2015-07-10 17:00:06', '', 2, 'http://localhost/Dalponte/?p=37', 0, 'revision', '', 0),
(38, 1, '2015-07-10 11:01:18', '2015-07-10 17:01:18', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:01:18', '2015-07-10 17:01:18', '', 2, 'http://localhost/Dalponte/?p=38', 0, 'revision', '', 0),
(39, 1, '2015-07-10 11:02:36', '2015-07-10 17:02:36', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" show_readmore="1" read_more="hola mundo" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:02:36', '2015-07-10 17:02:36', '', 2, 'http://localhost/Dalponte/?p=39', 0, 'revision', '', 0),
(40, 1, '2015-07-10 11:04:56', '2015-07-10 17:04:56', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:04:56', '2015-07-10 17:04:56', '', 2, 'http://localhost/Dalponte/?p=40', 0, 'revision', '', 0),
(41, 1, '2015-07-10 11:10:03', '2015-07-10 17:10:03', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" show_readmore="1" read_more="Leer más" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:10:03', '2015-07-10 17:10:03', '', 2, 'http://localhost/Dalponte/?p=41', 0, 'revision', '', 0),
(42, 1, '2015-07-10 11:15:56', '2015-07-10 17:15:56', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:15:56', '2015-07-10 17:15:56', '', 2, 'http://localhost/Dalponte/?p=42', 0, 'revision', '', 0),
(43, 1, '2015-07-10 11:17:53', '2015-07-10 17:17:53', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial heading_align="text-center" layout="testimonial.layout3" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" show_readmore="1" read_more="Leer más" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:17:53', '2015-07-10 17:17:53', '', 2, 'http://localhost/Dalponte/?p=43', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(44, 1, '2015-07-10 11:19:41', '2015-07-10 17:19:41', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:19:41', '2015-07-10 17:19:41', '', 2, 'http://localhost/Dalponte/?p=44', 0, 'revision', '', 0),
(45, 1, '2015-07-10 11:23:47', '2015-07-10 17:23:47', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="160px"][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:23:47', '2015-07-10 17:23:47', '', 2, 'http://localhost/Dalponte/?p=45', 0, 'revision', '', 0),
(46, 1, '2015-07-10 11:24:58', '2015-07-10 17:24:58', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="100px"][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:24:58', '2015-07-10 17:24:58', '', 2, 'http://localhost/Dalponte/?p=46', 0, 'revision', '', 0),
(47, 1, '2015-07-10 11:39:00', '2015-07-10 17:39:00', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="85px"][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" show_nav="1" nav_align="text-center" nav_arrow_style="square_black" content_align="text-center" crop_image="1" image_align="center" width_image="90" height_image="90" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 11:39:00', '2015-07-10 17:39:00', '', 2, 'http://localhost/Dalponte/?p=47', 0, 'revision', '', 0),
(48, 1, '2015-07-10 12:11:45', '2015-07-10 18:11:45', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="85px"][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" auto_scroll="1" content_align="text-center" crop_image="1" image_align="center" width_image="100" height_image="100" image_border="100%"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 12:11:45', '2015-07-10 18:11:45', '', 2, 'http://localhost/Dalponte/?p=48', 0, 'revision', '', 0),
(49, 1, '2015-07-10 13:43:05', '2015-07-10 19:43:05', 'un texto un text un texto un text un texto un text un texto un text un texto un text', 'Testimonio 2', '', 'publish', 'open', 'open', '', '49', '', '', '2015-07-10 14:00:06', '2015-07-10 20:00:06', '', 0, 'http://localhost/Dalponte/?post_type=testimonial&#038;p=49', 0, 'testimonial', '', 0),
(50, 1, '2015-07-10 14:06:07', '2015-07-10 20:06:07', '[vc_row full_width="true" type="ww-custom" enable_triangle="1" triangle_color="#ffffff"][vc_column][rev_slider_vc][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="90px"][vc_column_text css_animation="top-to-bottom"]\r\n<h1 style="text-align: center; font-size: 35px; font-family: ''Essence Sans Bold''; line-height: 50px;"><span style="color: #008c85; font-size: 36pt;">¿QUE HACEMOS?</span></h1>\r\n[/vc_column_text][vc_row_inner][vc_column_inner width="1/2"][vc_column_text css_animation="left-to-right"]\r\n<p style="text-align: right;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">"Me fascina ver  a cada uno de\r\nnuestros clientes logrando sus objetivos\r\ny proyectándose con total seguridad"</span>\r\n<p style="text-align: right;"><strong><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">PATRICIA DALPONTE</span></strong></p>\r\n\r\n[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_column_text css_animation="right-to-left"]\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 16pt;">Apoyar personas en  lograr la proyección de imagen que desean.</span></p>\r\n\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 18pt;">Colaborar con funcionarios públicos en mejorar su imagen, en particular mujeres funcionarias. Organizar eventos para sectores productivos en la región Centroamericana y el Caribe.\r\nApoyar a directores o agencias de comunicación el manejo de la calidad de sus funcionarios y/o ejecutivos.</span>\r\n\r\n[/vc_column_text][/vc_column_inner][/vc_row_inner][vc_empty_space height="100px"][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="31" row_text_color="#ffffff" type="ww-custom" enable_triangle="1" triangle_color="#ffffff" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436473729420{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/ParalaxHome-01.jpg?id=31) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="180px"][vc_column_text css_animation="bottom-to-top"]\r\n<h1 style="text-align: center;"><span style="font-size: 60pt; color: #ffffff; line-height: 70px;">Descubre tu estilo</span></h1>\r\n[/vc_column_text][vc_empty_space height="160px"][/vc_column][/vc_row][vc_row][vc_column][vc_empty_space height="85px"][cshero-testimonial heading_align="text-center" layout="testimonial.layout2" type="tab" auto_scroll="1" content_align="text-center" crop_image="1" image_align="center" width_image="100" height_image="100" image_border="100%" move_slide="2"][/vc_column][/vc_row]', 'INICIO', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-10 14:06:07', '2015-07-10 20:06:07', '', 2, 'http://localhost/Dalponte/?p=50', 0, 'revision', '', 0),
(51, 1, '2015-07-10 14:08:51', '2015-07-10 20:08:51', '[vc_row full_width="true" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436804566860{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg?id=57) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="350px"][/vc_column][/vc_row][vc_row][vc_column width="5/12"][vc_empty_space][vc_single_image image="55" img_size="large" alignment="center"][vc_empty_space height="5px"][/vc_column][vc_column width="7/12"][vc_empty_space height="100px"][vc_column_text]<span style="font-size: 36pt; font-family: ''Essence Sans Bold'';">Patricia Dalponte</span>\r\n\r\n&nbsp;\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">Coach y asesora de imagen comprometida con cada uno de sus clientes a guiarlos en el camino personal del clientes aulodescubrirmienlo.  Se na al ver a cada uno de sus logrando sus objetivos royeclandose con lola seguridad Patricia muestra personal a través de fusionar cómo integralmente manejar los mercadeo que generan el estilo personal desde el vestuario,  accesorios corporal,  completo.  postura,  hasta el lenguaje maquillaje,  más importante,  la misión de Patricia es hacer una diferencia valiosa en la vida de cada persona que diende</span></p>\r\n [/vc_column_text][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="56" type="ww-custom" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436807550913{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-03.jpg?id=56) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column bg_repeat="No-Repeat"][vc_empty_space height="60px"][vc_column_text]\r\n<p style="text-align: center;"><em><span style="font-size: 40pt; font-family: ''Essence Sans Bold''; color: #ffffff;">"Cree en ti mismo y el resto caerá en su lugar.</span></em></p>\r\n<p style="text-align: center;"><em><span style="font-size: 40pt; font-family: ''Essence Sans Bold''; color: #ffffff;"> Confía en tus propias capacidades, y no hay nada </span></em></p>\r\n<p style="text-align: center;"><em><span style="font-size: 40pt; font-family: ''Essence Sans Bold''; color: #ffffff;">que no se pueda lograr."</span></em></p>\r\n[/vc_column_text][vc_empty_space height="25px"][/vc_column][/vc_row]', 'SOBRE NOSOTROS', '', 'publish', 'open', 'open', '', 'sobre-nosotros', '', '', '2015-07-13 12:09:15', '2015-07-13 18:09:15', '', 0, 'http://localhost/Dalponte/?page_id=51', 0, 'page', '', 0),
(52, 1, '2015-07-10 14:08:51', '2015-07-10 20:08:51', '', 'SOBRE NOSOTROS', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-10 14:08:51', '2015-07-10 20:08:51', '', 51, 'http://localhost/Dalponte/?p=52', 0, 'revision', '', 0),
(53, 1, '2015-07-10 14:10:43', '2015-07-10 20:10:43', 'un texto un text  un texto un text  un texto un text  un texto un text', 'SOBRE NOSOTROS', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-10 14:10:43', '2015-07-10 20:10:43', '', 51, 'http://localhost/Dalponte/?p=53', 0, 'revision', '', 0),
(54, 1, '2015-07-13 12:01:26', '2015-07-13 18:01:26', '[vc_row full_width="true" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436804566860{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg?id=57) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="350px"][/vc_column][/vc_row][vc_row][vc_column width="5/12"][vc_empty_space][vc_single_image image="55" img_size="large" alignment="center"][vc_empty_space height="5px"][/vc_column][vc_column width="7/12"][vc_empty_space height="100px"][vc_column_text]<span style="font-size: 36pt; font-family: ''Essence Sans Bold'';">Patricia Dalponte</span>\r\n\r\n&nbsp;\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">Coach y asesora de imagen comprometida con cada uno de sus clientes a guiarlos en el camino personal del clientes aulodescubrirmienlo.  Se na al ver a cada uno de sus logrando sus objetivos royeclandose con lola seguridad Patricia muestra personal a través de fusionar cómo integralmente manejar los mercadeo que generan el estilo personal desde el vestuario,  accesorios corporal,  completo.  postura,  hasta el lenguaje maquillaje,  más importante,  la misión de Patricia es hacer una diferencia valiosa en la vida de cada persona que diende</span></p>\r\n [/vc_column_text][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="56" type="ww-custom" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436807550913{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-03.jpg?id=56) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column bg_repeat="No-Repeat"][vc_empty_space height="60px"][vc_column_text]\r\n<p style="text-align: center;"><em><span style="font-size: 40pt; font-family: ''Essence Sans Bold''; color: #ffffff;">"Cree en ti mismo y el resto caerá en su lugar.</span></em></p>\r\n<p style="text-align: center;"><em><span style="font-size: 40pt; font-family: ''Essence Sans Bold''; color: #ffffff;"> Confía en tus propias capacidades, y no hay nada </span></em></p>\r\n<p style="text-align: center;"><em><span style="font-size: 40pt; font-family: ''Essence Sans Bold''; color: #ffffff;">que no se pueda lograr."</span></em></p>\r\n[/vc_column_text][vc_empty_space height="25px"][/vc_column][/vc_row]', 'SOBRE NOSOTROS', '', 'inherit', 'open', 'open', '', '51-autosave-v1', '', '', '2015-07-13 12:01:26', '2015-07-13 18:01:26', '', 51, 'http://localhost/Dalponte/?p=54', 0, 'revision', '', 0),
(55, 1, '2015-07-10 15:00:24', '2015-07-10 21:00:24', '', 'SobreNosotros-Imagen-02', '', 'inherit', 'open', 'open', '', 'sobrenosotros-imagen-02', '', '', '2015-07-10 15:00:24', '2015-07-10 21:00:24', '', 0, 'http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2015-07-10 15:00:33', '2015-07-10 21:00:33', '', 'SobreNosotros-Imagen-03', '', 'inherit', 'open', 'open', '', 'sobrenosotros-imagen-03', '', '', '2015-07-10 15:00:33', '2015-07-10 21:00:33', '', 0, 'http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2015-07-10 15:00:42', '2015-07-10 21:00:42', '', 'SobreNosotros-Imagen-01', '', 'inherit', 'open', 'open', '', 'sobrenosotros-imagen-01', '', '', '2015-07-10 15:00:42', '2015-07-10 21:00:42', '', 0, 'http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2015-07-10 15:06:23', '2015-07-10 21:06:23', '[vc_row full_width="true"][vc_column][vc_empty_space height="300px"][/vc_column][/vc_row][vc_row][vc_column width="5/12"][vc_single_image image="55"][/vc_column][vc_column width="7/12"][vc_column_text]\r\n<p style="text-align: justify;"><span style="font-size: 36pt; font-family: ''Essence Sans Bold'';">Patricia Dalponte</span></p>\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">Coach y asesora de imagen comprometida con cada uno de sus clientes a guiarlos en el camino personal del clientes aulodescubrirmienlo.  Se na al ver a cada uno de sus logrando sus objetivos royeclandose con lola seguridad Patricia muestra personal a través de fusionar cómo integralmente manejar los mercadeo que generan el estilo personal desde el vestuario,  accesorios corporal,  completo.  postura,  hasta el lenguaje maquillaje,  más importante,  la misión de Patricia es hacer una diferencia valiosa en la vida de cada persona que diende</span></p>\r\n[/vc_column_text][/vc_column][/vc_row]', 'SOBRE NOSOTROS', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-10 15:06:23', '2015-07-10 21:06:23', '', 51, 'http://localhost/Dalponte/?p=58', 0, 'revision', '', 0),
(59, 1, '2015-07-10 15:10:49', '2015-07-10 21:10:49', '[vc_row full_width="true" css=".vc_custom_1436562474301{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg?id=57) !important;}"][vc_column][vc_empty_space height="300px"][/vc_column][/vc_row][vc_row][vc_column width="5/12"][vc_single_image image="55"][/vc_column][vc_column width="7/12"][vc_column_text]\r\n<p style="text-align: justify;"><span style="font-size: 36pt; font-family: ''Essence Sans Bold'';">Patricia Dalponte</span></p>\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">Coach y asesora de imagen comprometida con cada uno de sus clientes a guiarlos en el camino personal del clientes aulodescubrirmienlo.  Se na al ver a cada uno de sus logrando sus objetivos royeclandose con lola seguridad Patricia muestra personal a través de fusionar cómo integralmente manejar los mercadeo que generan el estilo personal desde el vestuario,  accesorios corporal,  completo.  postura,  hasta el lenguaje maquillaje,  más importante,  la misión de Patricia es hacer una diferencia valiosa en la vida de cada persona que diende</span></p>\r\n[/vc_column_text][/vc_column][/vc_row][vc_row full_width="true" css=".vc_custom_1436562588010{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg?id=57) !important;}"][vc_column][vc_empty_space height="300px"][/vc_column][/vc_row]', 'SOBRE NOSOTROS', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-10 15:10:49', '2015-07-10 21:10:49', '', 51, 'http://localhost/Dalponte/?p=59', 0, 'revision', '', 0),
(60, 1, '2015-07-13 09:49:39', '2015-07-13 15:49:39', '[vc_row full_width="true" css=".vc_custom_1436562474301{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg?id=57) !important;}"][vc_column][vc_empty_space height="300px"][/vc_column][/vc_row][vc_row][vc_column width="5/12"][vc_empty_space][vc_single_image image="55" img_size="large" alignment="center"][/vc_column][vc_column width="7/12"][vc_empty_space height="100px"][vc_column_text]<span style="font-size: 36pt; font-family: ''Essence Sans Bold'';">Patricia Dalponte</span>\r\n\r\n&nbsp;\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">Coach y asesora de imagen comprometida con cada uno de sus clientes a guiarlos en el camino personal del clientes aulodescubrirmienlo.  Se na al ver a cada uno de sus logrando sus objetivos royeclandose con lola seguridad Patricia muestra personal a través de fusionar cómo integralmente manejar los mercadeo que generan el estilo personal desde el vestuario,  accesorios corporal,  completo.  postura,  hasta el lenguaje maquillaje,  más importante,  la misión de Patricia es hacer una diferencia valiosa en la vida de cada persona que diende</span></p>\r\n [/vc_column_text][/vc_column][/vc_row]', 'SOBRE NOSOTROS', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-13 09:49:39', '2015-07-13 15:49:39', '', 51, 'http://localhost/Dalponte/?p=60', 0, 'revision', '', 0),
(61, 1, '2015-07-13 10:01:48', '2015-07-13 16:01:48', '[vc_row full_width="true" css=".vc_custom_1436562474301{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg?id=57) !important;}"][vc_column][vc_empty_space height="350px"][/vc_column][/vc_row][vc_row][vc_column width="5/12"][vc_empty_space][vc_single_image image="55" img_size="large" alignment="center"][vc_empty_space height="10px"][/vc_column][vc_column width="7/12"][vc_empty_space height="100px"][vc_column_text]<span style="font-size: 36pt; font-family: ''Essence Sans Bold'';">Patricia Dalponte</span>\r\n\r\n&nbsp;\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">Coach y asesora de imagen comprometida con cada uno de sus clientes a guiarlos en el camino personal del clientes aulodescubrirmienlo.  Se na al ver a cada uno de sus logrando sus objetivos royeclandose con lola seguridad Patricia muestra personal a través de fusionar cómo integralmente manejar los mercadeo que generan el estilo personal desde el vestuario,  accesorios corporal,  completo.  postura,  hasta el lenguaje maquillaje,  más importante,  la misión de Patricia es hacer una diferencia valiosa en la vida de cada persona que diende</span></p>\r\n [/vc_column_text][/vc_column][/vc_row][vc_row full_width="true" full_height="yes" parallax="content-moving" parallax_image="56" bg_repeat="no-repeat" css=".vc_custom_1436802992061{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-03.jpg?id=56) !important;}"][vc_column][vc_empty_space height="300px"][/vc_column][/vc_row]', 'SOBRE NOSOTROS', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-13 10:01:48', '2015-07-13 16:01:48', '', 51, 'http://localhost/Dalponte/?p=61', 0, 'revision', '', 0),
(62, 1, '2015-07-13 10:11:04', '2015-07-13 16:11:04', '[vc_row full_width="true" bg_repeat="no-repeat" css=".vc_custom_1436803530132{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg?id=57) !important;}"][vc_column][vc_empty_space height="350px"][/vc_column][/vc_row][vc_row][vc_column width="5/12"][vc_empty_space][vc_single_image image="55" img_size="large" alignment="center"][vc_empty_space height="5px"][/vc_column][vc_column width="7/12"][vc_empty_space height="100px"][vc_column_text]<span style="font-size: 36pt; font-family: ''Essence Sans Bold'';">Patricia Dalponte</span>\r\n\r\n&nbsp;\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">Coach y asesora de imagen comprometida con cada uno de sus clientes a guiarlos en el camino personal del clientes aulodescubrirmienlo.  Se na al ver a cada uno de sus logrando sus objetivos royeclandose con lola seguridad Patricia muestra personal a través de fusionar cómo integralmente manejar los mercadeo que generan el estilo personal desde el vestuario,  accesorios corporal,  completo.  postura,  hasta el lenguaje maquillaje,  más importante,  la misión de Patricia es hacer una diferencia valiosa en la vida de cada persona que diende</span></p>\r\n [/vc_column_text][/vc_column][/vc_row][vc_row full_width="true" full_height="yes" parallax="content-moving" parallax_image="56" bg_repeat="no-repeat" css=".vc_custom_1436803814909{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-03.jpg?id=56) !important;}"][vc_column bg_repeat="No-Repeat"][vc_empty_space height="300px"][/vc_column][/vc_row]', 'SOBRE NOSOTROS', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-13 10:11:04', '2015-07-13 16:11:04', '', 51, 'http://localhost/Dalponte/?p=62', 0, 'revision', '', 0),
(63, 1, '2015-07-13 10:29:19', '2015-07-13 16:29:19', '[vc_row full_width="true" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436804566860{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg?id=57) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="350px"][/vc_column][/vc_row][vc_row][vc_column width="5/12"][vc_empty_space][vc_single_image image="55" img_size="large" alignment="center"][vc_empty_space height="5px"][/vc_column][vc_column width="7/12"][vc_empty_space height="100px"][vc_column_text]<span style="font-size: 36pt; font-family: ''Essence Sans Bold'';">Patricia Dalponte</span>\r\n\r\n&nbsp;\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">Coach y asesora de imagen comprometida con cada uno de sus clientes a guiarlos en el camino personal del clientes aulodescubrirmienlo.  Se na al ver a cada uno de sus logrando sus objetivos royeclandose con lola seguridad Patricia muestra personal a través de fusionar cómo integralmente manejar los mercadeo que generan el estilo personal desde el vestuario,  accesorios corporal,  completo.  postura,  hasta el lenguaje maquillaje,  más importante,  la misión de Patricia es hacer una diferencia valiosa en la vida de cada persona que diende</span></p>\r\n [/vc_column_text][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="56" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436804235715{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-03.jpg?id=56) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column bg_repeat="No-Repeat"][vc_empty_space height="250px"][/vc_column][/vc_row]', 'SOBRE NOSOTROS', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-13 10:29:19', '2015-07-13 16:29:19', '', 51, 'http://localhost/Dalponte/?p=63', 0, 'revision', '', 0),
(64, 1, '2015-07-13 11:52:06', '2015-07-13 17:52:06', '[vc_row full_width="true" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436804566860{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-01.jpg?id=57) !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column][vc_empty_space height="350px"][/vc_column][/vc_row][vc_row][vc_column width="5/12"][vc_empty_space][vc_single_image image="55" img_size="large" alignment="center"][vc_empty_space height="5px"][/vc_column][vc_column width="7/12"][vc_empty_space height="100px"][vc_column_text]<span style="font-size: 36pt; font-family: ''Essence Sans Bold'';">Patricia Dalponte</span>\r\n\r\n&nbsp;\r\n<p style="text-align: justify;"><span style="font-family: ''Essence Sans Bold''; font-size: 14pt;">Coach y asesora de imagen comprometida con cada uno de sus clientes a guiarlos en el camino personal del clientes aulodescubrirmienlo.  Se na al ver a cada uno de sus logrando sus objetivos royeclandose con lola seguridad Patricia muestra personal a través de fusionar cómo integralmente manejar los mercadeo que generan el estilo personal desde el vestuario,  accesorios corporal,  completo.  postura,  hasta el lenguaje maquillaje,  más importante,  la misión de Patricia es hacer una diferencia valiosa en la vida de cada persona que diende</span></p>\r\n [/vc_column_text][/vc_column][/vc_row][vc_row full_width="true" parallax="content-moving" parallax_image="56" type="ww-custom" bg_attachment="fixed" bg_repeat="no-repeat" css=".vc_custom_1436807550913{background-image: url(http://localhost/Dalponte/wp-content/uploads/2015/07/SobreNosotros-Imagen-03.jpg?id=56) !important;background-position: center;background-repeat: no-repeat !important;background-size: cover !important;}"][vc_column bg_repeat="No-Repeat"][vc_empty_space height="60px"][vc_column_text]\r\n<p style="text-align: center;"><em><span style="font-size: 40pt; font-family: ''Essence Sans Bold''; color: #ffffff;">"Cree en ti mismo y el resto caerá en su lugar.</span></em></p>\r\n<p style="text-align: center;"><em><span style="font-size: 40pt; font-family: ''Essence Sans Bold''; color: #ffffff;"> Confía en tus propias capacidades, y no hay nada </span></em></p>\r\n<p style="text-align: center;"><em><span style="font-size: 40pt; font-family: ''Essence Sans Bold''; color: #ffffff;">que no se pueda lograr."</span></em></p>\r\n[/vc_column_text][vc_empty_space height="25px"][/vc_column][/vc_row]', 'SOBRE NOSOTROS', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-13 11:52:06', '2015-07-13 17:52:06', '', 51, 'http://localhost/Dalponte/?p=64', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_css`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_css` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `hover` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=54 ;

--
-- Volcado de datos para la tabla `wp_revslider_css`
--

INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.medium_grey', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888","white-space":"nowrap"}'),
(2, '.tp-caption.small_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(3, '.tp-caption.medium_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(4, '.tp-caption.large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(5, '.tp-caption.very_large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","letter-spacing":"-2px"}'),
(6, '.tp-caption.very_big_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#000"}'),
(7, '.tp-caption.very_big_black', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#fff"}'),
(8, '.tp-caption.modern_medium_fat', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(9, '.tp-caption.modern_medium_fat_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(10, '.tp-caption.modern_medium_light', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(11, '.tp-caption.modern_big_bluebg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c","letter-spacing":"0"}'),
(12, '.tp-caption.modern_big_redbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","padding-top":"1px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e","letter-spacing":"0"}'),
(13, '.tp-caption.modern_small_text_dark', NULL, NULL, '{"position":"absolute","color":"#555","text-shadow":"none","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(14, '.tp-caption.boxshadow', NULL, NULL, '{"-moz-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","-webkit-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)"}'),
(15, '.tp-caption.black', NULL, NULL, '{"color":"#000","text-shadow":"none"}'),
(16, '.tp-caption.noshadow', NULL, NULL, '{"text-shadow":"none"}'),
(17, '.tp-caption.thinheadline_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(18, '.tp-caption.thintext_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(19, '.tp-caption.largeblackbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(20, '.tp-caption.largepinkbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(21, '.tp-caption.largewhitebg', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(22, '.tp-caption.largegreenbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(23, '.tp-caption.excerpt', NULL, NULL, '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"#ffffff","text-decoration":"none","background-color":"rgba(0, 0, 0, 1)","text-shadow":"none","margin":"0px","letter-spacing":"-1.5px","padding":"1px 4px 0px 4px","width":"150px","white-space":"normal !important","height":"auto","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(24, '.tp-caption.large_bold_grey', NULL, NULL, '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(25, '.tp-caption.medium_thin_grey', NULL, NULL, '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(26, '.tp-caption.small_thin_grey', NULL, NULL, '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(27, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(28, '.tp-caption.large_bold_darkblue', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(29, '.tp-caption.medium_bg_darkblue', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(30, '.tp-caption.medium_bold_red', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(31, '.tp-caption.medium_light_red', NULL, NULL, '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(32, '.tp-caption.medium_bg_red', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(33, '.tp-caption.medium_bold_orange', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(34, '.tp-caption.medium_bg_orange', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(35, '.tp-caption.grassfloor', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(160, 179, 151, 1)","width":"4000px","height":"150px","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(36, '.tp-caption.large_bold_white', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(37, '.tp-caption.medium_light_white', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(38, '.tp-caption.mediumlarge_light_white', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(39, '.tp-caption.mediumlarge_light_white_center', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(40, '.tp-caption.medium_bg_asbestos', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(41, '.tp-caption.medium_light_black', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(42, '.tp-caption.large_bold_black', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(43, '.tp-caption.largetext67px', '{"hover":"false"}', '""', '{"font-size":"67px","line-height":"40px","font-weight":"700","font-family":"Arial","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"rgba(0, 0, 0, 0.498039) 0px 2px 5px","margin":"0px","white-space":"nowrap","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(44, '.tp-caption.largetext67', '{"hover":"false"}', '""', '{"font-size":"73px","line-height":"40px","font-weight":"700","font-family":"Arial","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"rgba(0, 0, 0, 0.498039) 0px 2px 5px","margin":"0px","white-space":"nowrap","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(45, '.tp-caption.largetext67100', '{"hover":"false"}', '""', '{"font-size":"101px","line-height":"40px","font-weight":"700","font-family":"Arial","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"rgba(0, 0, 0, 0.498039) 0px 2px 5px","margin":"0px","white-space":"nowrap","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(46, '.tp-caption.black40px', '{"hover":"false"}', '{"font-size":"40px","color":"rgb(0, 0, 0)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}', '{"color":"rgb(0, 0, 0)","text-shadow":"none","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(47, '.tp-caption.black40px100px', '{"hover":"false"}', '{"font-size":"40px","color":"rgb(0, 0, 0)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}', '{"font-size":"100px","color":"rgb(0, 0, 0)","text-decoration":"none","text-shadow":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}'),
(48, '.tp-caption.largetext100', '{"hover":"false"}', '""', '{"font-size":"101px","line-height":"40px","font-weight":"700","font-family":"Arial","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"rgba(0, 0, 0, 0.498039) 0px 2px 5px","margin":"0px","white-space":"nowrap","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(49, '.tp-caption.largetext40px', '{"hover":"false"}', '""', '{"color":"rgb(255, 255, 255)","text-shadow":"rgba(0, 0, 0, 0.498039) 0px 2px 5px","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","white-space":"nowrap","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(50, '.tp-caption.largetext100px', '{"hover":"false"}', '""', '{"font-size":"101px","line-height":"40px","font-weight":"700","font-family":"Arial","color":"rgb(255, 255, 255)","text-decoration":"none","text-shadow":"rgba(0, 0, 0, 0.498039) 0px 2px 5px","margin":"0px","white-space":"nowrap","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(51, '.tp-caption.largetextessence-sans-bold', '{"hover":"false"}', '""', '{"color":"#ffffff","text-shadow":"rgba(0, 0, 0, 0.498039) 0px 2px 5px","font-weight":"900","font-size":"60px","line-height":"40px","font-family":"\\"Essence Sans Bold\\"","margin":"0px","white-space":"nowrap","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(52, '.tp-caption.largetext67100essence-sans-bold', '{"hover":"false"}', '""', '{"font-size":"120px","line-height":"40px","font-weight":"900","font-family":"Essence Sans Bold","color":"#ffffff","text-decoration":"none","text-shadow":"rgba(0, 0, 0, 0.498039) 0px 2px 5px","margin":"0px","white-space":"nowrap","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(53, '.tp-caption.largetext', '{"hover":"false"}', '""', '{"color":"#ffffff","text-shadow":"rgba(0, 0, 0, 0.498039) 0px 2px 5px","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Essence Sans Bold","margin":"0px","white-space":"nowrap","background-color":"transparent","text-decoration":"none","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_layer_animations`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_layer_animations` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_settings`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_settings` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `general` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_revslider_settings`
--

INSERT INTO `wp_revslider_settings` (`id`, `general`, `params`) VALUES
(1, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_sliders`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_sliders` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_revslider_sliders`
--

INSERT INTO `wp_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'home', 'home', '{"title":"home","alias":"home","shortcode":"[rev_slider home]","source_type":"gallery","post_types":"post","post_category":"category_1","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_offset_size":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"on","min_height":"0","width":"960","height":"550","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"9000","shuffle":"off","lazy_load":"off","use_wpml":"off","enable_static_layers":"off","next_slide_on_window_focus":"off","start_js_after_delay":0,"stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"show_timerbar":"top","loop_slide":"loop","position":"center","margin_top":0,"margin_bottom":0,"margin_left":0,"margin_right":0,"shadow_type":"0","padding":0,"background_color":"#E9E9E9","background_dotted_overlay":"none","show_background_image":"false","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","stop_on_hover":"on","keyboard_navigation":"off","navigation_style":"custom","navigaion_type":"none","navigation_arrows":"solo","navigaion_always_on":"false","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":20,"leftarrow_offset_vert":0,"rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":20,"rightarrow_offset_vert":0,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"use_spinner":"0","spinner_color":"#FFFFFF","use_parallax":"off","disable_parallax_mobile":"off","parallax_type":"mouse","parallax_bg_freeze":"off","parallax_level_1":"5","parallax_level_2":"10","parallax_level_3":"15","parallax_level_4":"20","parallax_level_5":"25","parallax_level_6":"30","parallax_level_7":"35","parallax_level_8":"40","parallax_level_9":"45","parallax_level_10":"50","touchenabled":"on","swipe_velocity":75,"swipe_min_touches":1,"drag_block_vertical":"false","disable_on_mobile":"off","disable_kenburns_on_mobile":"off","hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_arrows_on_mobile":"off","hide_bullets_on_mobile":"off","hide_thumbs_on_mobile":"off","hide_thumbs_under_resolution":0,"hide_thumbs_delay_mobile":1500,"start_with_slide":"1","first_transition_active":"false","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"simplify_ie8_ios4":"off","show_alternative_type":"off","show_alternate_image":"","reset_transitions":"","reset_transition_duration":0,"0":"Execute settings on all slides","jquery_noconflict":"on","js_to_body":"false","output_type":"none","custom_css":"","custom_javascript":"","template":"false"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_slides`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `layers` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `wp_revslider_slides`
--

INSERT INTO `wp_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(1, 1, 1, '{"background_type":"image","title":"Slide1","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","image_id":"21","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center center","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone","image":"http:\\/\\/localhost\\/Dalponte\\/wp-content\\/uploads\\/2015\\/07\\/patricia-dalponte-Slider-03.jpg","0":"Remove"}', '[{"text":"EL \\u00c9XITO SE REFLEJA ","type":"text","left":0,"top":-90,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetextessence-sans-bold","time":500,"endtime":"8650","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"0","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":8000,"timeLast":8700,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"EN TU IMAGEN ","type":"text","left":0,"top":0,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetext67100essence-sans-bold","time":900,"endtime":"8650","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"1","endTimeFinal":8650,"endSpeedFinal":300,"realEndTime":8300,"timeLast":8650,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"[vc_btn style=\\"outline-custom\\" outline_custom_color=\\"#ffffff\\" outline_custom_hover_background=\\"#ffffff\\" outline_custom_hover_text=\\"#0a0a0a\\" shape=\\"round \\" title=\\"CONTACTANOS\\"]","type":"text","left":-190,"top":150,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetext67100essence-sans-bold","time":1250,"endtime":"8600","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"2","endTimeFinal":8250,"endSpeedFinal":300,"realEndTime":8550,"timeLast":8250,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"[vc_btn style=\\"outline-custom\\" outline_custom_color=\\"#ffffff\\" outline_custom_hover_background=\\"#ffffff\\" outline_custom_hover_text=\\"#0a0a0a\\" shape=\\"round\\" title=\\"NUESTROS SERVICIOS\\"]","type":"text","left":60,"top":150,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetext67100essence-sans-bold","time":1600,"endtime":"8600","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"3","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":8900,"timeLast":8500,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]'),
(2, 1, 2, '{"background_type":"image","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","image_id":"20","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone","image":"http:\\/\\/localhost\\/Dalponte\\/wp-content\\/uploads\\/2015\\/07\\/patricia-dalponte-Slider-02.jpg","0":"Remove"}', '[{"text":"EL \\u00c9XITO SE REFLEJA","type":"text","left":0,"top":-90,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"randomrotate","easing":"Quad.easeIn","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetextessence-sans-bold","time":500,"endtime":"8600","endspeed":300,"endanimation":"randomrotateout","endeasing":"Power3.easeIn","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"0","endTimeFinal":8650,"endSpeedFinal":300,"realEndTime":8000,"timeLast":8650,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"EN TU IMAGEN","type":"text","left":0,"top":0,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetext67100essence-sans-bold","time":900,"endtime":"8700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"1","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":8300,"timeLast":8500,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"[vc_btn style=\\"outline-custom\\" outline_custom_color=\\"#ffffff\\" outline_custom_hover_background=\\"#ffffff\\" outline_custom_hover_text=\\"#0a0a0a\\" shape=\\"round\\" title=\\"CONTACTANOS\\"]","type":"text","left":-190,"top":150,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetextessence-sans-bold","time":1300,"endtime":"8600","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":158,"height":253,"serial":"2","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":8600,"timeLast":8700,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"[vc_btn style=\\"outline-custom\\" outline_custom_color=\\"#ffffff\\" outline_custom_hover_background=\\"#ffffff\\" outline_custom_hover_text=\\"#0a0a0a\\" shape=\\"round\\" title=\\"NUESTROS SERVICIOS\\"]","type":"text","left":60,"top":150,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetextessence-sans-bold","time":1600,"endtime":"8600","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":158,"height":253,"serial":"3","endTimeFinal":8600,"endSpeedFinal":300,"realEndTime":8900,"timeLast":8600,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]'),
(3, 1, 3, '{"background_type":"image","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"random","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","image_id":"19","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"9000","kb_easing":"Linear.easeNone","image":"http:\\/\\/localhost\\/Dalponte\\/wp-content\\/uploads\\/2015\\/07\\/patricia-dalponte-Slider-01.jpg","0":"Remove"}', '[{"text":"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\nEL \\u00c9XITO SE REFLEJA","type":"text","left":0,"top":-90,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetextessence-sans-bold","time":500,"endtime":"7700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"0","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":8000,"timeLast":8500,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"EN TU IMAGEN","type":"text","left":0,"top":0,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetext67100essence-sans-bold","time":900,"endtime":"8700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"1","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":8300,"timeLast":8500,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"[vc_btn style=\\"outline-custom\\" outline_custom_color=\\"#ffffff\\" outline_custom_hover_background=\\"#ffffff\\" outline_custom_hover_text=\\"#0a0a0a\\" shape=\\"round\\" title=\\"CONTACTANOS\\"]","type":"text","left":-190,"top":150,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetextessence-sans-bold","time":1300,"endtime":"8600","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"2","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":8600,"timeLast":8500,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"[vc_btn style=\\"outline-custom\\" outline_custom_color=\\"#ffffff\\" outline_custom_hover_background=\\"#ffffff\\" outline_custom_hover_text=\\"#0a0a0a\\" shape=\\"round\\" title=\\"NUESTROS SERVICIOS\\"]","type":"text","left":60,"top":150,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"Power3.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":300,"align_hor":"center","align_vert":"middle","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"largetextessence-sans-bold","time":1600,"endtime":"8600","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"3","endTimeFinal":8700,"endSpeedFinal":300,"realEndTime":8900,"timeLast":8500,"endWithSlide":false,"max_height":"auto","max_width":"auto","2d_rotation":"","alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_revslider_static_slides`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_static_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `layers` text COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'pending', 'pending', 0),
(7, 'failed', 'failed', 0),
(8, 'on-hold', 'on-hold', 0),
(9, 'processing', 'processing', 0),
(10, 'completed', 'completed', 0),
(11, 'refunded', 'refunded', 0),
(12, 'cancelled', 'cancelled', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'shop_order_status', '', 0, 0),
(7, 7, 'shop_order_status', '', 0, 0),
(8, 8, 'shop_order_status', '', 0, 0),
(9, 9, 'shop_order_status', '', 0, 0),
(10, 10, 'shop_order_status', '', 0, 0),
(11, 11, 'shop_order_status', '', 0, 0),
(12, 12, 'shop_order_status', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=40 ;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'support'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'ectoplasm'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw,vc_pointers_backend_editor'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'session_tokens', 'a:1:{s:64:"e11b0ad734add45e9890f38a1d4dc426ecd072a6aa0726171b4db250014aaf59";a:4:{s:10:"expiration";i:1436973201;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.36";s:5:"login";i:1436800401;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'billing_first_name', ''),
(17, 1, 'billing_last_name', ''),
(18, 1, 'billing_company', ''),
(19, 1, 'billing_address_1', ''),
(20, 1, 'billing_address_2', ''),
(21, 1, 'billing_city', ''),
(22, 1, 'billing_postcode', ''),
(23, 1, 'billing_country', ''),
(24, 1, 'billing_state', ''),
(25, 1, 'billing_phone', ''),
(26, 1, 'billing_email', ''),
(27, 1, 'shipping_first_name', ''),
(28, 1, 'shipping_last_name', ''),
(29, 1, 'shipping_company', ''),
(30, 1, 'shipping_address_1', ''),
(31, 1, 'shipping_address_2', ''),
(32, 1, 'shipping_city', ''),
(33, 1, 'shipping_postcode', ''),
(34, 1, 'shipping_country', ''),
(35, 1, 'shipping_state', ''),
(36, 1, 'closedpostboxes_page', 'a:1:{i:0;s:12:"postimagediv";}'),
(37, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(38, 1, 'wp_user-settings', 'editor=tinymce&hidetb=1&libraryContent=browse'),
(39, 1, 'wp_user-settings-time', '1436802583');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'support', '$P$BaXJOG.rTV14eeLU1JezbHEjoUA7IR/', 'support', 'info@lieison.com', '', '2015-07-06 22:48:34', '', 0, 'support');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`(191)),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `woocommerce_term_id` (`woocommerce_term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
