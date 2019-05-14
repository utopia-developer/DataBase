-- 创建表other, 测试NOT NULL; UNIQUE KEY; DEFAULT
CREATE TABLE other_test(
    username VARCHAR(20) UNIQUE,
    gander ENUM('男', '女', '保密') DEFAULT '保密',
    age TINYINT NOT NULL
);

INSERT other_test(username, age) VALUES('a', 17);
-- UNIQUE KEY约束的字段的值不能重复, NULL除外
-- INSERT other_test(username, age) VALUES('a', 18);
INSERT other_test(username, gander, age) VALUES(NULL, '男', 18);
INSERT other_test(username, age) VALUES(NULL, 19);