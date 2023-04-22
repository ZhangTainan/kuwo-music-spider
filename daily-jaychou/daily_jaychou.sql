/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : localhost:3306
 Source Schema         : music

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : 65001

 Date: 26/03/2023 00:04:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for daily_jaychou
-- ----------------------------
DROP TABLE IF EXISTS `daily_jaychou`;
CREATE TABLE `daily_jaychou`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL COMMENT '歌曲id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '歌曲名',
  `artist` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '歌手',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 163 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of daily_jaychou
-- ----------------------------
INSERT INTO `daily_jaychou` VALUES (1, 228908, '晴天', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (2, 324244, '青花瓷', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (3, 440613, '稻香', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (4, 440623, '说好的幸福呢', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (5, 118980, '夜曲', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (6, 94237, '七里香', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (7, 440615, '花海', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (8, 7149583, '告白气球', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (9, 228912, '本草纲目', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (10, 215257, '反方向的钟', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (11, 728676, '我落泪情绪零碎', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (12, 83728113, '我是如此相信', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (13, 324243, '蒲公英的约定', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (14, 440614, '给我一首歌的时间', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (15, 6871880, '一路向北', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (16, 118987, '枫', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (17, 728677, '烟花易冷', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (18, 94239, '搁浅', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (19, 138243, '听妈妈的话', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (20, 156522, '简单爱', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (21, 3197116, '明明就', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (22, 588552, '爱在西元前', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (23, 118990, '发如雪', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (24, 235498, '半岛铁盒', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (25, 79479, '东风破', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (26, 226543302, '最伟大的作品', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (27, 268702, '霍元甲', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (28, 82372, '轨迹', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (29, 238210, '以父之名', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (30, 324249, '最长的电影', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (31, 3195905, '红尘客栈', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (32, 235497, '暗号', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (33, 156518, '安静', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (34, 226555044, '红颜如霜', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (35, 392927, '不能说的秘密', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (36, 138246, '退后', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (37, 728675, '说了再见', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (38, 94236, '借口', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (39, 226555040, '粉色海洋', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (40, 243826, '龙卷风', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (41, 541514, '我不配', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (42, 324240, '彩虹', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (43, 226555043, '还在流浪', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (44, 215258, '可爱女人', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (45, 295518, '园游会', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (46, 235501, '回到过去', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (47, 324245, '甜甜的', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (48, 138804, '菊花台', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (49, 156491, '断了的弦', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (50, 7149578, '爱情废柴', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (51, 142655450, 'Mojito', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (52, 79483, '你听得到', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (53, 156498, '星晴', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (54, 313069, '开不了口', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (55, 251561, '爷爷泡的茶', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (56, 3211589, '哪里都是你', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (57, 226555045, '错过的烟火', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (58, 6187940, '手写的从前', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (59, 541141, '逆鳞', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (60, 118989, '黑色毛衣', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (61, 226555041, '倒影', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (62, 6176029, '算什么男人', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (63, 116020, '黑色幽默', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (64, 94232, '止战之殇', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (65, 118986, '浪漫手机', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (66, 324242, '牛仔很忙', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (67, 215274, '米兰的小铁匠', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (68, 235499, '半兽人', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (69, 324248, '阳光宅男', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (70, 235503, '龙拳', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (71, 156517, '双截棍', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (72, 661244, '飘移', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (73, 3204357, '大笨钟', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (74, 726836, '雨下一整晚', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (75, 296539, '白色风车', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (76, 94230, '外婆', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (77, 377573, '周大侠', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (78, 226555042, 'Intro', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (79, 251392, '她的睫毛', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (80, 238209, '三年二班', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (81, 156521, '忍者', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (82, 156519, '威廉古堡', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (83, 116017, '最后的战役', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (84, 666053, '上海一九四三', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (85, 728672, '超人不会飞', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (86, 384178, '千山万水', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (87, 138805, '心雨', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (88, 6187933, '听见下雨的声音', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (89, 61192, '印第安老斑鸠', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (90, 41378649, '不爱我就拉倒', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (91, 94240, '将军', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (92, 6187932, '美人鱼', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (93, 7149580, '一点点', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (94, 138806, '迷迭香', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (95, 156520, '对不起', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (96, 1106330, 'Mine Mine', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (97, 79475, '爱情悬崖', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (98, 94238, '我的地盘', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (99, 138807, '红模仿', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (100, 235500, '分裂', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (101, 324352, '梯田', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (102, 728669, '好久不见', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (103, 94235, '乱舞春秋', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (104, 118984, '麦芽糖', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (105, 215269, '火车叨位去', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (106, 156524, '爸，我回来了', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (107, 6187936, '天涯过客', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (108, 7119717, '床边故事', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (109, 440622, '时光机', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (110, 228941, '黄金甲', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (111, 3211591, '乌克丽丽', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (112, 7119718, '前世情人', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (113, 3211586, '爱你没差', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (114, 215261, '娘子', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (115, 440620, '乔克叔叔', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (116, 7149579, '说走就走', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (117, 440618, '龙战骑士', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (118, 94234, '困兽之斗', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (119, 6187931, '听爸爸的话', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (120, 79478, '双刀', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (121, 6148597, '鞋子特大号', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (122, 192859826, '不该', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (123, 728673, '跨时代', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (124, 3204356, '手语', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (125, 215262, '完美主义', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (126, 118991, '蓝色风暴', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (127, 156507, '斗牛', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (128, 1106347, '你好吗', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (129, 215252, '伊斯坦堡', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (130, 3211587, '公公偏头痛', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (131, 3211588, '梦想启动', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (132, 7134990, 'Now You See Me', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (133, 6993249, '英雄', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (134, 238435, '同一种调调', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (135, 7149582, '土耳其冰淇淋', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (136, 79476, '懦夫', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (137, 728671, '自导自演', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (138, 1106210, '公主病', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (139, 322701, '无双', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (140, 6187938, '一口气全念对', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (141, 324241, '扯', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (142, 1106360, '超跑女神', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (143, 519799, '淡水海边', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (144, 3211590, '四季列车', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (145, 1106207, '琴伤', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (146, 6187934, '阳明山', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (147, 440619, '魔术先生', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (148, 6187935, '窃爱', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (149, 1106321, '世界未末日', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (150, 519800, '路小雨', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (151, 1106286, '迷魂曲', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (152, 11801298, '蜗牛', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (153, 1106352, '疗伤烧肉粽', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (154, 1106341, '惊叹号', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (155, 1106351, '水手怕水', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (156, 1106349, '皮影戏', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (157, 728674, '免费教学录影带', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (158, 87864343, '周杰伦希望他的音乐能带给大家“鼠”不尽的快乐', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (159, 28425772, '四面楚歌', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (160, 735136, '嘻哈空姐', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (161, 519795, 'First Kiss', '周杰伦');
INSERT INTO `daily_jaychou` VALUES (162, 6769106, '借口', '周杰伦');

SET FOREIGN_KEY_CHECKS = 1;
