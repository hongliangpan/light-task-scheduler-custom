1. 骆驼命名法，还是下划线
2./* id类型不一致，pid和id不一致，id其他表引用时时 varchar类型 */
3. 字段长度 varchar(255)
4. 非空列
5. default null  可以去掉
6. 主键不需要key
7. 同一个字段，不同表不同名 table_uuid
8.字段大小写 不一致 `MD5`
9. tables 改为table 
10. id列 名称列 简称
11.version_info 改为 versions
12.没有注释，所有的注释都是我补充的
13. 
不用简写 project is_del,除非超过长度
`proj_id` varchar(50)  COMMENT '工程id',
`pro_id` varchar(50)  COMMENT '工程id',

14. 有
createdate   create_date createdate_str n种写法



15 .model_tree_no
a名称，做b用途，命名


推荐 代码整洁之道