# DataBase

## Chapter1 MySQL基础之数据类型

* 数据库(DataBase)：按照数据结构来组织、储存和管理数据的仓库
* 常见数据库：
  * Oracle
  * DB2 - IBM
  * SQL sever - Microsoft
  * Postgre SQL - 开源
  * MySQL
* MySQL：**关系型数据库**，在WEB应用方面是最好的RDBMS(Relational DataBase Management System)
* 数据库相关术语：
  * 数据库系统(DataBase System)：DBS
    * 数据库(DataBase)：DB
    * 数据库管理系统(DataBase Management System)：DBMS
    * 应用开发工具
    * 管理员（DBA）及用户
  * SQL语言(Structured Query Language)：结构化查询语言
    * DDL：数据定义语言
    * DML：数据操作语言(增、删、改)
    * DQL：数据查询语言(查)
    * DCL：数据控制语言(相关权限)
* MySQL相关操作：
  * 配置文件：my.cnf
  * 登录MySQL：mysql -uroot -p
  * 登录的同时打开指定数据库：mysql -uroot -p -D db_name
  * 退出MySQL：exit / quit / \q
  * 命令行结束符默认为 ; 或 \g
  * \c 可以取消当前命令的执行
  * MySQL关键字使用大写，库名、表名、字段名等使用小写
  * SQL语句支持折行操作，但不能把完整的单词拆开
  * 库名、表名、字段名等不能使用MySQL的保留字，若必须使用则需要使用 `` 将其括起来
* ![1. 什么是数据库](http://utopia-markdown-img.test.upcdn.net/img/1.%20%E4%BB%80%E4%B9%88%E6%98%AF%E6%95%B0%E6%8D%AE%E5%BA%93.png)
* ![2. MySQL相关操作](http://utopia-markdown-img.test.upcdn.net/img/2.%20MySQL%E7%9B%B8%E5%85%B3%E6%93%8D%E4%BD%9C.png)
* ![3. 数据库相关操作](http://utopia-markdown-img.test.upcdn.net/img/3.%20%E6%95%B0%E6%8D%AE%E5%BA%93%E7%9B%B8%E5%85%B3%E6%93%8D%E4%BD%9C.png)
* ![4. 常用SQL语句](http://utopia-markdown-img.test.upcdn.net/img/4.%20%E5%B8%B8%E7%94%A8SQL%E8%AF%AD%E5%8F%A5.png)
* 