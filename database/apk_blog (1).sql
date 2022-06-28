-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 28 Jun 2022 pada 22.57
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apk_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(128) NOT NULL,
  `category_desc` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_desc`) VALUES
(7, 'sayur', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) NOT NULL,
  `comment_parent` bigint(20) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_body` text NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint(20) NOT NULL,
  `post_date` date NOT NULL,
  `post_title` varchar(256) NOT NULL,
  `post_body` longtext NOT NULL,
  `post_thumbnail` varchar(256) DEFAULT NULL,
  `post_slug` varchar(256) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`post_id`, `post_date`, `post_title`, `post_body`, `post_thumbnail`, `post_slug`, `category_id`, `user_id`) VALUES
(33, '2022-06-28', 'Tumis sawi putih jagung manis', '<div class=\"document-title-container\" style=\"font-family: noto-sans, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, arial, sans-serif; border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-bottom: 0.5rem; margin-top: 0.5rem; color: rgb(74, 74, 74); letter-spacing: -0.4px;\"><h2 class=\"text-cookpad-16 xs:text-cookpad-24 font-semibold\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 2rem; font-size: 1.5rem; border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; letter-spacing: -0.0125em;\">Bahan-bahan</h2><div class=\"text-cookpad-12 xs:text-cookpad-16 text-cookpad-gray-500\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; font-size: 1rem; letter-spacing: -0.025em; line-height: 1.5rem; --tw-text-opacity:1; color: rgba(147,146,144,var(--tw-text-opacity));\"><div id=\"serving_recipe_3838025\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><div class=\"text-cookpad-gray-600 mt-sm\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; margin-top: 0.5rem; --tw-text-opacity:1; color: rgba(96,96,96,var(--tw-text-opacity));\"></div></div></div></div><div class=\"ingredient-list\" style=\"font-family: noto-sans, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Helvetica, arial, sans-serif; border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; color: rgb(74, 74, 74); letter-spacing: -0.4px;\"><ol class=\"list-unstyled text-cookpad-14 xs:text-cookpad-18 divide-y\" dir=\"auto\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; font-size: 1.125rem; letter-spacing: -0.025em; line-height: 1.75rem;\"><li class=\"leading-tight py-xs border-cookpad-gray-400 border-dashed\" id=\"ingredient_17284216\" style=\"border-width: 0px; border-style: dashed; border-color: rgba(206,206,205,var(--tw-border-opacity)); border-image: initial; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-border-opacity:1; padding-bottom: 0.25rem; padding-top: 0.25rem; line-height: 1.25;\"><div itemprop=\"recipeIngredient\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><bdi class=\"font-semibold\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; font-weight: 600;\">- 1 ukuran sedang</bdi>&nbsp;Sawi putih</div></li><li class=\"leading-tight py-xs border-cookpad-gray-400 border-dashed\" id=\"ingredient_17284217\" style=\"border-top-width: calc(1px*(1 - var(--tw-divide-y-reverse))); border-right-width: 0px; border-bottom-width: calc(1px*var(--tw-divide-y-reverse)); border-left-width: 0px; border-style: dashed; border-color: rgba(206,206,205,var(--tw-border-opacity)); border-image: initial; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-border-opacity:1; padding-bottom: 0.25rem; padding-top: 0.25rem; line-height: 1.25; --tw-divide-y-reverse:0;\"><div itemprop=\"recipeIngredient\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><bdi class=\"font-semibold\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; font-weight: 600;\">- 1 ukuran sedang</bdi>&nbsp;Jagung manis</div></li><li class=\"leading-tight py-xs border-cookpad-gray-400 border-dashed\" id=\"ingredient_17284218\" style=\"border-top-width: calc(1px*(1 - var(--tw-divide-y-reverse))); border-right-width: 0px; border-bottom-width: calc(1px*var(--tw-divide-y-reverse)); border-left-width: 0px; border-style: dashed; border-color: rgba(206,206,205,var(--tw-border-opacity)); border-image: initial; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-border-opacity:1; padding-bottom: 0.25rem; padding-top: 0.25rem; line-height: 1.25; --tw-divide-y-reverse:0;\"><div itemprop=\"recipeIngredient\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><bdi class=\"font-semibold\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; font-weight: 600;\"></bdi>- Bawang merah</div></li><li class=\"leading-tight py-xs border-cookpad-gray-400 border-dashed\" id=\"ingredient_17284219\" style=\"border-top-width: calc(1px*(1 - var(--tw-divide-y-reverse))); border-right-width: 0px; border-bottom-width: calc(1px*var(--tw-divide-y-reverse)); border-left-width: 0px; border-style: dashed; border-color: rgba(206,206,205,var(--tw-border-opacity)); border-image: initial; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-border-opacity:1; padding-bottom: 0.25rem; padding-top: 0.25rem; line-height: 1.25; --tw-divide-y-reverse:0;\"><div itemprop=\"recipeIngredient\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><bdi class=\"font-semibold\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; font-weight: 600;\"></bdi>- Bawang putih</div></li><li class=\"leading-tight py-xs border-cookpad-gray-400 border-dashed\" id=\"ingredient_17284220\" style=\"border-top-width: calc(1px*(1 - var(--tw-divide-y-reverse))); border-right-width: 0px; border-bottom-width: calc(1px*var(--tw-divide-y-reverse)); border-left-width: 0px; border-style: dashed; border-color: rgba(206,206,205,var(--tw-border-opacity)); border-image: initial; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-border-opacity:1; padding-bottom: 0.25rem; padding-top: 0.25rem; line-height: 1.25; --tw-divide-y-reverse:0;\"><div itemprop=\"recipeIngredient\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><bdi class=\"font-semibold\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; font-weight: 600;\"></bdi>- Cabe merah</div></li><li class=\"leading-tight py-xs border-cookpad-gray-400 border-dashed\" id=\"ingredient_17284221\" style=\"border-top-width: calc(1px*(1 - var(--tw-divide-y-reverse))); border-right-width: 0px; border-bottom-width: calc(1px*var(--tw-divide-y-reverse)); border-left-width: 0px; border-style: dashed; border-color: rgba(206,206,205,var(--tw-border-opacity)); border-image: initial; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-border-opacity:1; padding-bottom: 0.25rem; padding-top: 0.25rem; line-height: 1.25; --tw-divide-y-reverse:0;\"><div itemprop=\"recipeIngredient\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><bdi class=\"font-semibold\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; font-weight: 600;\"></bdi>- Tomat</div></li><li class=\"leading-tight py-xs border-cookpad-gray-400 border-dashed\" id=\"ingredient_17284222\" style=\"border-top-width: calc(1px*(1 - var(--tw-divide-y-reverse))); border-right-width: 0px; border-bottom-width: calc(1px*var(--tw-divide-y-reverse)); border-left-width: 0px; border-style: dashed; border-color: rgba(206,206,205,var(--tw-border-opacity)); border-image: initial; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-border-opacity:1; padding-bottom: 0.25rem; padding-top: 0.25rem; line-height: 1.25; --tw-divide-y-reverse:0;\"><div itemprop=\"recipeIngredient\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000;\"><bdi class=\"font-semibold\" style=\"border: 0px solid currentcolor; --tw-shadow:0 0 #0000; --tw-ring-inset:var(--tw-empty, ); --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; font-weight: 600;\"></bdi>semua bahan2 disesuaikan aja ya bun dgn kebutuhan masing2</div></li></ol></div>', '49965f1f8eda9967c8ce5d3bbbb381a8.jpeg', 'tumis-sawi-putih-jagung-manis', 7, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `role` enum('admin','member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fullname`, `avatar`, `role`) VALUES
(1, 'admin', '$2y$10$67cD4rJ0I0kaVboq.VwfQeut6XuLPlDnFH7nG05eXykYxczsfwQ02', 'Administrators', '6ae9419e7356ff8c4af4b6487e9d8415.png', 'admin'),
(5, 'hakim', '$2y$10$qKbdvp/MvmYm3srkYasK..FhtspspVfkBXXaIOuXiXx9pW3jUZ5kq', 'hakim', NULL, 'member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
