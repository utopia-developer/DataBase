-- 创建字符集为utf-8的数据库chapter1
CREATE DATABASE IF NOT EXISTS chapter1 DEFAULT CHARACTER SET 'UTF8';
-- 打开数据库chapter1
USE chapter1;
-- 创建字符集为utf-8，内置数据引擎的数据表user
CREATE TABLE IF NOT EXISTS user(
  id INT,
  username VARCHAR(20),
  password CHAR(32),
  gender ENUM('男','女','保密'),
  email VARCHAR(50),
  address VARCHAR(100),
  age TINYINT,
  telephone CHAR(11),
  salary FLOAT(8, 2),
  card CHAR(18),
  married TINYINT
)ENGINE=INNODB CHARSET=UTF8;
