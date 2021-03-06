-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2017 at 07:18 AM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlc_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(255) NOT NULL,
  `viewed` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit`
--

INSERT INTO `audit` (`id`, `user`, `page`, `timestamp`, `ip`, `viewed`) VALUES
(1, 0, '6', '2017-06-05 03:59:36', '127.0.0.1', 0),
(2, 0, '4', '2017-06-05 03:59:37', '127.0.0.1', 0),
(3, 0, '3', '2017-06-05 03:59:38', '127.0.0.1', 0),
(4, 0, '3', '2017-06-06 12:08:32', '127.0.0.1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bullets`
--

CREATE TABLE `bullets` (
  `id` int(11) NOT NULL,
  `bullet_set` varchar(255) NOT NULL,
  `bullet_1` varchar(255) NOT NULL,
  `bullet_2` varchar(255) NOT NULL,
  `bullet_3` varchar(255) NOT NULL,
  `bullet_4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bullets`
--

INSERT INTO `bullets` (`id`, `bullet_set`, `bullet_1`, `bullet_2`, `bullet_3`, `bullet_4`) VALUES
(12, 'A', 'Bullet A1', 'Bullet A2', 'Bullet A3', 'Bullet A4'),
(13, 'B', 'Bullet B1', 'Bullet B2', 'Bullet B3', 'Bullet B4'),
(14, 'C', 'Bullet C1', 'Bullet C2', 'Bullet C3', 'Bullet C4'),
(15, 'D', 'Bullet D1', 'Bullet D2', 'Bullet D3', 'Bullet D4');

-- --------------------------------------------------------

--
-- Table structure for table `color_schemes`
--

CREATE TABLE `color_schemes` (
  `id` int(11) NOT NULL,
  `color_scheme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color_schemes`
--

INSERT INTO `color_schemes` (`id`, `color_scheme`) VALUES
(1, 'Color Scheme 1'),
(2, 'Color Scheme 2'),
(3, 'Color Scheme 3'),
(4, 'Color Scheme 4');

-- --------------------------------------------------------

--
-- Table structure for table `ctas`
--

CREATE TABLE `ctas` (
  `id` int(11) NOT NULL,
  `cta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ctas`
--

INSERT INTO `ctas` (`id`, `cta`) VALUES
(1, 'CTA 1'),
(2, 'CTA 2'),
(3, 'CTA 3'),
(4, 'CTA 4');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `website_name` varchar(100) NOT NULL,
  `smtp_server` varchar(100) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `email_login` varchar(150) NOT NULL,
  `email_pass` varchar(100) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `from_email` varchar(150) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `verify_url` varchar(255) NOT NULL,
  `email_act` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `website_name`, `smtp_server`, `smtp_port`, `email_login`, `email_pass`, `from_name`, `from_email`, `transport`, `verify_url`, `email_act`) VALUES
(1, 'User Spice', 'mail.userspice.com', 587, 'noreply@userspice.com', 'password', 'Your Name', 'noreply@userspice.com', 'tls', 'http://localhost/us4/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `headlines`
--

CREATE TABLE `headlines` (
  `id` int(11) NOT NULL,
  `headline` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headlines`
--

INSERT INTO `headlines` (`id`, `headline`) VALUES
(1, 'Formula #1: [INCREDIBLY GOOD] WITHOUT [INCREDIBLY BAD]'),
(2, 'Formula #2: How [Premise] Got Me A [Awesome Outcome]'),
(3, 'Formula #3: Are You In This Kind Of [Pain or Anxiety]'),
(4, 'Formula #4: How I [Achieved an awesome outcome] [by overcoming a massive disadvantage]'),
(5, 'Formula #5: How To [Live The Promise] starting with [A Low Magnitude Change, Activity or Situation]'),
(6, 'Formula #6: For the [Prospect In Pain] How To [Live The Promise] Starting With [A Low Magnitude Change, Activity or Situation]'),
(7, 'Formula #7: If You [Can/Are/Have] then You Can [Have an Awesome Outcome]'),
(8, 'Formula #8: [Secrets/Tricks/Strategies/Techniques/Systems] of a [Prospect who is living the Promise]'),
(9, 'Formula #9: [WARNING/Alert/Attention/Be Advised]: [A Specific Kind of Prospect] will [Experience/Become] [A Situation even MORE painful than the one they are currently in]'),
(10, 'Formula #10: [Give Me/Show Me] [A Situation/Amount of Activity] and I\'ll [Deliver You to the Promise Land/Prevent You From Experiencing More Pain]'),
(11, 'Formula #11: [Number or Statistics] of a [Type of Prospect] are [Now Living in the Promise Land] [despite] [An Initial Negative Reaction to the Premise]'),
(12, 'Formula #12: [Number] of ways to [Reach the Shore of the Promise Land] while [not increasing pain/effort/anxiety/loss]'),
(13, 'Formula #13: How To Get [Result] [Quickly] [Without Risk]'),
(14, 'Formula #14: How To [Eliminate Specific Pain] [Without More Pain]'),
(15, 'Formula #15: If [Specific Emotional Hot Button Situation Is Happening], Then [Worst Fear Might Be True]'),
(16, 'Formula #16: What To Do If [Specific Hot Button Situation]'),
(17, 'Formula #17: 10 Mistakes Most [Customer Description] Make [In Situation] And How To Avoid Them'),
(18, 'Formula #18: Why [Common-Sense Approach] Does Not Work And What To Do About It'),
(19, 'Formula #19: How To [Turn Problem] [Into Benefit]'),
(20, 'http://blog.myleadsystempro.com/19-proven-formulas-for-high-converting-headlines#');

-- --------------------------------------------------------

--
-- Table structure for table `hero_images`
--

CREATE TABLE `hero_images` (
  `id` int(11) NOT NULL,
  `hero_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hero_images`
--

INSERT INTO `hero_images` (`id`, `hero_image`) VALUES
(1, 'Hero Image 1'),
(2, 'Hero Image 2'),
(3, 'Hero Image 3'),
(4, 'Hero Image 4');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `stripe_ts` varchar(255) NOT NULL,
  `stripe_tp` varchar(255) NOT NULL,
  `stripe_ls` varchar(255) NOT NULL,
  `stripe_lp` varchar(255) NOT NULL,
  `recap_pub` varchar(100) NOT NULL,
  `recap_pri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

CREATE TABLE `layouts` (
  `id` int(11) NOT NULL,
  `layout` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layouts`
--

INSERT INTO `layouts` (`id`, `layout`) VALUES
(1, 'Layout 1'),
(2, 'Layout 2'),
(3, 'Layout 3'),
(4, 'Layout 4');

-- --------------------------------------------------------

--
-- Table structure for table `lead_magnets`
--

CREATE TABLE `lead_magnets` (
  `id` int(11) NOT NULL,
  `lead_magnet` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `lead_magnets`
--

INSERT INTO `lead_magnets` (`id`, `lead_magnet`) VALUES
(1, 'Lead Magnet 1'),
(2, 'Lead Magnet 2'),
(3, 'Lead Magnet 3'),
(4, 'Lead Magnet 4');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_body` text NOT NULL,
  `msg_read` int(1) NOT NULL,
  `msg_thread` int(11) NOT NULL,
  `deleted` int(1) NOT NULL,
  `sent_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message_threads`
--

CREATE TABLE `message_threads` (
  `id` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_subject` varchar(255) NOT NULL,
  `last_update` datetime NOT NULL,
  `last_update_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page` varchar(100) NOT NULL,
  `private` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `private`) VALUES
(1, 'index.php', 0),
(2, 'z_us_root.php', 0),
(3, 'users/account.php', 1),
(4, 'users/admin.php', 1),
(5, 'users/admin_page.php', 1),
(6, 'users/admin_pages.php', 1),
(7, 'users/admin_permission.php', 1),
(8, 'users/admin_permissions.php', 1),
(9, 'users/admin_user.php', 1),
(10, 'users/admin_users.php', 1),
(11, 'users/edit_profile.php', 1),
(12, 'users/email_settings.php', 1),
(13, 'users/email_test.php', 1),
(14, 'users/forgot_password.php', 0),
(15, 'users/forgot_password_reset.php', 0),
(16, 'users/index.php', 0),
(17, 'users/init.php', 0),
(18, 'users/join.php', 0),
(19, 'users/joinThankYou.php', 0),
(20, 'users/login.php', 0),
(21, 'users/logout.php', 0),
(22, 'users/profile.php', 1),
(23, 'users/times.php', 0),
(24, 'users/user_settings.php', 1),
(25, 'users/verify.php', 0),
(26, 'users/verify_resend.php', 0),
(27, 'users/view_all_users.php', 1),
(28, 'usersc/empty.php', 0),
(31, 'users/oauth_success.php', 0),
(33, 'users/fb-callback.php', 0),
(37, 'users/check_updates.php', 1),
(38, 'users/google_helpers.php', 0),
(39, 'users/tomfoolery.php', 1),
(40, 'users/create_message.php', 1),
(41, 'users/messages.php', 1),
(42, 'users/message.php', 1),
(44, 'xtc.php', 0),
(45, 'xtc1.php', 0),
(46, 'usersc/login.php', 0),
(47, 'get_new_page.php', 0),
(48, 'get_new_pageDEBUG.php', 0),
(49, 'usersc/account.php', 0),
(50, 'usersc/join.php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `permission_page_matches`
--

CREATE TABLE `permission_page_matches` (
  `id` int(11) NOT NULL,
  `permission_id` int(15) NOT NULL,
  `page_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_page_matches`
--

INSERT INTO `permission_page_matches` (`id`, `permission_id`, `page_id`) VALUES
(2, 2, 27),
(3, 1, 24),
(4, 1, 22),
(5, 2, 13),
(6, 2, 12),
(7, 1, 11),
(8, 2, 10),
(9, 2, 9),
(10, 2, 8),
(11, 2, 7),
(12, 2, 6),
(13, 2, 5),
(14, 2, 4),
(15, 1, 3),
(16, 2, 37),
(17, 2, 39),
(19, 2, 40),
(21, 2, 41),
(23, 2, 42),
(27, 1, 42),
(28, 1, 27),
(29, 1, 41),
(30, 1, 40);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`) VALUES
(1, 1, '<h1>This is the Admin\'s bio.</h1>'),
(2, 2, 'This is your bio');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(50) NOT NULL,
  `recaptcha` int(1) NOT NULL DEFAULT '0',
  `force_ssl` int(1) NOT NULL,
  `login_type` varchar(20) NOT NULL,
  `css_sample` int(1) NOT NULL,
  `us_css1` varchar(255) NOT NULL,
  `us_css2` varchar(255) NOT NULL,
  `us_css3` varchar(255) NOT NULL,
  `css1` varchar(255) NOT NULL,
  `css2` varchar(255) NOT NULL,
  `css3` varchar(255) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `language` varchar(255) NOT NULL,
  `track_guest` int(1) NOT NULL,
  `site_offline` int(1) NOT NULL,
  `force_pr` int(1) NOT NULL,
  `reserved1` varchar(100) NOT NULL,
  `reserverd2` varchar(100) NOT NULL,
  `custom1` varchar(100) NOT NULL,
  `custom2` varchar(100) NOT NULL,
  `custom3` varchar(100) NOT NULL,
  `glogin` int(1) NOT NULL DEFAULT '0',
  `fblogin` int(1) NOT NULL,
  `gid` varchar(255) NOT NULL,
  `gsecret` varchar(255) NOT NULL,
  `gredirect` varchar(255) NOT NULL,
  `ghome` varchar(255) NOT NULL,
  `fbid` varchar(255) NOT NULL,
  `fbsecret` varchar(255) NOT NULL,
  `fbcallback` varchar(255) NOT NULL,
  `graph_ver` varchar(255) NOT NULL,
  `finalredir` varchar(255) NOT NULL,
  `req_cap` int(1) NOT NULL,
  `req_num` int(1) NOT NULL,
  `min_pw` int(2) NOT NULL,
  `max_pw` int(3) NOT NULL,
  `min_un` int(2) NOT NULL,
  `max_un` int(3) NOT NULL,
  `messaging` int(1) NOT NULL,
  `snooping` int(1) NOT NULL,
  `echouser` int(11) NOT NULL,
  `wys` int(1) NOT NULL,
  `change_un` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `recaptcha`, `force_ssl`, `login_type`, `css_sample`, `us_css1`, `us_css2`, `us_css3`, `css1`, `css2`, `css3`, `site_name`, `language`, `track_guest`, `site_offline`, `force_pr`, `reserved1`, `reserverd2`, `custom1`, `custom2`, `custom3`, `glogin`, `fblogin`, `gid`, `gsecret`, `gredirect`, `ghome`, `fbid`, `fbsecret`, `fbcallback`, `graph_ver`, `finalredir`, `req_cap`, `req_num`, `min_pw`, `max_pw`, `min_un`, `max_un`, `messaging`, `snooping`, `echouser`, `wys`, `change_un`) VALUES
(1, 0, 0, '', 1, '../users/css/color_schemes/standard.css', '../users/css/sb-admin.css', '../users/css/custom.css', '', '', '', 'MLM Leads Club', 'en', 1, 0, 0, '', '', '', '', '', 0, 0, 'Google ID Here', 'Google Secret Here', 'http://localhost/userspice/users/oauth_success.php', 'http://localhost/userspice/', 'FB ID Here', 'FB Secret Here', 'http://localhost/userspice/users/fb-callback.php', 'v2.2', 'account.php', 1, 1, 6, 20, 2, 40, 0, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_headlines`
--

CREATE TABLE `sub_headlines` (
  `id` int(11) NOT NULL,
  `sub_headline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sub_headlines`
--

INSERT INTO `sub_headlines` (`id`, `sub_headline`) VALUES
(1, 'Sub Headline 1'),
(2, 'Sub Headline 2'),
(3, 'Sub Headline 3'),
(4, 'Sub Headline 4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(155) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `permissions` int(11) NOT NULL,
  `logins` int(100) NOT NULL,
  `account_owner` tinyint(4) NOT NULL DEFAULT '0',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) NOT NULL,
  `stripe_cust_id` varchar(255) NOT NULL,
  `billing_phone` varchar(20) NOT NULL,
  `billing_srt1` varchar(255) NOT NULL,
  `billing_srt2` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_state` varchar(255) NOT NULL,
  `billing_zip_code` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT '0',
  `vericode` varchar(15) NOT NULL,
  `title` varchar(100) NOT NULL,
  `active` int(1) NOT NULL,
  `custom1` varchar(255) NOT NULL,
  `custom2` varchar(255) NOT NULL,
  `custom3` varchar(255) NOT NULL,
  `custom4` varchar(255) NOT NULL,
  `custom5` varchar(255) NOT NULL,
  `oauth_provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gpluslink` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `fb_uid` varchar(255) NOT NULL,
  `un_changed` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `fname`, `lname`, `permissions`, `logins`, `account_owner`, `account_id`, `company`, `stripe_cust_id`, `billing_phone`, `billing_srt1`, `billing_srt2`, `billing_city`, `billing_state`, `billing_zip_code`, `join_date`, `last_login`, `email_verified`, `vericode`, `title`, `active`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `oauth_provider`, `oauth_uid`, `gender`, `locale`, `gpluslink`, `picture`, `created`, `modified`, `fb_uid`, `un_changed`) VALUES
(1, 'userspicephp@gmail.com', 'admin', '$2y$12$1v06jm2KMOXuuo3qP7erTuTIJFOnzhpds1Moa8BadnUUeX0RV3ex.', 'Dan', 'Hoover', 1, 51, 1, 0, 'UserSpice', '', '', '', '', '', '', '', '2016-01-01 00:00:00', '2017-06-06 12:08:44', 1, '322418', '', 0, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '1899-11-30 00:00:00', '', 0),
(2, 'noreply@userspice.com', 'user', '$2y$12$HZa0/d7evKvuHO8I3U8Ff.pOjJqsGTZqlX8qURratzP./EvWetbkK', 'Sample', 'User', 1, 5, 1, 0, 'none', '', '', '', '', '', '', '', '2016-01-02 00:00:00', '2017-02-20 12:14:10', 1, '970748', '', 1, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `user_id` int(10) NOT NULL,
  `session` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `ip`, `timestamp`, `user_id`, `session`) VALUES
(1, '127.0.0.1', '1496751324', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `uagent` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_permission_matches`
--

CREATE TABLE `user_permission_matches` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_permission_matches`
--

INSERT INTO `user_permission_matches` (`id`, `user_id`, `permission_id`) VALUES
(100, 1, 1),
(101, 1, 2),
(102, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bullets`
--
ALTER TABLE `bullets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_schemes`
--
ALTER TABLE `color_schemes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ctas`
--
ALTER TABLE `ctas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headlines`
--
ALTER TABLE `headlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_images`
--
ALTER TABLE `hero_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layouts`
--
ALTER TABLE `layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_magnets`
--
ALTER TABLE `lead_magnets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_threads`
--
ALTER TABLE `message_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_page_matches`
--
ALTER TABLE `permission_page_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_headlines`
--
ALTER TABLE `sub_headlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL` (`email`) USING BTREE;

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permission_matches`
--
ALTER TABLE `user_permission_matches`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit`
--
ALTER TABLE `audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bullets`
--
ALTER TABLE `bullets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `color_schemes`
--
ALTER TABLE `color_schemes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ctas`
--
ALTER TABLE `ctas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `headlines`
--
ALTER TABLE `headlines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `hero_images`
--
ALTER TABLE `hero_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `layouts`
--
ALTER TABLE `layouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lead_magnets`
--
ALTER TABLE `lead_magnets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message_threads`
--
ALTER TABLE `message_threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permission_page_matches`
--
ALTER TABLE `permission_page_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sub_headlines`
--
ALTER TABLE `sub_headlines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_permission_matches`
--
ALTER TABLE `user_permission_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
