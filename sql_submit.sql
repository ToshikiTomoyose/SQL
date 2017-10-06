
CREATE DATABASE likesubmit;
USE likesubmit;
CREATE TABLE item_category(
	category_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	category_name varchar(256) NOT NULL
	);
	
CREATE TABLE item(
	item_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	item_name varchar(256) NOT NULL,
	item_price int NOT NULL,
	category_id int
	);
INSERT INTO item_category VALUES(1,'家具');
INSERT INTO item_category VALUES(2,'食品');
INSERT INTO item_category VALUES(3,'本');


CREATE TABLE item(
	item_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	item_name varchar(256) NOT NULL,
	item_price int NOT NULL,
	category_id int
	);
use likesubmit;

INSERT INTO item VALUES(NULL,'堅牢な机',3000,1);
INSERT INTO item VALUES(NULL,'生焼け肉',50,2);
INSERT INTO item VALUES(NULL,'すっきりわかるJava入門',3000,3);
INSERT INTO item VALUES(NULL,'おしゃれな椅子',2000,1);
INSERT INTO item VALUES(NULL,'こんがり肉',500,2);
INSERT INTO item VALUES(NULL,'書き方ドリルSQL',2500,3);
INSERT INTO item VALUES(NULL,'ふわふわのベッド',30000,1);
INSERT INTO item VALUES(NULL,'ミラノ風ドリア',300,2);

SELECT item_name,item_price FROM item WHERE category_id=1;
SELECT item_name,item_price FROM item WHERE item_price>=1000;
SELECT item_name,item_price FROM item WHERE item_name LIKE '%肉%';
SELECT item_id,item_name,item_price,category_name FROM item INNER JOIN item_category ON item.category_id= item_category.category_id;

SELECT category_name,SUM(item_price) AS total_price FROM item INNER JOIN item_category ON item.category_id= item_category.category_id GROUP BY category_name ORDER BY total_price DESC;

