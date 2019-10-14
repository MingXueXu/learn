SET NAMES utf8;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL comment '用户名',
  `password` varchar(255) DEFAULT NULL,
  `register_date` timestamp DEFAULT CURRENT_TIMESTAMP,
  `avatar_url` varchar(200) DEFAULT '' comment '头像',
  PRIMARY KEY (`userid`)
);
ALTER TABLE `user` ADD UNIQUE (`username`);

DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `videoid` bigint(20) NOT NULL AUTO_INCREMENT,
  `videoname` varchar(50) DEFAULT NULL comment '视频名称',
  `videokind` varchar(50) DEFAULT NULL comment '视频类型',
  `videolike` varchar(2550) DEFAULT NULL comment '视频点赞数',
  `videogift` varchar(50) DEFAULT NULL comment '视频送花数',
  `videocollect` varchar(50) DEFAULT NULL comment '视频收藏数',
  `videoclick` varchar(50) DEFAULT NULL comment '视频播放数',
  `upload_date` timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`videoid`)
);

