

CREATE TABLE `interests` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Reading', NULL, NULL),
(2, 'Cooking', NULL, NULL),
(3, 'Programming', NULL, NULL),
(4, 'Designing', NULL, NULL),
(5, 'Shopping', NULL, NULL),
(6, 'Teaching', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, 'English', NULL, NULL),
(2, 'Afrikaans', NULL, NULL),
(3, 'French', NULL, NULL),
(4, 'Zulu', NULL, NULL),
(5, 'Sotho', NULL, NULL),
(6, 'Venda', NULL, NULL),
(7, 'Portugues', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobileNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthDate` bigint(20) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `surname`, `idNumber`, `mobileNumber`, `birthDate`, `language`, `created_at`, `updated_at`) VALUES
(1, 'James', 'Moyo', '98762552523', '0788104809', NULL, 'Afrikaans', '2017-07-06 07:13:18', '2017-07-06 07:13:18'),
(2, 'Nancy', 'Gora', '9876255252', '0788104809', NULL, 'French', '2017-07-06 07:13:59', '2017-07-06 07:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `member_interests`
--

CREATE TABLE `member_interests` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `interest_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_interests`
--

INSERT INTO `member_interests` (`id`, `member_id`, `interest_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-07-06 07:13:18', '2017-07-06 07:13:18'),
(2, 1, 2, '2017-07-06 07:13:18', '2017-07-06 07:13:18'),
(3, 1, 3, '2017-07-06 07:13:18', '2017-07-06 07:13:18'),
(4, 2, 1, '2017-07-06 07:13:59', '2017-07-06 07:13:59'),
(5, 2, 2, '2017-07-06 07:13:59', '2017-07-06 07:13:59'),
(6, 2, 3, '2017-07-06 07:13:59', '2017-07-06 07:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2017_07_05_054233_create_users_table', 1),
(22, '2017_07_05_054259_create_members_table', 1),
(23, '2017_07_05_054341_create_member_interests_table', 1),
(24, '2017_07_05_054411_create_interests_table', 1),
(25, '2017_07_05_054433_create_languages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `remember_token`, `password`, `created_at`, `updated_at`) VALUES
(1, 'James', 'Gudhlanga', 'jimmyneds@gmail.com', 'URKMEaYrGdx8aU7DPQXEN89WvoeRr2DINB0aDHBDHAOqsQJUWKL5X3qZIWCX', '$2y$10$GLa5u3tD40sQ1wiwAUAHtOcjOixBKP80ko6wgYeOBkrkwayHZCQGu', '2017-07-06 07:12:00', '2017-07-06 07:12:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_interests`
--
ALTER TABLE `member_interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `member_interests`
--
ALTER TABLE `member_interests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;


