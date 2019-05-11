-- 创建表int_test
CREATE TABLE IF NOT EXISTS int_test(
    a TINYINT,
    b SMALLINT,
    c MEDIUMINT, 
    d INT,
    e BIGINT
);

-- 插入数据
INSERT int_test(a) VALUES(-128);
-- 如果超出类型的数据范围，会出现截断现象（需要关闭严格模式）
INSERT int_test(a) VALUES(-129);
INSERT int_test(a) VALUES(128);


-- 创建表unsigned_test
CREATE TABLE IF NOT EXISTS unsigned_test(
    a TINYINT,
    b TINYINT UNSIGNED
);

INSERT unsigned_test(b) VALUES(0, 0);
-- 插入数据以验证完整性约束条件unsigned（需要关闭严格模式）
INSERT unsigned_test(a, b) VALUES(-1, -1);
-- 如果超出类型的数据范围，会出现截断现象（需要关闭严格模式）
INSERT unsigned_test(b) VALUES(256);


-- 创建表zerofill_test
CREATE TABLE IF NOT EXISTS zerofill_test(
    a TINYINT ZEROFILL,
    b SMALLINT ZEROFILL,
    c MEDIUMINT ZEROFILL, 
    d INT ZEROFILL,
    e BIGINT ZEROFILL
);

-- 插入数据以验证完整性约束条件zerofill（ZEROFILL自带UNSIGNED效果）
INSERT zerofill_test(a, b, c, d, e) VALUES(1, 1, 1, 1, 1);


-- 创建表show_test
CREATE TABLE IF NOT EXISTS show_test(
    a TINYINT(2),
    b SMALLINT(2)
);

-- 超过显示长度的数据不发生截断现象
INSERT show_test(a, b) VALUES(123, 456);