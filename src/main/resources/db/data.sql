INSERT INTO `user` (id, username, password, role) VALUES ('1', 'root', '1234', 'admin');
INSERT INTO `user` (id, username, password, role) VALUES ('2', 'user', '1234', 'user');
INSERT INTO `user` (id, username, password, role) VALUES ('3', 'user1', '1234', 'user');
INSERT INTO `user` (id, username, password, role) VALUES ('4', 'user2', '1234', 'user');
INSERT INTO `user` (id, username, password, role) VALUES ('5', 'user3', '1234', 'user');
INSERT INTO `user` (id, username, password, role) VALUES ('6', 'user4', '1234', 'user');
INSERT INTO `user` (id, username, password, role) VALUES ('7', '测试', '123', 'user');
INSERT INTO `user` (userid, username, password, register_date,avatar_url) VALUES ('1', 'user1', '1234', '2017-10-14 12:00:00','url');
INSERT INTO `user` (userid, username, password, register_date,avatar_url) VALUES ('2', 'user2', '1234', '2017-10-14 12:00:00','url');

INSERT INTO `video` (id, video_name, video_kind, video_liked, video_gift, video_collected, video_clicked, upload_date) VALUES ('1', 'video1', '1234', '1234', '1234', '1234', '1234', '2017-10-14 12:00:00');
INSERT INTO `video` (id, video_name, video_kind, video_liked, video_gift, video_collected, video_clicked, upload_date) VALUES ('2', 'video2', '1234', '1234', '1234', '1234', '1234', '2017-10-14 12:00:00');

COMMIT;