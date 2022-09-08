-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2021 at 03:06 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ozforum`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `post` text NOT NULL,
  `userId` int(11) NOT NULL DEFAULT '1',
  `datePosted` date NOT NULL,
  `timePosted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `catId` int(11) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `post`, `userId`, `datePosted`, `timePosted`, `catId`, `views`) VALUES
(2, 'Ding!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ullam iste voluptatibus quo! Cum quae optio aut et debitis nihil tempore impedit a quis sed quidem ex hic quasi maiores officiis commodi, eaque voluptatibus iure provident molestiae itaque vitae doloribus. Possimus voluptatibus exercitationem nihil quidem. Dolore neque dolor placeat error tempora quae cumque minus vel non fugit blanditiis praesentium dolorem esse veritatis, ad beatae autem doloribus doloremque quod. Nesciunt exercitationem voluptatum eum quia distinctio doloremque porro, aspernatur vitae voluptates laudantium possimus ut suscipit soluta, rerum error expedita ducimus! Praesentium beatae aperiam similique, illo enim nostrum sapiente necessitatibus magni porro, incidunt maxime natus blanditiis excepturi autem animi nam eos. Adipisci magnam sed dolores voluptate officia accusamus eum maiores labore ab facilis repudiandae ipsa, ipsum similique laboriosam maxime quas totam veritatis, soluta nobis placeat blanditiis! Porro ipsum obcaecati excepturi, pariatur veniam natus esse dolore tempora quos omnis cupiditate harum temporibus quod ullam aliquid aperiam vel iure voluptas architecto illo iusto! Natus rem consequatur dolore inventore mollitia asperiores exercitationem quis fugit commodi tenetur quo, numquam autem consequuntur sequi expedita quod accusantium, reiciendis ullam? Dolorem quos voluptatibus totam dolore ducimus sequi tempore, odit doloribus, minus dolorum illo! Nam, molestiae neque excepturi corporis natus numquam provident pariatur quia porro repellendus quos cupiditate, eaque nobis maiores harum exercitationem aspernatur error beatae ut voluptas? Mollitia incidunt expedita repudiandae dolorem quod accusantium, sunt optio praesentium alias atque dignissimos corrupti magnam consequuntur veritatis maxime doloremque inventore, facere nemo accusamus qui illo cum. Veniam perferendis, illo aliquam eum rem tempora! Beatae ullam nesciunt, earum quaerat, quo in laborum facere recusandae asperiores libero sunt maiores! Autem, magni blanditiis? Quam et corporis saepe amet deleniti impedit molestiae non. Qui ex porro animi sunt obcaecati repellendus itaque maiores odit accusamus cupiditate quaerat aliquam architecto officiis, dolores voluptates veniam voluptas laborum tenetur non deserunt!', 1, '2020-08-23', '2020-08-26 10:25:05', 2, 8),
(3, 'My Title', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ullam iste voluptatibus quo! Cum quae optio aut et debitis nihil tempore impedit a quis sed quidem ex hic quasi maiores officiis commodi, eaque voluptatibus iure provident molestiae itaque vitae doloribus. Possimus voluptatibus exercitationem nihil quidem. Dolore neque dolor placeat error tempora quae cumque minus vel non fugit blanditiis praesentium dolorem esse veritatis, ad beatae autem doloribus doloremque quod. Nesciunt exercitationem voluptatum eum quia distinctio doloremque porro, aspernatur vitae voluptates laudantium possimus ut suscipit soluta, rerum error expedita ducimus! Praesentium beatae aperiam similique, illo enim nostrum sapiente necessitatibus magni porro, incidunt maxime natus blanditiis excepturi autem animi nam eos. Adipisci magnam sed dolores voluptate officia accusamus eum maiores labore ab facilis repudiandae ipsa, ipsum similique laboriosam maxime quas totam veritatis, soluta nobis placeat blanditiis! Porro ipsum obcaecati excepturi, pariatur veniam natus esse dolore tempora quos omnis cupiditate harum temporibus quod ullam aliquid aperiam vel iure voluptas architecto illo iusto! Natus rem consequatur dolore inventore mollitia asperiores exercitationem quis fugit commodi tenetur quo, numquam autem consequuntur sequi expedita quod accusantium, reiciendis ullam? Dolorem quos voluptatibus totam dolore ducimus sequi tempore, odit doloribus, minus dolorum illo! Nam, molestiae neque excepturi corporis natus numquam provident pariatur quia porro repellendus quos cupiditate, eaque nobis maiores harum exercitationem aspernatur error beatae ut voluptas? Mollitia incidunt expedita repudiandae dolorem quod accusantium, sunt optio praesentium alias atque dignissimos corrupti magnam consequuntur veritatis maxime doloremque inventore, facere nemo accusamus qui illo cum. Veniam perferendis, illo aliquam eum rem tempora! Beatae ullam nesciunt, earum quaerat, quo in laborum facere recusandae asperiores libero sunt maiores! Autem, magni blanditiis? Quam et corporis saepe amet deleniti impedit molestiae non. Qui ex porro animi sunt obcaecati repellendus itaque maiores odit accusamus cupiditate quaerat aliquam architecto officiis, dolores voluptates veniam voluptas laborum tenetur non deserunt!', 1, '2020-08-24', '2020-08-26 10:25:05', 2, 61),
(4, 'My Second', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ullam iste voluptatibus quo! Cum quae optio aut et debitis nihil tempore impedit a quis sed quidem ex hic quasi maiores officiis commodi, eaque voluptatibus iure provident molestiae itaque vitae doloribus. Possimus voluptatibus exercitationem nihil quidem. Dolore neque dolor placeat error tempora quae cumque minus vel non fugit blanditiis praesentium dolorem esse veritatis, ad beatae autem doloribus doloremque quod. Nesciunt exercitationem voluptatum eum quia distinctio doloremque porro, aspernatur vitae voluptates laudantium possimus ut suscipit soluta, rerum error expedita ducimus! Praesentium beatae aperiam similique, illo enim nostrum sapiente necessitatibus magni porro, incidunt maxime natus blanditiis excepturi autem animi nam eos. Adipisci magnam sed dolores voluptate officia accusamus eum maiores labore ab facilis repudiandae ipsa, ipsum similique laboriosam maxime quas totam veritatis, soluta nobis placeat blanditiis! Porro ipsum obcaecati excepturi, pariatur veniam natus esse dolore tempora quos omnis cupiditate harum temporibus quod ullam aliquid aperiam vel iure voluptas architecto illo iusto! Natus rem consequatur dolore inventore mollitia asperiores exercitationem quis fugit commodi tenetur quo, numquam autem consequuntur sequi expedita quod accusantium, reiciendis ullam? Dolorem quos voluptatibus totam dolore ducimus sequi tempore, odit doloribus, minus dolorum illo! Nam, molestiae neque excepturi corporis natus numquam provident pariatur quia porro repellendus quos cupiditate, eaque nobis maiores harum exercitationem aspernatur error beatae ut voluptas? Mollitia incidunt expedita repudiandae dolorem quod accusantium, sunt optio praesentium alias atque dignissimos corrupti magnam consequuntur veritatis maxime doloremque inventore, facere nemo accusamus qui illo cum. Veniam perferendis, illo aliquam eum rem tempora! Beatae ullam nesciunt, earum quaerat, quo in laborum facere recusandae asperiores libero sunt maiores! Autem, magni blanditiis? Quam et corporis saepe amet deleniti impedit molestiae non. Qui ex porro animi sunt obcaecati repellendus itaque maiores odit accusamus cupiditate quaerat aliquam architecto officiis, dolores voluptates veniam voluptas laborum tenetur non deserunt!', 1, '2020-08-24', '2020-08-26 10:25:05', 7, 18),
(5, 'Programming', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ullam iste voluptatibus quo! Cum quae optio aut et debitis nihil tempore impedit a quis sed quidem ex hic quasi maiores officiis commodi, eaque voluptatibus iure provident molestiae itaque vitae doloribus. Possimus voluptatibus exercitationem nihil quidem. Dolore neque dolor placeat error tempora quae cumque minus vel non fugit blanditiis praesentium dolorem esse veritatis, ad beatae autem doloribus doloremque quod. Nesciunt exercitationem voluptatum eum quia distinctio doloremque porro, aspernatur vitae voluptates laudantium possimus ut suscipit soluta, rerum error expedita ducimus! Praesentium beatae aperiam similique, illo enim nostrum sapiente necessitatibus magni porro, incidunt maxime natus blanditiis excepturi autem animi nam eos. Adipisci magnam sed dolores voluptate officia accusamus eum maiores labore ab facilis repudiandae ipsa, ipsum similique laboriosam maxime quas totam veritatis, soluta nobis placeat blanditiis! Porro ipsum obcaecati excepturi, pariatur veniam natus esse dolore tempora quos omnis cupiditate harum temporibus quod ullam aliquid aperiam vel iure voluptas architecto illo iusto! Natus rem consequatur dolore inventore mollitia asperiores exercitationem quis fugit commodi tenetur quo, numquam autem consequuntur sequi expedita quod accusantium, reiciendis ullam? Dolorem quos voluptatibus totam dolore ducimus sequi tempore, odit doloribus, minus dolorum illo! Nam, molestiae neque excepturi corporis natus numquam provident pariatur quia porro repellendus quos cupiditate, eaque nobis maiores harum exercitationem aspernatur error beatae ut voluptas? Mollitia incidunt expedita repudiandae dolorem quod accusantium, sunt optio praesentium alias atque dignissimos corrupti magnam consequuntur veritatis maxime doloremque inventore, facere nemo accusamus qui illo cum. Veniam perferendis, illo aliquam eum rem tempora! Beatae ullam nesciunt, earum quaerat, quo in laborum facere recusandae asperiores libero sunt maiores! Autem, magni blanditiis? Quam et corporis saepe amet deleniti impedit molestiae non. Qui ex porro animi sunt obcaecati repellendus itaque maiores odit accusamus cupiditate quaerat aliquam architecto officiis, dolores voluptates veniam voluptas laborum tenetur non deserunt!', 1, '2020-08-24', '2020-08-26 10:25:05', 4, 264),
(6, 'My Second Title', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ullam iste voluptatibus quo! Cum quae optio aut et debitis nihil tempore impedit a quis sed quidem ex hic quasi maiores officiis commodi, eaque voluptatibus iure provident molestiae itaque vitae doloribus. Possimus voluptatibus exercitationem nihil quidem. Dolore neque dolor placeat error tempora quae cumque minus vel non fugit blanditiis praesentium dolorem esse veritatis, ad beatae autem doloribus doloremque quod. Nesciunt exercitationem voluptatum eum quia distinctio doloremque porro, aspernatur vitae voluptates laudantium possimus ut suscipit soluta, rerum error expedita ducimus! Praesentium beatae aperiam similique, illo enim nostrum sapiente necessitatibus magni porro, incidunt maxime natus blanditiis excepturi autem animi nam eos. Adipisci magnam sed dolores voluptate officia accusamus eum maiores labore ab facilis repudiandae ipsa, ipsum similique laboriosam maxime quas totam veritatis, soluta nobis placeat blanditiis! Porro ipsum obcaecati excepturi, pariatur veniam natus esse dolore tempora quos omnis cupiditate harum temporibus quod ullam aliquid aperiam vel iure voluptas architecto illo iusto! Natus rem consequatur dolore inventore mollitia asperiores exercitationem quis fugit commodi tenetur quo, numquam autem consequuntur sequi expedita quod accusantium, reiciendis ullam? Dolorem quos voluptatibus totam dolore ducimus sequi tempore, odit doloribus, minus dolorum illo! Nam, molestiae neque excepturi corporis natus numquam provident pariatur quia porro repellendus quos cupiditate, eaque nobis maiores harum exercitationem aspernatur error beatae ut voluptas? Mollitia incidunt expedita repudiandae dolorem quod accusantium, sunt optio praesentium alias atque dignissimos corrupti magnam consequuntur veritatis maxime doloremque inventore, facere nemo accusamus qui illo cum. Veniam perferendis, illo aliquam eum rem tempora! Beatae ullam nesciunt, earum quaerat, quo in laborum facere recusandae asperiores libero sunt maiores! Autem, magni blanditiis? Quam et corporis saepe amet deleniti impedit molestiae non. Qui ex porro animi sunt obcaecati repellendus itaque maiores odit accusamus cupiditate quaerat aliquam architecto officiis, dolores voluptates veniam voluptas laborum tenetur non deserunt!', 1, '2020-08-24', '2020-08-26 10:25:05', 3, 7),
(7, 'World Wide ', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ullam iste voluptatibus quo! Cum quae optio aut et debitis nihil tempore impedit a quis sed quidem ex hic quasi maiores officiis commodi, eaque voluptatibus iure provident molestiae itaque vitae doloribus. Possimus voluptatibus exercitationem nihil quidem. Dolore neque dolor placeat error tempora quae cumque minus vel non fugit blanditiis praesentium dolorem esse veritatis, ad beatae autem doloribus doloremque quod. Nesciunt exercitationem voluptatum eum quia distinctio doloremque porro, aspernatur vitae voluptates laudantium possimus ut suscipit soluta, rerum error expedita ducimus! Praesentium beatae aperiam similique, illo enim nostrum sapiente necessitatibus magni porro, incidunt maxime natus blanditiis excepturi autem animi nam eos. Adipisci magnam sed dolores voluptate officia accusamus eum maiores labore ab facilis repudiandae ipsa, ipsum similique laboriosam maxime quas totam veritatis, soluta nobis placeat blanditiis! Porro ipsum obcaecati excepturi, pariatur veniam natus esse dolore tempora quos omnis cupiditate harum temporibus quod ullam aliquid aperiam vel iure voluptas architecto illo iusto! Natus rem consequatur dolore inventore mollitia asperiores exercitationem quis fugit commodi tenetur quo, numquam autem consequuntur sequi expedita quod accusantium, reiciendis ullam? Dolorem quos voluptatibus totam dolore ducimus sequi tempore, odit doloribus, minus dolorum illo! Nam, molestiae neque excepturi corporis natus numquam provident pariatur quia porro repellendus quos cupiditate, eaque nobis maiores harum exercitationem aspernatur error beatae ut voluptas? Mollitia incidunt expedita repudiandae dolorem quod accusantium, sunt optio praesentium alias atque dignissimos corrupti magnam consequuntur veritatis maxime doloremque inventore, facere nemo accusamus qui illo cum. Veniam perferendis, illo aliquam eum rem tempora! Beatae ullam nesciunt, earum quaerat, quo in laborum facere recusandae asperiores libero sunt maiores! Autem, magni blanditiis? Quam et corporis saepe amet deleniti impedit molestiae non. Qui ex porro animi sunt obcaecati repellendus itaque maiores odit accusamus cupiditate quaerat aliquam architecto officiis, dolores voluptates veniam voluptas laborum tenetur non deserunt!', 1, '2020-08-24', '2020-08-26 10:25:05', 1, 5),
(8, 'Athletics', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ullam iste voluptatibus quo! Cum quae optio aut et debitis nihil tempore impedit a quis sed quidem ex hic quasi maiores officiis commodi, eaque voluptatibus iure provident molestiae itaque vitae doloribus. Possimus voluptatibus exercitationem nihil quidem. Dolore neque dolor placeat error tempora quae cumque minus vel non fugit blanditiis praesentium dolorem esse veritatis, ad beatae autem doloribus doloremque quod. Nesciunt exercitationem voluptatum eum quia distinctio doloremque porro, aspernatur vitae voluptates laudantium possimus ut suscipit soluta, rerum error expedita ducimus! Praesentium beatae aperiam similique, illo enim nostrum sapiente necessitatibus magni porro, incidunt maxime natus blanditiis excepturi autem animi nam eos. Adipisci magnam sed dolores voluptate officia accusamus eum maiores labore ab facilis repudiandae ipsa, ipsum similique laboriosam maxime quas totam veritatis, soluta nobis placeat blanditiis! Porro ipsum obcaecati excepturi, pariatur veniam natus esse dolore tempora quos omnis cupiditate harum temporibus quod ullam aliquid aperiam vel iure voluptas architecto illo iusto! Natus rem consequatur dolore inventore mollitia asperiores exercitationem quis fugit commodi tenetur quo, numquam autem consequuntur sequi expedita quod accusantium, reiciendis ullam? Dolorem quos voluptatibus totam dolore ducimus sequi tempore, odit doloribus, minus dolorum illo! Nam, molestiae neque excepturi corporis natus numquam provident pariatur quia porro repellendus quos cupiditate, eaque nobis maiores harum exercitationem aspernatur error beatae ut voluptas? Mollitia incidunt expedita repudiandae dolorem quod accusantium, sunt optio praesentium alias atque dignissimos corrupti magnam consequuntur veritatis maxime doloremque inventore, facere nemo accusamus qui illo cum. Veniam perferendis, illo aliquam eum rem tempora! Beatae ullam nesciunt, earum quaerat, quo in laborum facere recusandae asperiores libero sunt maiores! Autem, magni blanditiis? Quam et corporis saepe amet deleniti impedit molestiae non. Qui ex porro animi sunt obcaecati repellendus itaque maiores odit accusamus cupiditate quaerat aliquam architecto officiis, dolores voluptates veniam voluptas laborum tenetur non deserunt!', 1, '2020-08-24', '2020-08-26 10:25:05', 3, 0),
(9, 'Gymnastics', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ullam iste voluptatibus quo! Cum quae optio aut et debitis nihil tempore impedit a quis sed quidem ex hic quasi maiores officiis commodi, eaque voluptatibus iure provident molestiae itaque vitae doloribus. Possimus voluptatibus exercitationem nihil quidem. Dolore neque dolor placeat error tempora quae cumque minus vel non fugit blanditiis praesentium dolorem esse veritatis, ad beatae autem doloribus doloremque quod. Nesciunt exercitationem voluptatum eum quia distinctio doloremque porro, aspernatur vitae voluptates laudantium possimus ut suscipit soluta, rerum error expedita ducimus! Praesentium beatae aperiam similique, illo enim nostrum sapiente necessitatibus magni porro, incidunt maxime natus blanditiis excepturi autem animi nam eos. Adipisci magnam sed dolores voluptate officia accusamus eum maiores labore ab facilis repudiandae ipsa, ipsum similique laboriosam maxime quas totam veritatis, soluta nobis placeat blanditiis! Porro ipsum obcaecati excepturi, pariatur veniam natus esse dolore tempora quos omnis cupiditate harum temporibus quod ullam aliquid aperiam vel iure voluptas architecto illo iusto! Natus rem consequatur dolore inventore mollitia asperiores exercitationem quis fugit commodi tenetur quo, numquam autem consequuntur sequi expedita quod accusantium, reiciendis ullam? Dolorem quos voluptatibus totam dolore ducimus sequi tempore, odit doloribus, minus dolorum illo! Nam, molestiae neque excepturi corporis natus numquam provident pariatur quia porro repellendus quos cupiditate, eaque nobis maiores harum exercitationem aspernatur error beatae ut voluptas? Mollitia incidunt expedita repudiandae dolorem quod accusantium, sunt optio praesentium alias atque dignissimos corrupti magnam consequuntur veritatis maxime doloremque inventore, facere nemo accusamus qui illo cum. Veniam perferendis, illo aliquam eum rem tempora! Beatae ullam nesciunt, earum quaerat, quo in laborum facere recusandae asperiores libero sunt maiores! Autem, magni blanditiis? Quam et corporis saepe amet deleniti impedit molestiae non. Qui ex porro animi sunt obcaecati repellendus itaque maiores odit accusamus cupiditate quaerat aliquam architecto officiis, dolores voluptates veniam voluptas laborum tenetur non deserunt!', 1, '2020-08-24', '2020-08-26 10:25:05', 5, 8),
(10, 'Coding', 'Lorem ipsum dolor sit amet consectetur adipisicin4', 1, '2020-08-24', '2020-08-26 10:25:05', 5, 4),
(11, 'Programming', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ullam iste voluptatibus quo! Cum quae optio aut et debitis nihil tempore impedit a quis sed quidem ex hic quasi maiores officiis commodi, eaque voluptatibus iure provident molestiae itaque vitae doloribus. Possimus voluptatibus exercitationem nihil quidem. Dolore neque dolor placeat error tempora quae cumque minus vel non fugit blanditiis praesentium dolorem esse veritatis, ad beatae autem doloribus doloremque quod. Nesciunt exercitationem voluptatum eum quia distinctio doloremque porro, aspernatur vitae voluptates laudantium possimus ut suscipit soluta, rerum error expedita ducimus! Praesentium beatae aperiam similique, illo enim nostrum sapiente necessitatibus magni porro, incidunt maxime natus blanditiis excepturi autem animi nam eos. Adipisci magnam sed dolores voluptate officia accusamus eum maiores labore ab facilis repudiandae ipsa, ipsum similique laboriosam maxime quas totam veritatis, soluta nobis placeat blanditiis! Porro ipsum obcaecati excepturi, pariatur veniam natus esse dolore tempora quos omnis cupiditate harum temporibus quod ullam aliquid aperiam vel iure voluptas architecto illo iusto! Natus rem consequatur dolore inventore mollitia asperiores exercitationem quis fugit commodi tenetur quo, numquam autem consequuntur sequi expedita quod accusantium, reiciendis ullam? Dolorem quos voluptatibus totam dolore ducimus sequi tempore, odit doloribus, minus dolorum illo! Nam, molestiae neque excepturi corporis natus numquam provident pariatur quia porro repellendus quos cupiditate, eaque nobis maiores harum exercitationem aspernatur error beatae ut voluptas? Mollitia incidunt expedita repudiandae dolorem quod accusantium, sunt optio praesentium alias atque dignissimos corrupti magnam consequuntur veritatis maxime doloremque inventore, facere nemo accusamus qui illo cum. Veniam perferendis, illo aliquam eum rem tempora! Beatae ullam nesciunt, earum quaerat, quo in laborum facere recusandae asperiores libero sunt maiores! Autem, magni blanditiis? Quam et corporis saepe amet deleniti impedit molestiae non. Qui ex porro animi sunt obcaecati repellendus itaque maiores odit accusamus cupiditate quaerat aliquam architecto officiis, dolores voluptates veniam voluptas laborum tenetur non deserunt!', 1, '2020-08-26', '2020-08-26 10:25:05', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(2, 'Entertainment'),
(3, 'Sport'),
(4, 'Art'),
(5, 'Politics'),
(7, 'Religion'),
(9, 'Code');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `articlesId` int(11) NOT NULL,
  `dateCommented` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `articlesId`, `dateCommented`, `userId`) VALUES
(1, 'i dey brekete!', 3, '2020-09-02 09:43:06', 1),
(2, 'Waka Pass!', 3, '2020-09-02 10:16:05', 1),
(3, 'Who u dey talk?', 3, '2020-09-02 10:17:34', 1),
(4, 'Good morning', 3, '2020-09-02 10:21:25', 1),
(5, 'Hi guys', 3, '2020-09-02 10:23:40', 1),
(6, 'sfsdf', 3, '2020-09-02 10:33:09', 1),
(7, 'sdgdfgdf', 3, '2020-09-02 10:34:32', 1),
(8, 'vfgdf', 3, '2020-09-02 10:34:57', 1),
(9, 'zdfg', 3, '2020-09-02 10:36:00', 1),
(10, 'Nwanne kedu ihe i na type?', 3, '2020-09-02 10:39:40', 1),
(11, 'I am testing this comment section', 5, '2020-11-18 09:56:04', 1),
(12, 'This is another test for commenting', 5, '2020-11-18 09:56:28', 1),
(13, 'Checking the new addon', 5, '2020-11-18 09:58:48', 1),
(14, 'An extra Test for this feature', 5, '2020-11-18 10:03:50', 1),
(15, 'Peace!!!', 5, '2020-11-19 11:12:22', 1),
(16, 'Yeah peace!', 5, '2020-11-19 11:12:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country`) VALUES
(1, 'Nigeria');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state` varchar(50) NOT NULL,
  `countryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`, `countryId`) VALUES
(1, 'Abia', 1),
(2, 'Adamawa', 1),
(3, 'Akwa-Ibom', 1),
(4, 'Anambra', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `oName` varchar(50) DEFAULT NULL,
  `lName` varchar(50) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `addr` varchar(100) NOT NULL,
  `stateId` int(11) DEFAULT NULL,
  `phone` char(11) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `dateJoined` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uName` varchar(30) NOT NULL,
  `regPass` varchar(30) NOT NULL,
  `userType` enum('A','G') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fName`, `oName`, `lName`, `gender`, `addr`, `stateId`, `phone`, `dob`, `dateJoined`, `uName`, `regPass`, `userType`) VALUES
(1, 'philip', 'john', 'Andrew', 'M', 'No 1 Mission Rd., osha', 1, '08140372637', '2020-08-27', '2020-08-27 00:00:00', 'love2020', 'love2020', 'A'),
(4, 'Anthony', 'solomon', 'Valentine', 'M', 'Ezeakiri street, naze, owerri', NULL, '48136770894', '2020-09-29', '2020-09-02 03:47:18', 'solo2020', 'solo2020', 'G'),
(5, 'Chigozie', 'David', 'Chukwu', 'M', 'Ezeakiri street, naze, owerri', NULL, '12345678909', '2020-10-20', '2020-10-13 10:08:54', 'love2020', 'success', 'G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
