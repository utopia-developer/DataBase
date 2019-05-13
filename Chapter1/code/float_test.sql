-- 创建表float_test1
CREATE TABLE float_test1(
    a FLOAT(3, 2),
    b DOUBLE(3, 2),
    c DECIMAL(3, 2)
);

-- 都会按照标度进行四舍五入，但DECIMAL类型的数据会给出“截断”警告
INSERT float_test1(a, b, c) VALUES(1.234, 1.456, 1.678);


-- 创建表float_test2
CREATE TABLE float_test2(
    a FLOAT,
    b DOUBLE,
    c DECIMAL
);

-- 都会按照标度进行四舍五入；FLOAT类型保留小数点后5位，DOUBLE类型保留小数点后16位，DECIMAL类型只取整
INSERT float_test2(a, b, c) VALUES(1.123456, 1.1234567891234567, 1.6);