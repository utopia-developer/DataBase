--  创建表char_test，验证CHAR和VARCHAR不同的储存方式
CREATE TABLE char_test(
    a CHAR(5),
    b VARCHAR(5)
);

INSERT char_test(a, b) VALUES('', '');
INSERT char_test(a, b) VALUES('a', 'a');
INSERT char_test(a, b) VALUES('ab', 'ab');
INSERT char_test(a, b) VALUES('abc', 'abc');
INSERT char_test(a, b) VALUES('abcd', 'abcd');
INSERT char_test(a, b) VALUES('abcde', 'abcde');
-- 超过限定的部分将发生截取（需要关闭严格模式）
INSERT char_test(a, b) VALUES('abcdef', 'abcdef');

--验证CHAR类型储存时添加空格，检索时去掉空格；VARCHAR储存时不添加空格，检索时也保留空格
INSERT char_test(a, b) VALUES(' 123 ', ' 123 ');
SELECT CONCAT('*', a, '*'), CONCAT('*', b, '*') FROM char_test;


-- 创建表text_test，验证TEXT类型不能有默认值
CREATE TABLE char_test(
    a TEXT DEFAULT "This is default content"
);