-- 创建表primary_key_test1
CREATE TABLE primary_key_test1(
    id INT UNSIGNED PRIMARY KEY,
    username VARCHAR(20)
);

INSERT primary_key_test1(id, username) VALUES(1, 'a');
INSERT primary_key_test1(id, username) VALUES(2, 'b');


-- 创建表primary_key_test2
CREATE TABLE primary_key_test2(
    id INT UNSIGNED KEY,
    username VARCHAR(20)
);


-- 创建表primary_key_test3
CREATE TABLE primary_key_test3(
    id INT UNSIGNED,
    username VARCHAR(20),
    PRIMARY KEY(id)
);

-- 复合主键
-- 创建表multiple_primary_key_test
CREATE TABLE multiple_primary_key_test(
    id INT UNSIGNED,
    courseId VARCHAR(20),
    username VARCHAR(20),
    PRIMARY KEY(id, courseId)
);

INSERT multiple_primary_key_test(id, courseId, username) VALUES(1, 'a', 'king');
INSERT multiple_primary_key_test(id, courseId, username) VALUES(1, 'b', 'queen');
INSERT multiple_primary_key_test(id, courseId, username) VALUES(2, 'a', 'Princess');


-- 创建表auto_increment_test
CREATE TABLE auto_increment_test(
    id INT UNSIGNED KEY AUTO_INCREMENT,
    username VARCHAR(20)
);

INSERT auto_increment_test(username) VALUES('a');
INSERT auto_increment_test(username) VALUES('b');
INSERT auto_increment_test(username) VALUES('c');
-- 插入NULL或DEFAULT将继续自增长,但不能输入空
INSERT auto_increment_test(id, username) VALUES(NULL, 'd');
INSERT auto_increment_test(id, username) VALUES(DEFAULT, 'e');
-- INSERT auto_increment_test(id, username) VALUES('', 'd');
-- 自增长可以手动指定值
INSERT auto_increment_test(id, username) VALUES(15, 'f');
