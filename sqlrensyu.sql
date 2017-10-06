	use oredb;
drop table user;

CREATE TABLE user (
user_id int PRIMARY KEY AUTO_INCREMENT,
login_id varchar(20) UNIQUE NOT NULL,
user_name varchar(20) NOT NULL,
e_mail varchar(100) UNIQUE NOT NULL,
tel varchar(13) NOT NULL,
remarks varchar(100)
);
INSERT INTO user VALUES(NULL,'sato','佐藤','sato@aaa.jp','03-1111-2222',NULL);
INSERT INTO user VALUES(NULL,'suzuki','佐藤','suzuki@bbb.jp','03-2222-3333','8月に');

