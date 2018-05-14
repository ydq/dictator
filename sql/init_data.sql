-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.21-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- 正在导出表  dictator.dictator_config 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `dictator_config` DISABLE KEYS */;
INSERT INTO `dictator_config` (`id`, `app_id`, `profile_id`, `group_id`, `config_name`, `config_value`, `version`, `created_time`, `updated_time`, `operator_id`, `operator_ip`) VALUES
	(34, 'dictator-demo', 1, 1, 'spring.datasource.url', 'jdbc:mysql://test', 2, '2018-02-17 12:33:10', '2018-03-03 21:30:43', 1, '0:0:0:0:0:0:0:1'),
	(35, 'dictator-demo', 1, 1, 'spring.datasource.username', 'root', 0, '2018-03-03 21:31:05', '2018-03-03 21:31:05', 1, '0:0:0:0:0:0:0:1'),
	(36, 'dictator-demo', 1, 1, 'spring.datasource.driver-class-name', 'com.mysql.jdbc.Driver', 0, '2018-03-03 21:32:00', '2018-03-03 21:32:00', 1, '0:0:0:0:0:0:0:1'),
	(37, 'dictator-demo', 1, 1, 'spring.datasource.password', 'root', 0, '2018-03-03 21:32:21', '2018-03-03 21:32:21', 1, '0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `dictator_config` ENABLE KEYS */;

-- 正在导出表  dictator.dictator_config_group 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `dictator_config_group` DISABLE KEYS */;
INSERT INTO `dictator_config_group` (`id`, `group_name`, `created_at`, `updated_at`, `operator_id`, `operator_ip`) VALUES
	(1, '开发环境1', '2018-02-17 13:10:39', '2018-02-17 13:10:39', 0, ' ');
/*!40000 ALTER TABLE `dictator_config_group` ENABLE KEYS */;

-- 正在导出表  dictator.dictator_config_history 的数据：~15 rows (大约)
/*!40000 ALTER TABLE `dictator_config_history` DISABLE KEYS */;
INSERT INTO `dictator_config_history` (`id`, `app_id`, `config_id`, `profile_id`, `group_id`, `config_name`, `config_value`, `version`, `created_time`, `updated_time`, `history_created_time`, `operator_id`, `operator_ip`) VALUES
	(1, 'app', 1, 1, 1, 'spring.profile.active', 'dev', 1, '2018-02-17 12:33:10', '2018-02-20 14:34:53', '2018-02-20 14:41:46', 1, '0:0:0:0:0:0:0:1'),
	(35, 'app', 1, 1, 1, 'spring.banner.enable', 'false', 0, '2018-02-17 12:33:10', '2018-02-20 14:40:45', '2018-02-20 14:50:48', 1, '0:0:0:0:0:0:0:1'),
	(36, 'app', 8, 1, 1, 'spring.active.profile', 'dev', 1, '2018-02-18 21:20:30', '2018-02-20 14:05:41', '2018-02-20 14:50:50', 1, '0:0:0:0:0:0:0:1'),
	(37, 'app', 3, 1, 1, 'aaa', 'aaa', 1, '2018-02-19 14:21:53', '2018-02-20 14:05:47', '2018-02-20 14:50:51', 1, '0:0:0:0:0:0:0:1'),
	(38, 'abb', 9, 1, 1, 'spring.a', 'aaaaa', 0, '2018-02-20 13:10:43', '2018-02-20 13:10:43', '2018-02-20 14:50:52', 1, '0:0:0:0:0:0:0:1'),
	(39, 'aaa', 10, 1, 1, 'asdfdsfafdsa', 'sfdafdasfdas', 0, '2018-02-20 13:15:48', '2018-02-20 13:15:48', '2018-02-20 14:50:52', 1, '0:0:0:0:0:0:0:1'),
	(40, 'aaaf', 11, 1, 1, 'asfdfdsafdas', 'fdasasfdsfdafasd', 0, '2018-02-20 13:16:20', '2018-02-20 13:16:20', '2018-02-20 14:50:54', 1, '0:0:0:0:0:0:0:1'),
	(41, 'asffdasfdas', 12, 1, 1, 'fafdasfdasfdas', 'fdasfdsafsdasfda', 0, '2018-02-20 13:36:30', '2018-02-20 13:36:30', '2018-02-20 14:50:55', 1, '0:0:0:0:0:0:0:1'),
	(42, 'safd', 13, 1, 1, 'fasdsfadsda', 'sadffsdafsdadafsad', 1, '2018-02-20 13:42:21', '2018-02-20 14:05:25', '2018-02-20 14:50:56', 1, '0:0:0:0:0:0:0:1'),
	(43, 'aaaaaa', 14, 1, 1, 'fsadsdfaxczv', 'dsfagasdf', 1, '2018-02-20 13:42:32', '2018-02-20 14:05:33', '2018-02-20 14:50:57', 1, '0:0:0:0:0:0:0:1'),
	(44, 'asfdfdsafasdasfd', 15, 1, 1, 'gsadfdasdsa', 'xczvhdfssdaf', 1, '2018-02-20 13:43:00', '2018-02-20 13:43:00', '2018-02-20 14:50:58', 1, '0:0:0:0:0:0:0:1'),
	(45, 'a', 16, 1, 1, 'cc', 'fggasgasgas', 3, '2018-02-20 14:09:49', '2018-02-20 14:13:16', '2018-02-20 14:50:59', 1, '0:0:0:0:0:0:0:1'),
	(46, 'aafsafsdafsd', 17, 1, 1, 'ghsadf', 'aaaa', 3, '2018-02-20 14:13:41', '2018-02-20 14:21:56', '2018-02-20 14:51:01', 1, '0:0:0:0:0:0:0:1'),
	(47, 'app', 34, 1, 1, 'spring.profile.active', 'dev', 0, '2018-02-17 12:33:10', '2018-02-20 14:34:39', '2018-02-20 14:51:49', 1, '0:0:0:0:0:0:0:1'),
	(48, 'app', 34, 1, 1, 'spring.datasource.url', 'jdbc:mysql://test', 1, '2018-02-17 12:33:10', '2018-02-20 15:27:11', '2018-03-03 21:30:43', 1, '0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `dictator_config_history` ENABLE KEYS */;

-- 正在导出表  dictator.dictator_config_profile 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `dictator_config_profile` DISABLE KEYS */;
INSERT INTO `dictator_config_profile` (`id`, `profile_name`, `profile_code`, `profile_desc`, `enable`, `created_time`, `updated_time`, `operator_id`, `operator_ip`) VALUES
	(1, '开发环境', 'dev', '', b'1', '2018-02-20 12:10:34', '2018-02-20 12:10:35', 0, ' ');
/*!40000 ALTER TABLE `dictator_config_profile` ENABLE KEYS */;

-- 正在导出表  dictator.dictator_resource 的数据：~1 rows (大约)
INSERT INTO `dictator_resource` VALUES (1, '配置历史', 1, 38, '/0', 'history', '2018-04-24 14:26:46', '2018-05-14 21:08:58', -1, '0:0:0:0:0:0:0:1');
INSERT INTO `dictator_resource` VALUES (2, '配置历史获取', 1, 1, '0/1', '/configHistory/list', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (3, '从历史恢复配置', 1, 1, '0/1', '/configHistory/recovery', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (4, '配置历史详情获取', 1, 1, '0/1', '/configHistory/listByConfigId', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (5, '分组', 1, 37, '/0', 'group', '2018-04-24 14:26:46', '2018-05-14 21:10:46', -1, '0:0:0:0:0:0:0:1');
INSERT INTO `dictator_resource` VALUES (6, '客户端分组列表', 1, 5, '0/5', '/group/list', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (7, '环境', 1, 38, '/0', 'profile', '2018-04-24 14:26:46', '2018-05-14 21:10:41', -1, '0:0:0:0:0:0:0:1');
INSERT INTO `dictator_resource` VALUES (8, '删除环境', 1, 7, '0/7', '/profile/delete', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (9, '环境列表', 1, 7, '0/7', '/profile/list', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (10, '环境增加/编辑', 1, 7, '0/7', '/profile/saveOrUpdate', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (11, '资源', 1, 37, '/0/37', 'resource', '2018-04-24 14:26:46', '2018-05-14 21:06:03', 0, '');
INSERT INTO `dictator_resource` VALUES (12, '删除资源', 1, 11, '0/11', '/resource/delete', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (13, '资源增加/编辑', 1, 11, '0/11', '/resource/saveOrUpdate', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (14, '登录角色已有资源', 1, 11, '0/11', '/resource/mine', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (15, '资源列表', 1, 11, '0/11', '/resource/list', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (16, '角色', 1, 37, '/0', 'role', '2018-04-24 14:26:46', '2018-05-14 21:10:34', -1, '0:0:0:0:0:0:0:1');
INSERT INTO `dictator_resource` VALUES (17, '删除角色', 1, 16, '0/16', '/role/delete', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (18, '授权环境给角色', 1, 16, '0/16', '/role/grantProfilePermission', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (19, '角色增加/编辑', 1, 16, '0/16', '/role/saveOrUpdate', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (20, '角色列表', 1, 16, '0/16', '/role/list', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (21, '授权给角色', 1, 16, '0/16', '/role/grantPermission', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (22, '角色详情', 1, 16, '0/16', '/role/detail', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (23, '账号', 1, 37, '/0', 'user', '2018-04-24 14:26:46', '2018-05-14 21:10:26', -1, '0:0:0:0:0:0:0:1');
INSERT INTO `dictator_resource` VALUES (24, '删除用户', 1, 23, '0/23', '/user/delete', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (26, '用户增加/编辑', 1, 23, '0/23', '/user/saveOrUpdate', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (28, '用户列表', 1, 23, '0/23', '/user/listAll', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (29, '当前配置', 1, 38, '/0', '/current', '2018-04-24 14:26:46', '2018-05-14 21:10:14', -1, '0:0:0:0:0:0:0:1');
INSERT INTO `dictator_resource` VALUES (30, '删除配置', 1, 29, '0/29', '/config/delete', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (31, '配置列表', 1, 29, '0/29', '/config/list', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (32, '配置增加/编辑', 1, 29, '0/29', '/config/saveOrUpdate', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (33, '批量导入配置', 1, 29, '0/29', '/config/batchAdd', '2018-04-24 14:26:46', '2018-04-25 16:02:08', 0, '');
INSERT INTO `dictator_resource` VALUES (37, '权限', 1, 0, '/0', '/permission', '2018-05-14 21:05:15', '2018-05-14 21:07:38', 0, '');
INSERT INTO `dictator_resource` VALUES (38, '配置', 1, 0, '/0', 'config', '2018-05-14 21:08:51', '2018-05-14 21:08:51', -1, '0:0:0:0:0:0:0:1');

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
