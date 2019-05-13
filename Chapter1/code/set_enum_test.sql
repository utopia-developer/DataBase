-- 创建表enum_test
CREATE TABLE enum_test(
    gander ENUM("男      ", "女", "保密")
);

-- 枚举类型会自动过滤空格，所以可以正常插入值 - “男”
INSERT enum_test(gander) VALUES("男");
-- 不能插入ENUM中不存在的值
INSERT enum_test(gander) VALUES("男1");
-- 完整性约束没有限定`NOT NULL`的情况下，可以插入NULL值
INSERT enum_test(gander) VALUES(NULL);
-- 可以插入序号，代表相应的值；序号从1开始
INSERT enum_test(gander) VALUES(2);
-- 查过序号范围的值会报错
INSERT enum_test(gander) VALUES(4);


-- 创建表set_test
CREATE TABLE set_test(
    a SET("A        ", "B", "C", "D", "E", "F")
);

-- 集合类型会自动过滤空格，所以可以正常插入值 - “A”
INSERT set_test(a) VALUES("A");
-- 可以插入数字，按照2^n储存，例如”A“-1，“B”-2，“C”-4，“A，C”-5等
INSERT set_test(a) VALUES(2);
INSERT set_test(a) VALUES(5);
-- 集合类型可以一次性使用多个数据
INSERT set_test(a) VALUES("A,B,C");
-- 数据会按照SET中的顺序进行重新排列
INSERT set_test(a) VALUES("F,D,A");
-- 超出SET范围的数据会报错
INSERT set_test(a) VALUES("H,Z,W");
