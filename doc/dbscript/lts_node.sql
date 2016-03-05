DROP TABLE IF EXISTS lts_node;
CREATE TABLE `lts_node` (
	`identity` VARCHAR (32) NOT NULL DEFAULT '' COMMENT 'ID',
	`available` TINYINT (4) COMMENT '可用状态',
	`clusterName` VARCHAR (64) COMMENT '集群',
	`nodeType` VARCHAR (64) COMMENT '节点类型',
	`ip` VARCHAR (16) COMMENT 'IP地址',
	`port` INT (11) COMMENT '端口',
	`nodeGroup` VARCHAR (64) COMMENT '节点组',
	`createTime` BIGINT (20) COMMENT '创建时间',
	`threads` INT (11) COMMENT '线程数',
	`hostName` VARCHAR (64) COMMENT '主机名',
	`commandPort` INT (11) COMMENT '命令端口',
	PRIMARY KEY (`identity`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '节点'