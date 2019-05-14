-- 在user.sql的基础上添加完整性约束条件, 创建表user_new
CREATE TABLE IF NOT EXISTS `user_new`(
    `id` INT UNSIGNED AUTO_INCREMENT KEY COMMENT '用户编号',
    `username` VARCHAR(20) NOT NULL UNIQUE COMMENT '用户名',
    `password` CHAR(32) NOT NULL COMMENT '密码',
    `email` VARCHAR(50) NOT NULL UNIQUE COMMENT '邮箱',
    `age` TINYINT UNSIGNED NOT NULL DEFAULT 18 COMMENT '年龄',
    `gander` ENUM('男', '女', '保密') NOT NULL DEFAULT '保密' COMMENT '性别',
    `tel` CHAR(11) UNIQUE NOT NULL COMMENT '电话',
    `addr` VARCHAR(50) NOT NULL DEFAULT '北京' COMMENT '地址',
    `card` CHAR(18) NOT NULL UNIQUE COMMENT '身份证号',
    `married` BOOL NOT NULL DEFAULT FALSE COMMENT '婚姻状况',
    `salary` FLOAT(9, 2) NOT NULL DEFAULT '1000000' COMMENT '薪水'
)ENGINE=INNODB DEFAULT CHARSET=UTF8;

INSERT user_new(username, password, email, tel, card) 
VALUES('a', '12345', 'abc@gmail.com', '12345678901', '123456789123456789');