/*
 Navicat Premium Data Transfer

 Source Server         : ZABBIX
 Source Server Type    : MySQL
 Source Server Version : 100315
 Source Host           : 10.156.80.115:3306
 Source Schema         : zabbix

 Target Server Type    : MySQL
 Target Server Version : 100315
 File Encoding         : 65001

 Date: 03/06/2020 16:42:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userid` bigint(20) UNSIGNED NOT NULL,
  `alias` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `surname` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `passwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `autologin` int(11) NOT NULL DEFAULT 0,
  `autologout` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '15m',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'en_GB',
  `refresh` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '30s',
  `type` int(11) NOT NULL DEFAULT 1,
  `theme` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'default',
  `attempt_failed` int(11) NOT NULL DEFAULT 0,
  `attempt_ip` varchar(39) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_clock` int(11) NOT NULL DEFAULT 0,
  `rows_per_page` int(11) NOT NULL DEFAULT 50,
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE INDEX `users_1`(`alias`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'Zabbix', 'Administrator', '5fce1b3e34b520afeffb37ce08c7cd66', '', 1, '0', 'en_GB', '30s', 3, 'default', 8, '10.156.106.204', 1591200102, 50);
INSERT INTO `users` VALUES (2, 'guest', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 0, '15m', 'en_GB', '30s', 1, 'default', 84062, '10.156.80.115', 1591216944, 50);
INSERT INTO `users` VALUES (3, 'jjquintero', 'Jonaiker', 'Quintero', 'c378985d629e99a4e86213db0cd5e70d', '', 0, '0', 'en_GB', '30s', 3, 'dark-theme', 2, '10.57.80.142', 1590805994, 50);
INSERT INTO `users` VALUES (6, 'llamon', 'Luis', 'Lamon', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '10.156.106.226', 1565709030, 50);
INSERT INTO `users` VALUES (8, 'jgomeza', 'jgomeza', '', '', '', 0, '0', 'en_GB', '30s', 3, 'dark-theme', 0, '10.156.106.204', 1586456408, 50);
INSERT INTO `users` VALUES (9, 'jecarrillo', 'Jesus', 'Carrillo', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '', 0, 50);
INSERT INTO `users` VALUES (10, 'dfigueroa', 'David', 'Figueroa', '', '', 0, '0', 'en_GB', '30s', 3, 'dark-theme', 0, '10.57.80.142', 1589990139, 50);
INSERT INTO `users` VALUES (11, 'caduranb', 'Carlos', 'Duran', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '10.57.80.142', 1590858310, 50);
INSERT INTO `users` VALUES (12, 'grafana', 'grafana', '', 'e10adc3949ba59abbe56e057f20f883e', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '10.156.106.23', 1583767339, 50);
INSERT INTO `users` VALUES (13, 'joyarbe', 'joyarbe', '', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 182, '10.156.80.115', 1591214402, 50);
INSERT INTO `users` VALUES (14, 'ljrodrir', 'Leonardo', 'Rodriguez', 'e10adc3949ba59abbe56e057f20f883e', '', 0, '0', 'en_GB', '30s', 3, 'default', 1, '10.156.106.23', 1584967302, 50);
INSERT INTO `users` VALUES (16, 'jamunoz', 'Jhosner', 'Muñoz', 'e10adc3949ba59abbe56e057f20f883e', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '', 0, 50);
INSERT INTO `users` VALUES (17, 'dadomador', 'Daniel', 'Domador', '89317e3334bce5af858f3a5f88bd5807', '', 0, '0', 'en_GB', '30s', 3, 'dark-theme', 11, '10.156.106.210', 1586363034, 50);
INSERT INTO `users` VALUES (18, 'pperez', 'Pedro', 'Perez', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '10.156.106.208', 1580234186, 50);
INSERT INTO `users` VALUES (19, 'operador', 'operador', 'operador', '81dc9bdb52d04dc20036dbd8313ed055', '', 0, '0', 'en_GB', '30s', 1, 'default', 6, '10.57.80.142', 1591077398, 50);
INSERT INTO `users` VALUES (20, 'crozo', 'crozo', '', '', '', 0, '0', 'en_GB', '30s', 3, 'dark-theme', 0, '10.156.106.211', 1584028262, 50);
INSERT INTO `users` VALUES (22, 'slack', 'slack', 'slack', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '', 0, 50);
INSERT INTO `users` VALUES (23, 'galcano', 'Gabriel', 'Alcano', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '10.156.81.59', 1584660228, 50);
INSERT INTO `users` VALUES (24, 'telegram', 'telegram', '', '035963b147f3b4b278d6dad324c642c6', '', 0, '0', 'en_GB', '30s', 3, 'default', 2, '10.156.106.223', 1580850666, 50);
INSERT INTO `users` VALUES (26, 'jovalles', 'Jesus', 'Ovalles', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '10.156.106.18', 1583252182, 50);
INSERT INTO `users` VALUES (29, 'jjvilori', 'José de Jesús', 'Viloria Morán', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '', 0, 50);
INSERT INTO `users` VALUES (30, 'jcarvaja', 'Jose Gregorio', 'Carvajal Perez', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '10.156.81.74', 1584049534, 50);
INSERT INTO `users` VALUES (31, 'feduran', 'Francisco Che Ernesto', 'Duran Briceño', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '', 0, 50);
INSERT INTO `users` VALUES (32, 'cedsilva', 'Cesar David', 'Silva', 'e10adc3949ba59abbe56e057f20f883e', '', 0, '0', 'en_GB', '30s', 3, 'default', 5, '10.156.81.74', 1590170771, 50);
INSERT INTO `users` VALUES (33, 'Djrodriguez', 'Douglas Jose', 'Rodriguez Chacon', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '', 0, 50);
INSERT INTO `users` VALUES (34, 'rmelende', 'Raúl Alberto', 'Melendez Rico', '', '', 0, '0', 'en_GB', '30s', 3, 'default', 0, '', 0, 50);
INSERT INTO `users` VALUES (35, 'nuzcategui', 'Neuman', 'Uzcategui', '', '', 0, '0', 'en_US', '30s', 3, 'dark-theme', 0, '', 0, 50);

SET FOREIGN_KEY_CHECKS = 1;
