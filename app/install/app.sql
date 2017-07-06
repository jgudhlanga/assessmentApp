
CREATE TABLE `catalogues` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `period` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalogues`
--

INSERT INTO `catalogues` (`id`, `shop_id`, `product_id`, `price`, `period`, `created`, `modified`) VALUES
(1, 5, 1, '20.00', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(2, 5, 2, '10.00', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(3, 5, 3, '19.00', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(4, 5, 4, '25.00', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(5, 5, 5, '17.00', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(6, 5, 6, '26.00', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(7, 5, 7, '26.00', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(8, 5, 8, '19.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(9, 5, 9, '28.00', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(10, 5, 10, '29.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(11, 5, 11, '129.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(12, 5, 12, '24.00', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(13, 5, 13, '27.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(14, 5, 14, '7.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(15, 5, 15, '56.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(16, 5, 16, '11.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(17, 5, 17, '30.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(18, 5, 18, '6.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(19, 5, 19, '35.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(20, 5, 20, '178.99', 1427846400, '2017-04-19 06:19:19', '2017-04-19 06:19:19'),
(21, 6, 1, '19.00', 1427846400, '2017-04-19 06:23:19', '2017-04-19 06:23:19'),
(22, 6, 2, '9.00', 1427846400, '2017-04-19 06:23:19', '2017-04-19 06:23:19'),
(23, 6, 3, '19.00', 1427846400, '2017-04-19 06:23:19', '2017-04-19 06:23:19'),
(24, 6, 4, '24.99', 1427846400, '2017-04-19 06:23:19', '2017-04-19 06:23:19'),
(25, 6, 5, '16.00', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(26, 6, 6, '25.00', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(27, 6, 7, '24.99', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(28, 6, 8, '18.99', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(29, 6, 9, '24.99', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(30, 6, 10, '27.99', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(31, 6, 11, '130.99', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(32, 6, 12, '23.00', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(33, 6, 13, '26.00', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(34, 6, 14, '6.00', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(35, 6, 15, '50.00', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(36, 6, 16, '11.99', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(37, 6, 17, '30.00', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(38, 6, 18, '6.00', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(39, 6, 19, '33.99', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(40, 6, 20, '190.99', 1427846400, '2017-04-19 06:23:20', '2017-04-19 06:23:20'),
(41, 8, 1, '18.99', 1427846400, '2017-04-19 06:28:42', '2017-04-19 06:28:42'),
(42, 8, 2, '8.00', 1427846400, '2017-04-19 06:28:42', '2017-04-19 06:28:42'),
(43, 8, 3, '18.99', 1427846400, '2017-04-19 06:28:42', '2017-04-19 06:28:42'),
(44, 8, 4, '23.00', 1427846400, '2017-04-19 06:28:42', '2017-04-19 06:28:42'),
(45, 8, 5, '15.00', 1427846400, '2017-04-19 06:28:42', '2017-04-19 06:28:42'),
(46, 8, 6, '24.99', 1427846400, '2017-04-19 06:28:42', '2017-04-19 06:28:42'),
(47, 8, 7, '23.99', 1427846400, '2017-04-19 06:28:42', '2017-04-19 06:28:42'),
(48, 8, 8, '18.00', 1427846400, '2017-04-19 06:28:42', '2017-04-19 06:28:42'),
(49, 8, 9, '24.00', 1427846400, '2017-04-19 06:28:42', '2017-04-19 06:28:42'),
(50, 8, 10, '27.00', 1427846400, '2017-04-19 06:28:42', '2017-04-19 06:28:42'),
(51, 8, 11, '130.00', 1427846400, '2017-04-19 06:28:43', '2017-04-19 06:28:43'),
(52, 8, 12, '22.00', 1427846400, '2017-04-19 06:28:43', '2017-04-19 06:28:43'),
(53, 8, 13, '25.99', 1427846400, '2017-04-19 06:28:43', '2017-04-19 06:28:43'),
(54, 8, 14, '5.99', 1427846400, '2017-04-19 06:28:43', '2017-04-19 06:28:43'),
(55, 8, 15, '50.00', 1427846400, '2017-04-19 06:28:43', '2017-04-19 06:28:43'),
(56, 8, 16, '11.00', 1427846400, '2017-04-19 06:28:43', '2017-04-19 06:28:43'),
(57, 8, 17, '29.00', 1427846400, '2017-04-19 06:28:43', '2017-04-19 06:28:43'),
(58, 8, 18, '6.00', 1427846400, '2017-04-19 06:28:43', '2017-04-19 06:28:43'),
(59, 8, 19, '33.00', 1427846400, '2017-04-19 06:28:43', '2017-04-19 06:28:43'),
(60, 8, 20, '190.00', 1427846400, '2017-04-19 06:28:43', '2017-04-19 06:28:43'),
(61, 5, 1, '30.00', 1459468800, '2017-04-19 06:33:56', '2017-04-19 06:33:56'),
(62, 5, 2, '20.00', 1459468800, '2017-04-19 06:33:56', '2017-04-19 06:33:56'),
(63, 5, 3, '29.00', 1459468800, '2017-04-19 06:33:56', '2017-04-19 06:33:56'),
(64, 5, 4, '35.00', 1459468800, '2017-04-19 06:33:56', '2017-04-19 06:33:56'),
(65, 5, 5, '27.00', 1459468800, '2017-04-19 06:33:56', '2017-04-19 06:33:56'),
(66, 5, 6, '36.00', 1459468800, '2017-04-19 06:33:56', '2017-04-19 06:33:56'),
(67, 5, 7, '36.00', 1459468800, '2017-04-19 06:33:56', '2017-04-19 06:33:56'),
(68, 5, 8, '30.00', 1459468800, '2017-04-19 06:33:56', '2017-04-19 06:33:56'),
(69, 5, 9, '30.00', 1459468800, '2017-04-19 06:33:56', '2017-04-19 06:33:56'),
(70, 5, 10, '37.99', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(71, 5, 11, '160.99', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(72, 5, 12, '56.99', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(73, 5, 13, '35.99', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(74, 5, 14, '11.99', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(75, 5, 15, '89.99', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(76, 5, 16, '16.99', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(77, 5, 17, '35.00', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(78, 5, 18, '11.99', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(79, 5, 19, '38.00', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(80, 5, 20, '190.00', 1459468800, '2017-04-19 06:33:57', '2017-04-19 06:33:57'),
(81, 6, 1, '30.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(82, 6, 2, '10.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(83, 6, 3, '30.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(84, 6, 4, '37.99', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(85, 6, 5, '40.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(86, 6, 6, '30.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(87, 6, 7, '36.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(88, 6, 8, '25.99', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(89, 6, 9, '35.99', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(90, 6, 10, '33.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(91, 6, 11, '140.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(92, 6, 12, '27.99', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(93, 6, 13, '30.99', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(94, 6, 14, '12.99', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(95, 6, 15, '70.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(96, 6, 16, '12.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(97, 6, 17, '35.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(98, 6, 18, '7.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(99, 6, 19, '42.00', 1459468800, '2017-04-19 06:39:29', '2017-04-19 06:39:29'),
(100, 6, 20, '200.99', 1459468800, '2017-04-19 06:39:30', '2017-04-19 06:39:30'),
(101, 8, 1, '28.99', 1459468800, '2017-04-19 06:43:51', '2017-04-19 06:43:51'),
(102, 8, 2, '9.99', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(103, 8, 3, '25.99', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(104, 8, 4, '30.99', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(105, 8, 5, '30.00', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(106, 8, 6, '35.00', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(107, 8, 7, '29.00', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(108, 8, 8, '32.00', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(109, 8, 9, '25.00', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(110, 8, 10, '31.00', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(111, 8, 11, '150.00', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(112, 8, 12, '40.00', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(113, 8, 13, '35.00', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(114, 8, 14, '7.99', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(115, 8, 15, '70.00', 1459468800, '2017-04-19 06:43:52', '2017-04-19 06:43:52'),
(116, 8, 16, '12.00', 1459468800, '2017-04-19 06:43:53', '2017-04-19 06:43:53'),
(117, 8, 17, '32.00', 1459468800, '2017-04-19 06:43:53', '2017-04-19 06:43:53'),
(118, 8, 18, '7.00', 1459468800, '2017-04-19 06:43:53', '2017-04-19 06:43:53'),
(119, 8, 19, '35.00', 1459468800, '2017-04-19 06:43:53', '2017-04-19 06:43:53'),
(120, 8, 20, '200.00', 1459468800, '2017-04-19 06:43:53', '2017-04-19 06:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `lat` varchar(512) NOT NULL,
  `lng` double NOT NULL,
  `address` varchar(512) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` text,
  `icon` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `title`, `description`, `icon`, `url`, `created`, `modified`) VALUES
(1, 'Shop', '', 'glyphicon glyphicon-shopping-cart', 'shoppinglist', '2017-04-17 22:28:07', '2017-04-17 22:28:07'),
(2, 'Location Finder', '', 'glyphicon glyphicon-flag', 'locations', '2017-04-17 22:28:27', '2017-04-20 11:16:16'),
(3, 'Setup', '', 'glyphicon glyphicon-cog', 'admin', '2017-04-17 22:28:44', '2017-04-17 22:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `created`, `modified`) VALUES
(1, 'Sugar 2kg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 09:15:55', '2017-04-16 18:35:41'),
(2, 'Salt 1kg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:17:41', '2017-04-16 18:36:10'),
(3, 'Tea bags 500g', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:18:28', '2017-04-16 18:37:34'),
(4, 'Rice 2kg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:19:05', '2017-04-16 18:37:47'),
(5, 'Beans 2kg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:30:31', '2017-04-16 18:38:02'),
(6, 'Honey 1 Liter', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:31:44', '2017-04-16 18:38:15'),
(7, ' Butter 1kg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:33:56', '2017-04-16 18:38:50'),
(8, 'Peanut Butter 1kg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:34:54', '2017-04-16 18:39:07'),
(9, 'Appricot Smooth Jam 900g', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:36:27', '2017-04-16 18:39:24'),
(10, 'Sunfoil Cooking Oil 2l', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:37:28', '2017-04-16 18:39:40'),
(11, 'Vodka 750ml X  6 pack', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:43:07', '2017-04-16 18:39:59'),
(12, 'Nugget 500ml Shoe Polish', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:44:15', '2017-04-16 18:40:30'),
(13, 'Parmalat 2l Fresh Milk', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:46:00', '2017-04-16 18:40:47'),
(14, 'Gloria Baking Powder 500g', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:47:12', '2017-04-16 10:47:12'),
(15, ' Beef Rump Steak 2kg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 10:48:32', '2017-04-16 10:48:32'),
(16, 'Coca Cola 2l', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 11:38:15', '2017-04-16 11:38:15'),
(17, 'Cremora Creamer 1kg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 11:38:46', '2017-04-16 11:38:46'),
(18, 'Suarex Bathing Soap', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 11:39:39', '2017-04-18 10:02:00'),
(19, 'Vaseline Jelly 500g', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 11:40:47', '2017-04-16 11:40:47'),
(20, 'Huggies Daipers 3kg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2017-04-16 11:41:26', '2017-04-16 11:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `access` smallint(6) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rights`
--

INSERT INTO `rights` (`id`, `module_id`, `role_id`, `access`, `created`, `modified`) VALUES
(2, 1, 2, 1, '2017-04-18 04:29:46', '2017-04-18 04:29:46'),
(3, 2, 2, 1, '2017-04-18 04:29:50', '2017-04-18 04:29:50'),
(4, 3, 2, 1, '2017-04-18 04:29:54', '2017-04-18 04:29:54'),
(5, 1, 3, 1, '2017-04-18 05:31:09', '2017-04-18 05:31:09'),
(6, 2, 4, 1, '2017-04-18 05:31:26', '2017-04-18 05:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `description`, `created`, `modified`) VALUES
(2, 'Administrator', 'Has super powers, can both access the shopping and location functionality', '2017-04-16 06:12:21', '2017-04-17 22:30:47'),
(3, 'Shopping User', 'Can only access the shopping functionality', '2017-04-16 09:55:00', '2017-04-17 22:31:23'),
(4, 'Location User', 'Can only access the location functionality', '2017-04-16 09:56:33', '2017-04-17 22:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `shoppinglist`
--

CREATE TABLE `shoppinglist` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `title`, `description`, `created`, `modified`) VALUES
(5, 'Checkers', '', '2017-04-16 06:54:52', '2017-04-16 06:54:52'),
(6, 'Spar', '', '2017-04-16 06:55:17', '2017-04-16 06:55:17'),
(8, 'Pick & Pay', '', '2017-04-16 09:52:56', '2017-04-16 09:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `surname`, `password`, `created`, `modified`, `role_id`) VALUES
(1, 'jimmyneds@gmail.com', 'James', 'Gudhlanga', '$2y$10$5WHoPx9YJoe8SJzaAYnt9uQ4xSXqBX.sO1R06QvlbGrk7hhkJ6BpW', '2017-04-16 10:07:56', '2017-04-17 21:39:05', 2),
(2, 'davidcoke@jdev.com', 'David', 'Coke', '$2y$10$a/zq2R8qoBoNOTBb6OcASu9UaNodMVC37SUgbQgO9SI/3OclDakH.', '2017-04-16 10:09:25', '2017-04-18 06:00:28', 2),
(3, 'luksteve@yahoo.com', 'Lukas', 'Steve', '$2y$10$9VxEjQ3Rl1T0sLxOBm0QAOA2GtIBvisbtj2eL3gO2wFbS/dUBgFOW', '2017-04-16 10:10:18', '2017-04-18 06:00:39', 3),
(4, 'denisgora@cooltoad.com', 'Denis', 'Gora', '$2y$10$vyI7G14zhxjuDjVnI6qQBef2ao6GNt7iS20HnXvuhlT8oi7LKqtFW', '2017-04-16 10:10:58', '2017-04-18 06:00:43', 3),
(5, 'faxpito@gmail.com', 'Fax', 'Pito', '$2y$10$wkerMC.ImfoyMMspPm4Sqep1K.W/OShu6zJTnGdZck2tPjLgNL2KK', '2017-04-16 10:11:39', '2017-04-18 06:00:47', 4),
(6, 'lgudhlanga@gmail.com', 'Loraine', 'Gudhlanga', '$2y$10$8jxqstERfBhT6WG.5TR/zO5LW6lgED67k5kuAO70nz5rSJZrLv7WG', '2017-04-16 10:12:42', '2017-04-18 06:00:52', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogues`
--
ALTER TABLE `catalogues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_shop_id` (`shop_id`),
  ADD KEY `fk_product_id` (`product_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_key` (`module_id`),
  ADD KEY `role_key` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppinglist`
--
ALTER TABLE `shoppinglist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_key` (`user_id`),
  ADD KEY `product_key` (`product_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogues`
--
ALTER TABLE `catalogues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `rights`
--
ALTER TABLE `rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shoppinglist`
--
ALTER TABLE `shoppinglist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `catalogues`
--
ALTER TABLE `catalogues`
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_shop_id` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rights`
--
ALTER TABLE `rights`
  ADD CONSTRAINT `module_key` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`),
  ADD CONSTRAINT `role_key` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `shoppinglist`
--
ALTER TABLE `shoppinglist`
  ADD CONSTRAINT `product_key` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
