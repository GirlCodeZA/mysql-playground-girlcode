-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Jul 22, 2021 at 07:15 PM
-- Server version: 8.0.26
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` bigint NOT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `region_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`, `region_id`) VALUES
(1, 'vortals Car Hill', NULL),
(2, 'virtual Riyal', NULL),
(3, 'Steel optimize', NULL),
(4, 'encoding Response Tasty', NULL),
(5, 'Account Soft', NULL),
(6, 'Plastic even-keeled', NULL),
(7, 'clear-thinking', NULL),
(8, 'Fresh', NULL),
(9, 'back RAM Chips', NULL),
(10, 'deposit generation Bulgarian', NULL),
(11, 'South Africa', 4),
(12, 'France', 12);

-- --------------------------------------------------------

--
-- Table structure for table `DATABASECHANGELOG`
--

CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `DATABASECHANGELOG`
--

INSERT INTO `DATABASECHANGELOG` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('00000000000001', 'jhipster', 'config/liquibase/changelog/00000000000000_initial_schema.xml', '2021-07-21 20:06:05', 1, 'EXECUTED', '8:1a5f32270e664dee65256c5fff5c0e33', 'createTable tableName=jhi_user; createTable tableName=jhi_authority; createTable tableName=jhi_user_authority; addPrimaryKey tableName=jhi_user_authority; addForeignKeyConstraint baseTableName=jhi_user_authority, constraintName=fk_authority_name, ...', '', NULL, '4.3.5', NULL, NULL, '6897964753'),
('20210721200750-1', 'jhipster', 'config/liquibase/changelog/20210721200750_added_entity_Region.xml', '2021-07-21 20:08:47', 2, 'EXECUTED', '8:9ab06524acf69b3ca8131601274c80e8', 'createTable tableName=region', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200750-1-data', 'jhipster', 'config/liquibase/changelog/20210721200750_added_entity_Region.xml', '2021-07-21 20:08:47', 3, 'EXECUTED', '8:ae8bb4c797465495a4567812e5a8f985', 'loadData tableName=region', '', NULL, '4.3.5', 'faker', NULL, '6898127323'),
('20210721200751-1', 'jhipster', 'config/liquibase/changelog/20210721200751_added_entity_Country.xml', '2021-07-21 20:08:47', 4, 'EXECUTED', '8:0593d679a3f3cb3079ecd2dc6c9aef7f', 'createTable tableName=country', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200751-1-data', 'jhipster', 'config/liquibase/changelog/20210721200751_added_entity_Country.xml', '2021-07-21 20:08:47', 5, 'EXECUTED', '8:2e3f863c48464393d86c0104da4bd3a6', 'loadData tableName=country', '', NULL, '4.3.5', 'faker', NULL, '6898127323'),
('20210721200752-1', 'jhipster', 'config/liquibase/changelog/20210721200752_added_entity_Location.xml', '2021-07-21 20:08:47', 6, 'EXECUTED', '8:7a3df4bd680820fca3ceb25b2fcd772c', 'createTable tableName=location', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200752-1-data', 'jhipster', 'config/liquibase/changelog/20210721200752_added_entity_Location.xml', '2021-07-21 20:08:47', 7, 'EXECUTED', '8:b7d398dd8bb5807d656c52dd27b8459f', 'loadData tableName=location', '', NULL, '4.3.5', 'faker', NULL, '6898127323'),
('20210721200753-1', 'jhipster', 'config/liquibase/changelog/20210721200753_added_entity_Department.xml', '2021-07-21 20:08:47', 8, 'EXECUTED', '8:b631eec99aeaf7d4fd6e5fe1a591b536', 'createTable tableName=department', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200753-1-data', 'jhipster', 'config/liquibase/changelog/20210721200753_added_entity_Department.xml', '2021-07-21 20:08:47', 9, 'EXECUTED', '8:8c1f841f8ac7feec387b0fa24e2fe799', 'loadData tableName=department', '', NULL, '4.3.5', 'faker', NULL, '6898127323'),
('20210721200754-1', 'jhipster', 'config/liquibase/changelog/20210721200754_added_entity_Task.xml', '2021-07-21 20:08:48', 10, 'EXECUTED', '8:9f6ce1ac79b24c4fa865acc542a8ad8a', 'createTable tableName=task', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200754-1-data', 'jhipster', 'config/liquibase/changelog/20210721200754_added_entity_Task.xml', '2021-07-21 20:08:48', 11, 'EXECUTED', '8:84b61a24b74ddb3413679839be334f44', 'loadData tableName=task', '', NULL, '4.3.5', 'faker', NULL, '6898127323'),
('20210721200755-1', 'jhipster', 'config/liquibase/changelog/20210721200755_added_entity_Employee.xml', '2021-07-21 20:08:48', 12, 'EXECUTED', '8:a28d9fdd3e83dbc7754ce132c2fa2a5d', 'createTable tableName=employee; dropDefaultValue columnName=hire_date, tableName=employee', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200755-1-data', 'jhipster', 'config/liquibase/changelog/20210721200755_added_entity_Employee.xml', '2021-07-21 20:08:48', 13, 'EXECUTED', '8:1bb1c22f2e9949846c4a8465c465720b', 'loadData tableName=employee', '', NULL, '4.3.5', 'faker', NULL, '6898127323'),
('20210721200756-1', 'jhipster', 'config/liquibase/changelog/20210721200756_added_entity_Job.xml', '2021-07-21 20:08:48', 14, 'EXECUTED', '8:7b5d058c9c31fdbb5be4ef3eea17f04b', 'createTable tableName=job', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200756-1-relations', 'jhipster', 'config/liquibase/changelog/20210721200756_added_entity_Job.xml', '2021-07-21 20:08:48', 15, 'EXECUTED', '8:138a45ca5f057023dab7562718ab0494', 'createTable tableName=rel_job__task; addPrimaryKey tableName=rel_job__task', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200756-1-data', 'jhipster', 'config/liquibase/changelog/20210721200756_added_entity_Job.xml', '2021-07-21 20:08:48', 16, 'EXECUTED', '8:7ff2930fb7d74774a41394e3cc2f2a50', 'loadData tableName=job', '', NULL, '4.3.5', 'faker', NULL, '6898127323'),
('20210721200757-1', 'jhipster', 'config/liquibase/changelog/20210721200757_added_entity_JobHistory.xml', '2021-07-21 20:08:48', 17, 'EXECUTED', '8:326cfe6e8f8c079826f6b71f913347c8', 'createTable tableName=job_history; dropDefaultValue columnName=start_date, tableName=job_history; dropDefaultValue columnName=end_date, tableName=job_history', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200757-1-data', 'jhipster', 'config/liquibase/changelog/20210721200757_added_entity_JobHistory.xml', '2021-07-21 20:08:48', 18, 'EXECUTED', '8:b49b85524ebd0315392559d907be3d42', 'loadData tableName=job_history', '', NULL, '4.3.5', 'faker', NULL, '6898127323'),
('20210721200751-2', 'jhipster', 'config/liquibase/changelog/20210721200751_added_entity_constraints_Country.xml', '2021-07-21 20:08:48', 19, 'EXECUTED', '8:5daba28608066b2011303785046f063f', 'addForeignKeyConstraint baseTableName=country, constraintName=fk_country__region_id, referencedTableName=region', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200752-2', 'jhipster', 'config/liquibase/changelog/20210721200752_added_entity_constraints_Location.xml', '2021-07-21 20:08:48', 20, 'EXECUTED', '8:9e8c50151bed6734261896b0aed6fed2', 'addForeignKeyConstraint baseTableName=location, constraintName=fk_location__country_id, referencedTableName=country', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200753-2', 'jhipster', 'config/liquibase/changelog/20210721200753_added_entity_constraints_Department.xml', '2021-07-21 20:08:48', 21, 'EXECUTED', '8:c0ef43a423acf5d27127283bff218981', 'addForeignKeyConstraint baseTableName=department, constraintName=fk_department__location_id, referencedTableName=location', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200755-2', 'jhipster', 'config/liquibase/changelog/20210721200755_added_entity_constraints_Employee.xml', '2021-07-21 20:08:49', 22, 'EXECUTED', '8:00aab7c52224c896a6925fb56e5e46cc', 'addForeignKeyConstraint baseTableName=employee, constraintName=fk_employee__manager_id, referencedTableName=employee; addForeignKeyConstraint baseTableName=employee, constraintName=fk_employee__department_id, referencedTableName=department', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200756-2', 'jhipster', 'config/liquibase/changelog/20210721200756_added_entity_constraints_Job.xml', '2021-07-21 20:08:49', 23, 'EXECUTED', '8:48127a0c81f887ba4a9b33377bb3afec', 'addForeignKeyConstraint baseTableName=rel_job__task, constraintName=fk_rel_job__task__job_id, referencedTableName=job; addForeignKeyConstraint baseTableName=rel_job__task, constraintName=fk_rel_job__task__task_id, referencedTableName=task; addFore...', '', NULL, '4.3.5', NULL, NULL, '6898127323'),
('20210721200757-2', 'jhipster', 'config/liquibase/changelog/20210721200757_added_entity_constraints_JobHistory.xml', '2021-07-21 20:08:49', 24, 'EXECUTED', '8:8823803f952b25d4c85380e9ca294bd6', 'addForeignKeyConstraint baseTableName=job_history, constraintName=fk_job_history__job_id, referencedTableName=job; addForeignKeyConstraint baseTableName=job_history, constraintName=fk_job_history__department_id, referencedTableName=department; add...', '', NULL, '4.3.5', NULL, NULL, '6898127323');

-- --------------------------------------------------------

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

INSERT INTO `DATABASECHANGELOGLOCK` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` bigint NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `location_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `location_id`) VALUES
(1, 'Virtual', 3),
(2, 'wireless bus Tools', 5),
(3, 'global groupware', NULL),
(4, 'scalable', 4),
(5, 'Chicken', NULL),
(6, 'blue', NULL),
(7, 'navigating Hat Savings', NULL),
(8, 'Consultant solution-oriented', NULL),
(9, 'Borders', NULL),
(10, 'Account Fully-configurable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint NOT NULL,
  `first_name` varchar(255) DEFAULT NULL COMMENT 'The firstname attribute.',
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `hire_date` datetime(6),
  `salary` bigint DEFAULT NULL,
  `commission_pct` bigint DEFAULT NULL,
  `manager_id` bigint DEFAULT NULL,
  `department_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='The Employee entity.';

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `hire_date`, `salary`, `commission_pct`, `manager_id`, `department_id`) VALUES
(1, 'Lola', 'Rogahn', 'Lily.Kihn75@yahoo.com', 'repurpose withdrawal', '2021-07-21 11:55:53.000000', 71697, 45464, 8, 7),
(2, 'Carey', 'O\'Conner', 'Johnathon.Hammes@gmail.com', 'withdrawal', '2021-07-21 15:52:45.000000', 75289, 21024, NULL, NULL),
(3, 'Wilfrid', 'Spencer', 'Adan.Goodwin@gmail.com', 'Sleek', '2021-07-21 00:56:09.000000', 71090, 65309, 4, 8),
(4, 'Laurence', 'Gaylord', 'Alessia.Heathcote@hotmail.com', 'reinvent orchestrate', '2021-07-20 20:25:46.000000', 52820, 82484, NULL, NULL),
(5, 'Karson', 'Hammes', 'Eriberto14@hotmail.com', 'mobile Granite', '2021-07-21 15:03:40.000000', 13439, 33970, NULL, NULL),
(6, 'Aisha', 'Carroll', 'Fern.Ortiz73@gmail.com', 'Jersey time-frame', '2021-07-20 23:49:52.000000', 64329, 13556, 9, 3),
(7, 'Dedrick', 'Cremin', 'Karli72@yahoo.com', 'Devolved rich', '2021-07-21 02:20:00.000000', 54588, 45928, NULL, NULL),
(8, 'Clare', 'Willms', 'Bradley8@yahoo.com', 'payment Illinois', '2021-07-21 16:23:24.000000', 3244, 21747, NULL, NULL),
(9, 'Mariela', 'Spinka', 'Hope_Cruickshank98@hotmail.com', 'white', '2021-07-21 07:44:03.000000', 90189, 81327, 7, 3),
(10, 'Ada', 'Robel', 'Brent79@gmail.com', 'Table Alaska Checking', '2021-07-20 20:24:13.000000', 32637, 8639, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jhi_authority`
--

CREATE TABLE `jhi_authority` (
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jhi_authority`
--

INSERT INTO `jhi_authority` (`name`) VALUES
('ROLE_ADMIN'),
('ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `jhi_user`
--

CREATE TABLE `jhi_user` (
  `id` bigint NOT NULL,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(10) DEFAULT NULL,
  `activation_key` varchar(20) DEFAULT NULL,
  `reset_key` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NULL,
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jhi_user`
--

INSERT INTO `jhi_user` (`id`, `login`, `password_hash`, `first_name`, `last_name`, `email`, `image_url`, `activated`, `lang_key`, `activation_key`, `reset_key`, `created_by`, `created_date`, `reset_date`, `last_modified_by`, `last_modified_date`) VALUES
(1, 'admin', '$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC', 'Administrator', 'Administrator', 'admin@localhost', '', b'1', 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL),
(2, 'user', '$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K', 'User', 'User', 'user@localhost', '', b'1', 'en', NULL, NULL, 'system', NULL, NULL, 'system', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jhi_user_authority`
--

CREATE TABLE `jhi_user_authority` (
  `user_id` bigint NOT NULL,
  `authority_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jhi_user_authority`
--

INSERT INTO `jhi_user_authority` (`user_id`, `authority_name`) VALUES
(1, 'ROLE_ADMIN'),
(1, 'ROLE_USER'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` bigint NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `min_salary` bigint DEFAULT NULL,
  `max_salary` bigint DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `job_title`, `min_salary`, `max_salary`, `employee_id`) VALUES
(1, 'Dynamic Operations Associate', 36593, 95887, 4),
(2, 'Central Research Assistant', 69364, 96146, 6),
(3, 'Investor Configuration Liaison', 28833, 38525, 7),
(4, 'Investor Accounts Liaison', 63765, 82, 2),
(5, 'Central Program Coordinator', 91153, 63563, 1),
(6, 'International Applications Officer', 15212, 26854, 5),
(7, 'Legacy Program Consultant', 9604, 77867, 6),
(8, 'Central Creative Coordinator', 37364, 108, 3),
(9, 'Global Optimization Architect', 21485, 35317, NULL),
(10, 'Dynamic Division Facilitator', 84104, 80937, 8);

-- --------------------------------------------------------

--
-- Table structure for table `job_history`
--

CREATE TABLE `job_history` (
  `id` bigint NOT NULL,
  `start_date` datetime(6),
  `end_date` datetime(6),
  `language` varchar(255) DEFAULT NULL,
  `job_id` bigint DEFAULT NULL,
  `department_id` bigint DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_history`
--

INSERT INTO `job_history` (`id`, `start_date`, `end_date`, `language`, `job_id`, `department_id`, `employee_id`) VALUES
(1, '2021-07-21 15:05:57.000000', '2021-07-21 12:56:12.000000', 'ENGLISH', 2, 5, 9),
(2, '2021-07-21 00:33:32.000000', '2021-07-21 09:59:01.000000', 'FRENCH', 7, 3, 10),
(3, '2021-07-21 10:29:44.000000', '2021-07-20 22:34:52.000000', 'SPANISH', NULL, NULL, NULL),
(4, '2021-07-21 15:00:33.000000', '2021-07-20 20:26:52.000000', 'FRENCH', NULL, NULL, NULL),
(5, '2021-07-21 17:16:56.000000', '2021-07-21 01:35:54.000000', 'ENGLISH', NULL, NULL, NULL),
(6, '2021-07-21 02:47:39.000000', '2021-07-21 16:47:59.000000', 'SPANISH', NULL, NULL, NULL),
(7, '2021-07-21 10:51:27.000000', '2021-07-20 21:25:36.000000', 'FRENCH', NULL, NULL, NULL),
(8, '2021-07-21 01:17:20.000000', '2021-07-20 21:53:09.000000', 'FRENCH', 1, 1, 1),
(9, '2021-07-21 02:08:58.000000', '2021-07-21 13:40:24.000000', 'FRENCH', NULL, NULL, NULL),
(10, '2021-07-20 22:05:56.000000', '2021-07-21 15:03:25.000000', 'FRENCH', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` bigint NOT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='not an ignored comment';

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `street_address`, `postal_code`, `city`, `state_province`, `country_id`) VALUES
(1, 'Secured Program', 'the program Ghana', 'West Hopefort', 'Soft Colombia', NULL),
(2, 'installation International generating', 'Chief', 'Lake Jovanburgh', 'Gold harness', NULL),
(3, 'neural', 'e-commerce Reverse-engineered Directives', 'South Douglasfort', 'Outdoors', NULL),
(4, 'pink', 'SCSI', 'East Connermouth', 'Fuerte Sports', NULL),
(5, '17(E.U.A.-17) Frozen Venezuela', 'analyzer', 'St. Louis', 'extend help-desk Cambridgeshire', NULL),
(6, 'Exclusive cutting-edge', 'compelling Beauty', 'Easterton', 'Principal mobile', NULL),
(7, 'infomediaries Guadeloupe Licensed', 'Missouri JBOD', 'Roelchester', 'Jewelery Bacon', NULL),
(8, 'Licensed Forward', 'connect Toys Assurance', 'East Colemanland', 'blockchains', NULL),
(9, 'Refined Nicaragua synthesize', 'digital withdrawal', 'McGlynnbury', 'IB', NULL),
(10, 'Parks', 'utilisation Gardens', 'Warner Robins', 'Bhutanese extensible', NULL),
(11, '138 West St', '2146', 'Sandton', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` bigint NOT NULL,
  `region_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `region_name`) VALUES
(2, 'Jordanian'),
(4, 'De-engineered'),
(5, 'Practical'),
(6, 'Gorgeous'),
(7, 'payment Refined payment'),
(8, 'Steel Sleek Intranet'),
(9, 'state'),
(10, 'GB optical Account'),
(11, 'Africa'),
(12, 'Europe'),
(13, 'America'),
(14, 'Asia'),
(15, 'Oceania');

-- --------------------------------------------------------

--
-- Table structure for table `rel_job__task`
--

CREATE TABLE `rel_job__task` (
  `task_id` bigint NOT NULL,
  `job_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` bigint NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Task entity.\\n@author The JHipster team.';

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `title`, `description`) VALUES
(1, 'withdrawal Avon rich', 'payment matrices payment'),
(2, 'blockchains', 'Baby bifurcated'),
(3, 'responsive Architect Stream', 'PNG Usability Quality'),
(4, 'Licensed Officer', 'synthesizing'),
(5, 'optical Squares optical', 'Shilling Movies'),
(6, 'Tasty Handmade Orchestrator', 'Intelligent programming'),
(7, 'ADP Executive invoice', 'navigate Valley Chips'),
(8, 'Account', 'THX Rustic'),
(9, 'Florida', 'mission-critical copying'),
(10, 'Connecticut', 'Infrastructure payment Vision-oriented');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_country__region_id` (`region_id`);

--
-- Indexes for table `DATABASECHANGELOGLOCK`
--
ALTER TABLE `DATABASECHANGELOGLOCK`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_department__location_id` (`location_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_employee__manager_id` (`manager_id`),
  ADD KEY `fk_employee__department_id` (`department_id`);

--
-- Indexes for table `jhi_authority`
--
ALTER TABLE `jhi_authority`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jhi_user`
--
ALTER TABLE `jhi_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_user_login` (`login`),
  ADD UNIQUE KEY `ux_user_email` (`email`);

--
-- Indexes for table `jhi_user_authority`
--
ALTER TABLE `jhi_user_authority`
  ADD PRIMARY KEY (`user_id`,`authority_name`),
  ADD KEY `fk_authority_name` (`authority_name`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_job__employee_id` (`employee_id`);

--
-- Indexes for table `job_history`
--
ALTER TABLE `job_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_job_history__job_id` (`job_id`),
  ADD UNIQUE KEY `ux_job_history__department_id` (`department_id`),
  ADD UNIQUE KEY `ux_job_history__employee_id` (`employee_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ux_location__country_id` (`country_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rel_job__task`
--
ALTER TABLE `rel_job__task`
  ADD PRIMARY KEY (`job_id`,`task_id`),
  ADD KEY `fk_rel_job__task__task_id` (`task_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jhi_user`
--
ALTER TABLE `jhi_user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_history`
--
ALTER TABLE `job_history`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `fk_country__region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_department__location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_employee__department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `fk_employee__manager_id` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `jhi_user_authority`
--
ALTER TABLE `jhi_user_authority`
  ADD CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `fk_job__employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `job_history`
--
ALTER TABLE `job_history`
  ADD CONSTRAINT `fk_job_history__department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `fk_job_history__employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `fk_job_history__job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `fk_location__country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `rel_job__task`
--
ALTER TABLE `rel_job__task`
  ADD CONSTRAINT `fk_rel_job__task__job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `fk_rel_job__task__task_id` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
