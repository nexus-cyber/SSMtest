/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : 192.168.205.128:3306
 Source Schema         : book

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 23/03/2023 16:16:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `bookID` int NOT NULL AUTO_INCREMENT COMMENT '书id',
  `bookName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '书名',
  `bookCounts` int UNSIGNED NOT NULL COMMENT '数量',
  `detail` varchar(20000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '描述',
  PRIMARY KEY (`bookID`) USING BTREE,
  INDEX `bookID`(`bookID` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, '《呼啸山庄》', 10, '《呼啸山庄》是英国女作家勃朗特姐妹之一艾米莉·勃朗特的作品，是19世纪英国文学的代表作之一。\r\n小说描写吉卜赛弃儿希斯克利夫被山庄老主人收养后，因受辱和恋爱不遂，外出致富。回来后，对与其女友凯瑟琳结婚的地主林顿及其子女进行报复的故事。全篇充满强烈的反压迫、争幸福的斗争精神，又始终笼罩着离奇、紧张的浪漫气氛。此作品多次被改编成电影作品。');
INSERT INTO `books` VALUES (2, '《战争与和平》', 10, '《战争与和平》是俄国作家列夫·尼古拉耶维奇·托尔斯泰创作的长篇小说，也是其代表作，创作于1863—1869年。\r\n该作以1812年的卫国战争为中心，反映从1805到1820年间的重大历史事件。以鲍尔康斯、别祖霍夫、罗斯托夫和库拉金四大贵族的经历为主线，在战争与和平的交替描写中把众多的事件和人物串联起来。\r\n作者将“战争”与“和平”的两种生活、两条线索交叉描写，构成一部百科全书式的壮阔史诗。《战争与和平》的基本主题是肯定这次战争中俄国人民正义的抵抗行动，赞扬俄国人民在战争中表现出来的爱国热情和英雄主义。但作品的基调是宗教仁爱思想和人道主义，作家反对战争，对战争各方的受难并都给予了深切的同情。\r\n');
INSERT INTO `books` VALUES (11, '《海边的卡夫卡》', 10, '《海边的卡夫卡》叙述了一个十五岁离家少年与一个名叫中田聪的人的经历，两个角色作两条线索来写，而且两人自始至终未曾相遇。少年化名“田村卡夫卡”，从东京中野区的家里出逃，一直到了四国的高知县；中田聪在1946年，也就是在读小学时遇到奇怪事件昏迷后丧失了记忆和读写能力，因此大半辈子碌碌无为，直到六十岁这年，有了一次奇异的经历。');
INSERT INTO `books` VALUES (12, '《简·爱》', 100, '《简·爱》（Jane Eyre）是英国女作家夏洛蒂·勃朗特创作的长篇小说，是一部具有自传色彩的作品。\r\n该小说讲述孤女简·爱自幼父母双亡，寄养于舅母家，备受虐待，后被舅母打发到洛伍德义塾（洛伍德学校）去。洛伍德义塾环境恶劣，但她顽强地活了下来。毕业两年后，简应聘去当家庭教师谋生。主人罗切斯特性格忧郁、喜怒无常，但经过较长时间接触，简发现罗切斯特心地善良，为人正直、刚毅，渐渐对他产生了感情。当他们在教堂举行婚礼时，简痛苦地发现，原来罗切斯特有一个疯妻伯莎·安托瓦妮特·梅森。简悲伤地离去。后来，与她离散多年的叔父约翰·爱病故，遗赠给她巨额财产。因不能忘情于罗切斯特，她重回故地，才知数月前疯女人纵火而死，罗切斯特为救她一只眼睛被砸了出来，另一只眼睛发炎也看不见了 。简立刻去向他倾诉衷情，两人终缔良缘。 后来，罗切斯特在伦敦医好了一只眼睛，和简·爱生下了一个男孩。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `islock` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'C507B586CEE6BD03566FD1451653B52B', 0);

SET FOREIGN_KEY_CHECKS = 1;
