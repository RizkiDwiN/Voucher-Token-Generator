/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : home_db

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 06/01/2023 10:44:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id_token` int NOT NULL AUTO_INCREMENT,
  `number_token` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 'AAAAAAAAAA', 1);
INSERT INTO `token` VALUES (2, 'hiobWoASvD', 0);
INSERT INTO `token` VALUES (3, '2UuKuaTnAf', 0);
INSERT INTO `token` VALUES (4, 'uM9AsWmtKX', 0);
INSERT INTO `token` VALUES (5, 'FSultWS0te', 0);
INSERT INTO `token` VALUES (6, '4zMDaJ4jTy', 0);
INSERT INTO `token` VALUES (7, 'fidQmErydP', 0);
INSERT INTO `token` VALUES (8, 'p5cXwMpTtn', 0);
INSERT INTO `token` VALUES (9, 'HH4a6WGYdK', 0);
INSERT INTO `token` VALUES (10, 'wfhRXM9MyB', 0);
INSERT INTO `token` VALUES (11, 'm4Mxhd0ibZ', 0);
INSERT INTO `token` VALUES (12, 'CeyAMio3NN', 0);
INSERT INTO `token` VALUES (13, 'aAOxQXb4t8', 0);
INSERT INTO `token` VALUES (14, 'X0xlU2E0AE', 0);
INSERT INTO `token` VALUES (15, 'dYLL0ZVJqj', 0);
INSERT INTO `token` VALUES (16, 'fxK2NfeyL8', 0);
INSERT INTO `token` VALUES (17, 'CjZk9OL5VY', 0);
INSERT INTO `token` VALUES (18, 'JMS5GL9GLK', 0);
INSERT INTO `token` VALUES (19, 'RYOy3xrkFl', 0);
INSERT INTO `token` VALUES (20, 'XqcBwscqNZ', 0);
INSERT INTO `token` VALUES (21, '2a6yBozLrh', 0);
INSERT INTO `token` VALUES (22, 'x49loJb49w', 0);
INSERT INTO `token` VALUES (23, 'JCiA2StIKL', 0);
INSERT INTO `token` VALUES (24, '3fmujpGcxy', 0);
INSERT INTO `token` VALUES (25, 'q4Q7Q06OUy', 0);
INSERT INTO `token` VALUES (26, 'ORb02IliBW', 0);
INSERT INTO `token` VALUES (27, 'ZozhdHNazh', 0);
INSERT INTO `token` VALUES (28, 'LPv0QLkyoR', 0);
INSERT INTO `token` VALUES (29, '2NRJVMsNLJ', 0);
INSERT INTO `token` VALUES (30, 'h5UvpSA0y7', 0);
INSERT INTO `token` VALUES (31, 'oDXOKRxioM', 0);
INSERT INTO `token` VALUES (32, 'RQNO9xqN8B', 0);
INSERT INTO `token` VALUES (33, 'iH6h1skBHi', 0);
INSERT INTO `token` VALUES (34, '4McLA0p76u', 0);
INSERT INTO `token` VALUES (35, 'O3vLD96okz', 0);
INSERT INTO `token` VALUES (36, 'qhmYFHeWt8', 0);
INSERT INTO `token` VALUES (37, 'yCUHGmt2pG', 0);
INSERT INTO `token` VALUES (38, 'Oow2jxRtLX', 0);
INSERT INTO `token` VALUES (39, '5vriGYVvoS', 0);
INSERT INTO `token` VALUES (40, 'HpLydMegmn', 0);
INSERT INTO `token` VALUES (41, 'Y5bOTkrNvu', 0);
INSERT INTO `token` VALUES (42, 'iyFalXKAaM', 0);
INSERT INTO `token` VALUES (43, 'sNhT383n56', 0);
INSERT INTO `token` VALUES (44, 'fvdvpQxBTy', 0);
INSERT INTO `token` VALUES (45, 'Zr7MK7gwc6', 0);
INSERT INTO `token` VALUES (46, 'qoF54AwVee', 0);
INSERT INTO `token` VALUES (47, '60gykJn1Ij', 0);
INSERT INTO `token` VALUES (48, 'hAM4kUg3Er', 0);
INSERT INTO `token` VALUES (49, 'pK75BGyR55', 0);
INSERT INTO `token` VALUES (50, '4S8xc68Uw3', 0);

-- ----------------------------
-- Table structure for voucher
-- ----------------------------
DROP TABLE IF EXISTS `voucher`;
CREATE TABLE `voucher`  (
  `id_voucher` int NOT NULL AUTO_INCREMENT,
  `voucher` varchar(29) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `voucher_exp` date NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_voucher`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of voucher
-- ----------------------------
INSERT INTO `voucher` VALUES (1, 'HRIZX-Y0P4Q-4YLM5-DCQJE-I7UY8', '2023-01-06', 3);
INSERT INTO `voucher` VALUES (2, 'HRIZX-SEV32-CW5ZS-67RI3-B0FT5', '2023-01-06', 3);
INSERT INTO `voucher` VALUES (3, 'HRIZX-2PX0Z-LAV4G-4TPD4-UIPP1', '2023-01-06', 3);
INSERT INTO `voucher` VALUES (4, 'HRIZX-9XTE9-Y4XG1-CKY5Z-AARF6', '2023-01-06', 3);
INSERT INTO `voucher` VALUES (5, 'HRIZX-0IIAK-ZW2PV-R1E4C-BOWEI', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (6, 'HRIZX-W8QTT-IGFOX-IB5OB-FF7DS', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (7, 'HRIZX-3LSM8-KB7EU-VVAQN-37C9G', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (8, 'HRIZX-WKD2T-HKS21-RNFK9-QNK2B', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (9, 'HRIZX-YL5CS-DG45S-DANTH-62TV9', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (10, 'HRIZX-QEF0W-050SL-P0MCL-XLO6U', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (11, 'HRIZX-U5E1M-LIWU1-6ZHS8-CNCD4', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (12, 'HRIZX-N01QX-8F260-9HPYL-7PV6O', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (13, 'HRIZX-VY0GO-E31UK-YWXW2-VQ2PQ', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (14, 'HRIZX-O7SID-IDIJ0-5Q8VL-SHG6J', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (15, 'HRIZX-3Q3TL-PBCY2-IEMN3-ZGLRW', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (16, 'HRIZX-HIZGL-ODO76-4SZ3K-EBC19', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (17, 'HRIZX-E81RI-JEFQ3-QNY7M-CZKKU', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (18, 'HRIZX-IFOU8-UMVN4-PX0IV-MW1VB', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (19, 'HRIZX-DWA7V-4QNAJ-59S7J-STT74', '2024-10-08', 0);
INSERT INTO `voucher` VALUES (20, 'HRIZX-4CD2X-FQX73-EZF9R-Z69D4', '2024-10-08', 0);

SET FOREIGN_KEY_CHECKS = 1;
