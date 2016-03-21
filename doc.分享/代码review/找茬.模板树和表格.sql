/* 模板相关表*/
DROP TABLE IF EXISTS `t_model_tree`;
CREATE TABLE `t_model_tree` (
  `model_tree_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `node_name` varchar(200) default null COMMENT '节点名字或表格名字',
  `model_tree_pid` varchar(50)  COMMENT '父ID',
  `model_tree_no` varchar(50)  COMMENT '专业省份，和t_industry.inid相互对应',
  `create_date` timestamp NULL  ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_date_str` varchar(20)  COMMENT '创建时间字符类型',
  `is_del` bit(1)  COMMENT '是否删除，0表示未删除，1表示已经删除',
  `xml_url` varchar(200) default null COMMENT '',
  `tree_type` int(2)  COMMENT '树类型；:1表示地标(地方标准)，2表示国标(国家标准) ',
  `node_type` int(2)  COMMENT '节点类型：0,文件夹，1，文件[表格]',
  `table_uuid` varchar(50) default null  COMMENT '模板表id，和t_model_tbles表Id对应',
  `search_tag` varchar(30)  COMMENT '搜索标签',
  `increment_insert_type` varchar(20),
  `increment_update_type` varchar(20),
  `orderby` int(19)  COMMENT '排序号，一个父节点下每个节点直接的摆放位置。',
  `root_id_time` varchar(20)  COMMENT '',
  `spareCol1` varchar(255)  COMMENT '扩展字段1',
  `spareCol2` varchar(2000)  COMMENT '扩展字段2',
  `spareCol3` varchar(2000)  COMMENT '扩展字段3',
  PRIMARY KEY (`model_tree_id`),
  KEY `index_modeltree` (`model_tree_id`) USING HASH,
  KEY `index_orderby` (`orderby`) USING BTREE
) ENGINE=InnoDB COMMENT='模板树';

DROP TABLE IF EXISTS `t_model_tables`;
CREATE TABLE `t_model_tables` (
  `model_table_id` varchar(255) NOT NULL COMMENT 'ID',
  `table_name` varchar(100)  COMMENT '模板表格名称',
  `url` varchar(200)  COMMENT 'url，暂时没用',
  `relation_tag` text COMMENT '强关联，默认选中',
  `relation_tag_usr` text COMMENT '弱关联，默认不选中；(和客户端关联表有关)',
  `version_info` text COMMENT '版本信息，叠加方式；存储所有历史版本',
  `MD5` varchar(50),
  `create_date` timestamp COMMENT '创建时间',
  `create_date_str` varchar(50) COMMENT '创建时间字符类型',
  `is_del` bit(1) COMMENT '是否删除，0表示未删除，1表示已经删除',
  `model_id` varchar(50)  COMMENT '模板树id,和t_model_tree的主键Id对应',
  `config_file_name` varchar(200) COMMENT '配置文件名，暂不使用',
  `model_version` varchar(200) COMMENT '专业省份id,和t_industry.inid相互对应，指明该节点属于那个省份下的那个行业',
  `increment_insert_type` varchar(20) COMMENT '暂不使用',
  `increment_update_type` varchar(20) COMMENT '？取值1和null',
  `proj_id` varchar(50)  COMMENT '工程id',
  `RelationTables` varchar(1000)  COMMENT '关联表格',
  `model_tree_no` varchar(50)  COMMENT '专业省份，和t_industry.inid相互对应，指明该节点属于那个省份下的那个行业',
  PRIMARY KEY (`model_table_id`),
  KEY `index_modeltable` (`model_table_id`) USING HASH
  ,CONSTRAINT model_tables_tree_id FOREIGN KEY (model_id) REFERENCES t_model_tree (model_tree_id) ON DELETE RESTRICT 
) ENGINE=InnoDB  COMMENT='模板表格，主键id+版本的最新时间，作为云存储的文件下载key';


