DROP TABLE IF EXISTS lts_node;
CREATE TABLE `lts_node` (
	`identity` VARCHAR (32) NOT NULL DEFAULT '' COMMENT 'ID',
	`available` TINYINT (4) COMMENT '����״̬',
	`clusterName` VARCHAR (64) COMMENT '��Ⱥ',
	`nodeType` VARCHAR (64) COMMENT '�ڵ�����',
	`ip` VARCHAR (16) COMMENT 'IP��ַ',
	`port` INT (11) COMMENT '�˿�',
	`nodeGroup` VARCHAR (64) COMMENT '�ڵ���',
	`createTime` BIGINT (20) COMMENT '����ʱ��',
	`threads` INT (11) COMMENT '�߳���',
	`hostName` VARCHAR (64) COMMENT '������',
	`commandPort` INT (11) COMMENT '����˿�',
	PRIMARY KEY (`identity`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '�ڵ�'