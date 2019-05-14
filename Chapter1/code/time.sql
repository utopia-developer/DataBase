-- TIME类型 - HH:MM:SS ([D] HH:MM:SS), D表示天数(0~34)
-- 创建表time_test
CREATE TABLE time_test(
    a TIME
);

INSERT time_test(a) VALUES('12:34:56');
INSERT time_test(a) VALUES('2 12:34:56');
-- 特殊形式
INSERT time_test(a) VALUES('12:34');
INSERT time_test(a) VALUES('12');
INSERT time_test(a) VALUES('2 12');
INSERT time_test(a) VALUES('0');
INSERT time_test(a) VALUES(0);
--HHMMSS
INSERT time_test(a) VALUES('121212');
--调用函数插入时间
INSERT time_test(a) VALUES(NOW());
INSERT time_test(a) VALUES(CURRENT_TIME);


-- 创建表date_test
CREATE TABLE date_test(
    a DATE
);

-- YYYY-MM-DD/YYYYMMDD
INSERT date_test(a) VALUES('2019-07-04');
INSERT date_test(a) VALUES('2019-7-4');
INSERT date_test(a) VALUES('20190704');
INSERT date_test(a) VALUES('2019@07@04');
INSERT date_test(a) VALUES('2019#07#04');
INSERT date_test(a) VALUES('2019.07.04');
-- YY-MM-DD/YYMMDD - 70~99转换为1970~1999; 00~69转换为2000~2069
INSERT date_test(a) VALUES('70-07-04');
INSERT date_test(a) VALUES('69-07-04');
--调用函数插入时间
INSERT date_test(a) VALUES(NOW());
INSERT date_test(a) VALUES(CURRENT_DATE);


-- 创建表datetime_test
CREATE TABLE datetime_test(
    a DATETIME
);

INSERT datetime_test(a) VALUES('1000-01-01 00:00:00');
INSERT datetime_test(a) VALUES('99991231235959');
-- 调用函数插入DATETIME
INSERT datetime_test(a) VALUES(NOW());


-- 创建表timestamp_test
CREATE TABLE timestamp_test(
    a TIMESTAMP
);

-- TIMESTAMP自带时区
INSERT timestamp_test(a) VALUES('1970-01-01 00:00:01');
-- 调用函数插入TIMESTAMP
INSERT timestamp_test(a) VALUES(CURRENT_TIMESTAMP);
-- MySQL8中, 插入NULL或什么都不写会显示NULL,在MySQL5.6中则显示当前时间
INSERT timestamp_test(a) VALUES(NULL);
INSERT timestamp_test VALUES();


-- 创建表year_test
CREATE TABLE year_test(
    a YEAR
);

INSERT year_test(a) VALUES(1901);
INSERT year_test(a) VALUES(2155);
-- 70~99转换为1970~1999; 00~69转换为2000~2069
INSERT year_test(a) VALUES(70);
INSERT year_test(a) VALUES(01);
-- 0插入结果为0000, '0'插入结果为2000
INSERT year_test(a) VALUES(0);
INSERT year_test(a) VALUES('0');

