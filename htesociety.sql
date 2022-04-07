-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2021 lúc 03:19 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `htesociety`
--
CREATE DATABASE IF NOT EXISTS `htesociety` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `htesociety`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat`
--

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL,
  `box_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createat` date DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chat`
--

INSERT INTO `chat` (`id`, `box_id`, `content`, `createat`, `source_id`, `target_id`) VALUES
(1, 4, 'helo', '2021-12-12', 1, 3),
(2, 4, 'Sao đó', '2021-12-12', 3, 1),
(3, 4, 'Không có gì', '2021-12-12', 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_post`
--

CREATE TABLE `comment_post` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createat` date DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faculty`
--

CREATE TABLE `faculty` (
  `id` bigint(20) NOT NULL,
  `facultyname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `faculty`
--

INSERT INTO `faculty` (`id`, `facultyname`) VALUES
(1, 'CNTT'),
(2, 'DL&KS');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `friend`
--

CREATE TABLE `friend` (
  `id` bigint(20) NOT NULL,
  `createAt` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `friend`
--

INSERT INTO `friend` (`id`, `createAt`, `status`, `source_id`, `target_id`) VALUES
(1, '2021-12-12', 1, 1, 3),
(2, '2021-12-12', 0, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_post`
--

CREATE TABLE `image_post` (
  `id` bigint(20) NOT NULL,
  `content` text DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `image_post`
--

INSERT INTO `image_post` (`id`, `content`, `post_id`) VALUES
(1, 'https://res.cloudinary.com/dbjjh1p4j/image/upload/v1639317569/erc9bj6wkx7rc9nvpupx.jpg', 1),
(2, 'https://res.cloudinary.com/dbjjh1p4j/image/upload/v1639317582/umirrvofbj6rybkrraa6.jpg', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `like_post`
--

CREATE TABLE `like_post` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `like_post`
--

INSERT INTO `like_post` (`id`, `post_id`, `user_id`) VALUES
(2, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL,
  `content` text DEFAULT NULL,
  `createAt` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `content`, `createAt`, `status`, `user_id`) VALUES
(1, 'Tuyệt vời', '2021-12-12', 0, 1),
(2, '', '2021-12-12', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `createAt` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `intro` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `studentnumber` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `faculty_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `avatar`, `birthday`, `createAt`, `email`, `gender`, `intro`, `name`, `password`, `phone`, `studentnumber`, `username`, `faculty_id`) VALUES
(1, 'https://res.cloudinary.com/dbjjh1p4j/image/upload/v1638434594/c1dmmq0g9vf00ims7s8d.jpg', '2000-03-08', '2021-12-12', 'lehuutuong2027@gmail.com', 0, 'Không có gì', 'Lê Hữu Tướng', '$2a$12$gfEBMlR3qLDICLuMz9LiA.BZD7iyA5JDwg4J5VSdPONaQP2SBwfmq', '0394912027', '1811061560', 'huutuong12345', 1),
(2, 'https://res.cloudinary.com/dbjjh1p4j/image/upload/v1637428406/syygcsa472bv0haaoiwx.jpg', '2000-09-28', '2021-12-12', 'lehuutuong2027@gmail.com', 0, 'Không có', 'Diễm Quỳnh', '$2a$12$kjK2/1km2fSBJ3DOUff/eeXWItz/AMHcuKfVDbpYSJqz1XUgNgt6W', '0394912027', '1811061560', 'huutuong123', 1),
(3, 'https://res.cloudinary.com/dbjjh1p4j/image/upload/v1637236253/user_zp5xzx.jpg', '2000-12-12', '2021-12-12', 'lehuutuong2027@gmail.com', 0, 'Không có', 'Xuân Tú', '$2a$12$fZRSaVWQYv5XvfCNkngN.eetu6w4XDvUbz4kXkl9PUxaLjghAeZK.', '0394912027', '1811061560', 'huutuong', 1),
(4, NULL, '2000-08-12', '2021-12-12', 'lehuutuong2027@gmail.com', 0, 'Không có ', 'Thuận', '$2a$12$/s1PXAFCscsn../blAcIyeIuwXPA7rGpMZp2cAXePdsdGddg7F.Wu', '0394912027', '1811061560', 'huutuong1', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videocall`
--

CREATE TABLE `videocall` (
  `id` bigint(20) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `createAt` date DEFAULT NULL,
  `roomcode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `videocall`
--

INSERT INTO `videocall` (`id`, `amount`, `createAt`, `roomcode`) VALUES
(1, 1, '2021-12-12', 'avc'),
(2, 1, '2021-12-12', 'abc');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqf0cfjpwve74kmstayodjx5ik` (`source_id`),
  ADD KEY `FKa0xjn4rw98qvjgl1sjxmk3mt8` (`target_id`);

--
-- Chỉ mục cho bảng `comment_post`
--
ALTER TABLE `comment_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjup02upcrvjg62q3um2altlt` (`post_id`),
  ADD KEY `FKog0o9257r3i30jvqub4kuejdx` (`user_id`);

--
-- Chỉ mục cho bảng `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK42rwx6naoed58ljne022rfit1` (`source_id`),
  ADD KEY `FKc90gn7mrpy9ho0do9p5hrxabn` (`target_id`);

--
-- Chỉ mục cho bảng `image_post`
--
ALTER TABLE `image_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpx20dhvcfhuuy583yejbs05pk` (`post_id`);

--
-- Chỉ mục cho bảng `like_post`
--
ALTER TABLE `like_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnu91sbh82a5nj1o3xh0sgwhu8` (`post_id`),
  ADD KEY `FKjdv3j0wwk6s2cujoh18p5ko61` (`user_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7ky67sgi7k0ayf22652f7763r` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8qkbqvhy7o4vqv850rirhn5hg` (`faculty_id`);

--
-- Chỉ mục cho bảng `videocall`
--
ALTER TABLE `videocall`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment_post`
--
ALTER TABLE `comment_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `friend`
--
ALTER TABLE `friend`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `image_post`
--
ALTER TABLE `image_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `like_post`
--
ALTER TABLE `like_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `videocall`
--
ALTER TABLE `videocall`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `FKa0xjn4rw98qvjgl1sjxmk3mt8` FOREIGN KEY (`target_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKqf0cfjpwve74kmstayodjx5ik` FOREIGN KEY (`source_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `comment_post`
--
ALTER TABLE `comment_post`
  ADD CONSTRAINT `FKjup02upcrvjg62q3um2altlt` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `FKog0o9257r3i30jvqub4kuejdx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `friend`
--
ALTER TABLE `friend`
  ADD CONSTRAINT `FK42rwx6naoed58ljne022rfit1` FOREIGN KEY (`source_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKc90gn7mrpy9ho0do9p5hrxabn` FOREIGN KEY (`target_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `image_post`
--
ALTER TABLE `image_post`
  ADD CONSTRAINT `FKpx20dhvcfhuuy583yejbs05pk` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Các ràng buộc cho bảng `like_post`
--
ALTER TABLE `like_post`
  ADD CONSTRAINT `FKjdv3j0wwk6s2cujoh18p5ko61` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKnu91sbh82a5nj1o3xh0sgwhu8` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK7ky67sgi7k0ayf22652f7763r` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK8qkbqvhy7o4vqv850rirhn5hg` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
