/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50620
Source Host           : 127.0.0.1:3306
Source Database       : lts

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-03-04 19:13:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lts_admin_job_tracker_monitor_data
-- ----------------------------
DROP TABLE IF EXISTS `lts_admin_job_tracker_monitor_data`;
CREATE TABLE `lts_admin_job_tracker_monitor_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_created` bigint(20) DEFAULT NULL,
  `identity` varchar(64) DEFAULT NULL,
  `receive_job_num` bigint(20) DEFAULT NULL,
  `push_job_num` bigint(20) DEFAULT NULL,
  `exe_success_num` bigint(20) DEFAULT NULL,
  `exe_failed_num` bigint(11) DEFAULT NULL,
  `exe_later_num` bigint(20) DEFAULT NULL,
  `exe_exception_num` bigint(20) DEFAULT NULL,
  `fix_executing_job_num` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_job_tracker_monitor_timestamp` (`timestamp`),
  KEY `idx_job_tracker_monitor_identity` (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lts_admin_job_tracker_monitor_data
-- ----------------------------

-- ----------------------------
-- Table structure for lts_admin_jvm_gc
-- ----------------------------
DROP TABLE IF EXISTS `lts_admin_jvm_gc`;
CREATE TABLE `lts_admin_jvm_gc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_created` bigint(20) DEFAULT NULL,
  `identity` varchar(64) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `node_type` varchar(32) DEFAULT NULL,
  `node_group` varchar(32) DEFAULT NULL,
  `young_gc_collection_count` bigint(20) DEFAULT NULL,
  `young_gc_collection_time` bigint(20) DEFAULT NULL,
  `full_gc_collection_count` bigint(20) DEFAULT NULL,
  `full_gc_collection_time` bigint(20) DEFAULT NULL,
  `span_young_gc_collection_count` bigint(20) DEFAULT NULL,
  `span_young_gc_collection_time` bigint(20) DEFAULT NULL,
  `span_full_gc_collection_count` bigint(20) DEFAULT NULL,
  `span_full_gc_collection_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jvm_gc_identity` (`identity`),
  KEY `idx_jvm_gc_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lts_admin_jvm_gc
-- ----------------------------

-- ----------------------------
-- Table structure for lts_admin_jvm_info
-- ----------------------------
DROP TABLE IF EXISTS `lts_admin_jvm_info`;
CREATE TABLE `lts_admin_jvm_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_created` bigint(20) DEFAULT NULL,
  `identity` varchar(64) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `node_type` varchar(32) DEFAULT NULL,
  `node_group` varchar(32) DEFAULT NULL,
  `jvm_info` text,
  PRIMARY KEY (`id`),
  KEY `idx_jvm_info_identity` (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lts_admin_jvm_info
-- ----------------------------

-- ----------------------------
-- Table structure for lts_admin_jvm_memory
-- ----------------------------
DROP TABLE IF EXISTS `lts_admin_jvm_memory`;
CREATE TABLE `lts_admin_jvm_memory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_created` bigint(20) DEFAULT NULL,
  `identity` varchar(64) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `node_type` varchar(32) DEFAULT NULL,
  `node_group` varchar(32) DEFAULT NULL,
  `heap_memory_committed` bigint(20) DEFAULT NULL,
  `heap_memory_init` bigint(20) DEFAULT NULL,
  `heap_memory_max` bigint(20) DEFAULT NULL,
  `heap_memory_used` bigint(20) DEFAULT NULL,
  `non_heap_memory_committed` bigint(20) DEFAULT NULL,
  `non_heap_memory_init` bigint(20) DEFAULT NULL,
  `non_heap_memory_max` bigint(20) DEFAULT NULL,
  `non_heap_memory_used` bigint(20) DEFAULT NULL,
  `perm_gen_committed` bigint(20) DEFAULT NULL,
  `perm_gen_init` bigint(20) DEFAULT NULL,
  `perm_gen_max` bigint(20) DEFAULT NULL,
  `perm_gen_used` bigint(20) DEFAULT NULL,
  `old_gen_committed` bigint(20) DEFAULT NULL,
  `old_gen_init` bigint(20) DEFAULT NULL,
  `old_gen_max` bigint(20) DEFAULT NULL,
  `old_gen_used` bigint(20) DEFAULT NULL,
  `eden_space_committed` bigint(20) DEFAULT NULL,
  `eden_space_init` bigint(20) DEFAULT NULL,
  `eden_space_max` bigint(20) DEFAULT NULL,
  `eden_space_used` bigint(20) DEFAULT NULL,
  `survivor_committed` bigint(20) DEFAULT NULL,
  `survivor_init` bigint(20) DEFAULT NULL,
  `survivor_max` bigint(20) DEFAULT NULL,
  `survivor_used` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jvm_memory_identity` (`identity`),
  KEY `idx_jvm_memory_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lts_admin_jvm_memory
-- ----------------------------

-- ----------------------------
-- Table structure for lts_admin_jvm_thread
-- ----------------------------
DROP TABLE IF EXISTS `lts_admin_jvm_thread`;
CREATE TABLE `lts_admin_jvm_thread` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_created` bigint(20) DEFAULT NULL,
  `identity` varchar(64) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `node_type` varchar(32) DEFAULT NULL,
  `node_group` varchar(32) DEFAULT NULL,
  `daemon_thread_count` int(11) DEFAULT NULL,
  `thread_count` int(11) DEFAULT NULL,
  `total_started_thread_count` bigint(20) DEFAULT NULL,
  `dead_locked_thread_count` int(11) DEFAULT NULL,
  `process_cpu_time_rate` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jvm_thread_identity` (`identity`),
  KEY `idx_jvm_thread_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lts_admin_jvm_thread
-- ----------------------------

-- ----------------------------
-- Table structure for lts_admin_node_onoffline_log
-- ----------------------------
DROP TABLE IF EXISTS `lts_admin_node_onoffline_log`;
CREATE TABLE `lts_admin_node_onoffline_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` timestamp NULL DEFAULT NULL,
  `event` varchar(32) DEFAULT NULL,
  `node_type` varchar(16) DEFAULT NULL,
  `cluster_name` varchar(64) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `host_name` varchar(64) DEFAULT NULL,
  `group` varchar(64) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `threads` int(11) DEFAULT NULL,
  `identity` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_node_onoffline_log_log_time` (`log_time`),
  KEY `idx_node_onoffline_log_event` (`event`),
  KEY `idx_node_onoffline_log_identity` (`identity`),
  KEY `idx_node_onoffline_log_group` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lts_admin_node_onoffline_log
-- ----------------------------
INSERT INTO `lts_admin_node_onoffline_log` VALUES ('1', '2016-03-04 15:45:20', 'ONLINE', 'JOB_TRACKER', 'uba_cluster', '192.168.79.47', '3502', 'wangjm-a-pc2015', 'lts', '1457077518767', '8', '8ABD9A0BBDCA4D90B122AA563BB14466');
INSERT INTO `lts_admin_node_onoffline_log` VALUES ('2', '2016-03-04 15:45:25', 'ONLINE', 'JOB_CLIENT', 'uba_cluster', '192.168.79.47', '0', 'wangjm-a-pc2015', 'uba_taskTrackerclient', '1457077524006', '8', '35238A59460449F1AB77E8F6F81411C4');
INSERT INTO `lts_admin_node_onoffline_log` VALUES ('3', '2016-03-04 15:45:28', 'ONLINE', 'TASK_TRACKER', 'uba_cluster', '192.168.79.47', '0', 'wangjm-a-pc2015', 'uba_taskTracker', '1457077527657', '10', 'BBCB2035FC494AE192CEE620D8E19613');
INSERT INTO `lts_admin_node_onoffline_log` VALUES ('4', '2016-03-04 18:44:23', 'OFFLINE', 'JOB_CLIENT', 'uba_cluster', '192.168.79.47', '0', 'wangjm-a-pc2015', 'uba_taskTrackerclient', '1457077524006', '8', '35238A59460449F1AB77E8F6F81411C4');
INSERT INTO `lts_admin_node_onoffline_log` VALUES ('5', '2016-03-04 18:44:25', 'OFFLINE', 'TASK_TRACKER', 'uba_cluster', '192.168.79.47', '0', 'wangjm-a-pc2015', 'uba_taskTracker', '1457077527657', '10', 'BBCB2035FC494AE192CEE620D8E19613');

-- ----------------------------
-- Table structure for lts_admin_task_tracker_monitor_data
-- ----------------------------
DROP TABLE IF EXISTS `lts_admin_task_tracker_monitor_data`;
CREATE TABLE `lts_admin_task_tracker_monitor_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_created` bigint(20) DEFAULT NULL,
  `node_group` varchar(64) DEFAULT NULL,
  `identity` varchar(64) DEFAULT NULL,
  `exe_success_num` bigint(20) DEFAULT NULL,
  `exe_failed_num` bigint(11) DEFAULT NULL,
  `exe_later_num` bigint(20) DEFAULT NULL,
  `exe_exception_num` bigint(20) DEFAULT NULL,
  `total_running_time` bigint(20) DEFAULT NULL,
  `fail_store_size` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_task_tracker_monitor_timestamp` (`timestamp`),
  KEY `idx_task_tracker_monitor_identity` (`identity`),
  KEY `idx_task_tracker_monitor_node_group` (`node_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lts_admin_task_tracker_monitor_data
-- ----------------------------

-- ----------------------------
-- Table structure for lts_cron_job_queue
-- ----------------------------
DROP TABLE IF EXISTS `lts_cron_job_queue`;
CREATE TABLE `lts_cron_job_queue` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID,与业务无关的',
  `job_id` varchar(32) DEFAULT NULL COMMENT '作业ID,程序生成的',
  `priority` int(11) DEFAULT NULL COMMENT '优先级,(数值越大,优先级越低)',
  `retry_times` int(11) DEFAULT '0' COMMENT '重试次数',
  `task_id` varchar(64) DEFAULT NULL COMMENT '任务ID,客户端传过来的任务ID',
  `gmt_created` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` bigint(11) DEFAULT NULL COMMENT '修改时间',
  `submit_node_group` varchar(64) DEFAULT NULL COMMENT '提交节点组,提交客户端的节点组',
  `task_tracker_node_group` varchar(64) DEFAULT NULL COMMENT '执行节点组,执行job的任务节点',
  `ext_params` text COMMENT '用户参数 JSON',
  `is_running` tinyint(1) DEFAULT NULL COMMENT '是否正在执行',
  `task_tracker_identity` varchar(64) DEFAULT NULL COMMENT 'taskTrackerId,执行的taskTracker的唯一标识',
  `need_feedback` tinyint(4) DEFAULT NULL COMMENT '反馈客户端,是否需要反馈给客户端',
  `cron_expression` varchar(128) DEFAULT NULL COMMENT 'Cron表达式,执行时间表达式 (和 quartz 表达式一样)',
  `trigger_time` bigint(20) DEFAULT NULL COMMENT '下一次执行时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_job_id` (`job_id`),
  UNIQUE KEY `idx_taskId_taskTrackerNodeGroup` (`task_id`,`task_tracker_node_group`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Cron任务';

-- ----------------------------
-- Records of lts_cron_job_queue
-- ----------------------------
INSERT INTO `lts_cron_job_queue` VALUES ('1', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', '0', 'gaq_function_infos', '1457077524829', '1457077524829', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('2', '3C4529A598C1B567F1823002A1FC5D2D', '100', '0', 'gaq_start_infos', '1457077525588', '1457077525588', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('3', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', '0', 'gaq_stop_infos', '1457077525742', '1457077525742', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('4', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', '0', 'gaq_version_changes', '1457077525835', '1457077525835', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('5', '0FB78FECF77DED38064E2C506DFCF515', '100', '0', 'gzl_function_infos', '1457077526006', '1457077526006', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('6', '1D338592135DB08FC8E237D3D5B4A6C0', '100', '0', 'gzl_start_infos', '1457077526168', '1457077526168', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('7', '79068100412E53963A998EDE7298BEA9', '100', '0', 'gzl_stop_infos', '1457077526302', '1457077526302', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('8', '237360137101DDEC028C9CC6B0FCDC80', '100', '0', 'gzl_version_changes', '1457077526395', '1457077526395', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('9', '9087675BC261D1797DECE49D041E48E1', '100', '0', 'gmj_function_infos', '1457077526494', '1457077526494', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('10', '3A111F671CFF78E2A1DAA7354D453322', '100', '0', 'gmj_start_infos', '1457077526585', '1457077526585', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('11', '97199390D5F346EC91779D5490BC73C5', '100', '0', 'gmj_stop_infos', '1457077526676', '1457077526676', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('12', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', '0', 'gmj_version_changes', '1457077526770', '1457077526770', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('13', '661882C388DE58C94CB1A9A2D56FF0AB', '100', '0', 'gfyc_function_infos', '1457077526863', '1457077526863', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('14', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', '0', 'gfyc_start_infos', '1457077526962', '1457077526962', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('15', '272ED2554EC56932A75727195187CCC5', '100', '0', 'gfyc_stop_infos', '1457077527056', '1457077527056', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('16', '4F725E9D12F7CA620E271119F8E7742C', '100', '0', 'gfyc_version_changes', '1457077527153', '1457077527153', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('17', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', '0', 'gbcb_function_infos', '1457077527286', '1457077527286', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('18', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', '0', 'gbcb_start_infos', '1457077527377', '1457077527377', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('19', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', '0', 'gbcb_stop_infos', '1457077527476', '1457077527476', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);
INSERT INTO `lts_cron_job_queue` VALUES ('20', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', '0', 'gbcb_version_changes', '1457077527566', '1457077527566', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', null);

-- ----------------------------
-- Table structure for lts_executable_job_queue_uba_tasktracker
-- ----------------------------
DROP TABLE IF EXISTS `lts_executable_job_queue_uba_tasktracker`;
CREATE TABLE `lts_executable_job_queue_uba_tasktracker` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID,与业务无关的',
  `job_id` varchar(32) DEFAULT NULL COMMENT '作业ID,程序生成的',
  `priority` int(11) DEFAULT NULL COMMENT '优先级,(数值越大,优先级越低)',
  `retry_times` int(11) DEFAULT '0' COMMENT '重试次数',
  `task_id` varchar(64) DEFAULT NULL COMMENT '任务ID,客户端传过来的任务ID',
  `gmt_created` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` bigint(11) DEFAULT NULL COMMENT '修改时间',
  `submit_node_group` varchar(64) DEFAULT NULL COMMENT '提交节点组,提交客户端的节点组',
  `task_tracker_node_group` varchar(64) DEFAULT NULL COMMENT '执行节点组,执行job的任务节点',
  `ext_params` text COMMENT '用户参数 JSON',
  `is_running` tinyint(1) DEFAULT NULL COMMENT '是否正在执行',
  `task_tracker_identity` varchar(64) DEFAULT NULL COMMENT 'taskTrackerId,执行的taskTracker的唯一标识',
  `need_feedback` tinyint(4) DEFAULT NULL COMMENT '反馈客户端,是否需要反馈给客户端',
  `cron_expression` varchar(128) DEFAULT NULL COMMENT 'Cron表达式,执行时间表达式 (和 quartz 表达式一样)',
  `trigger_time` bigint(20) DEFAULT NULL COMMENT '下一次执行时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_job_id` (`job_id`),
  UNIQUE KEY `idx_taskId_taskTrackerNodeGroup` (`task_id`,`task_tracker_node_group`),
  KEY `idx_taskTrackerIdentity` (`task_tracker_identity`),
  KEY `idx_triggerTime_priority_gmtCreated` (`trigger_time`,`priority`,`gmt_created`),
  KEY `idx_isRunning` (`is_running`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='等待执行任务';

-- ----------------------------
-- Records of lts_executable_job_queue_uba_tasktracker
-- ----------------------------
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('64', '3C4529A598C1B567F1823002A1FC5D2D', '100', '0', 'gaq_start_infos', '1457085122012', '1457085122012', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('65', '3A111F671CFF78E2A1DAA7354D453322', '100', '0', 'gmj_start_infos', '1457085122415', '1457085122415', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('66', '79068100412E53963A998EDE7298BEA9', '100', '0', 'gzl_stop_infos', '1457085122939', '1457085122939', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('67', '0FB78FECF77DED38064E2C506DFCF515', '100', '0', 'gzl_function_infos', '1457085122939', '1457085122939', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('68', '9087675BC261D1797DECE49D041E48E1', '100', '0', 'gmj_function_infos', '1457085123082', '1457085123082', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('69', '237360137101DDEC028C9CC6B0FCDC80', '100', '0', 'gzl_version_changes', '1457085123433', '1457085123433', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('70', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', '0', 'gaq_stop_infos', '1457085123853', '1457085123853', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('71', '1D338592135DB08FC8E237D3D5B4A6C0', '100', '0', 'gzl_start_infos', '1457085123855', '1457085123855', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('72', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', '0', 'gbcb_stop_infos', '1457085124293', '1457085124293', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('73', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', '0', 'gaq_function_infos', '1457085124525', '1457085124525', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('74', '661882C388DE58C94CB1A9A2D56FF0AB', '100', '0', 'gfyc_function_infos', '1457085124434', '1457085124434', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('75', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', '0', 'gaq_version_changes', '1457085124915', '1457085124915', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('76', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', '0', 'gbcb_version_changes', '1457085124611', '1457085124611', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('77', '4F725E9D12F7CA620E271119F8E7742C', '100', '0', 'gfyc_version_changes', '1457085124996', '1457085124996', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('78', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', '0', 'gbcb_function_infos', '1457085124991', '1457085124991', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('79', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', '0', 'gfyc_start_infos', '1457085125160', '1457085125160', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('80', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', '0', 'gbcb_start_infos', '1457085125290', '1457085125290', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('81', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', '0', 'gmj_version_changes', '1457085125370', '1457085125370', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('82', '97199390D5F346EC91779D5490BC73C5', '100', '0', 'gmj_stop_infos', '1457085125370', '1457085125370', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');
INSERT INTO `lts_executable_job_queue_uba_tasktracker` VALUES ('83', '272ED2554EC56932A75727195187CCC5', '100', '0', 'gfyc_stop_infos', '1457085125536', '1457085125536', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', null, '0', '0 52 10-18 * * ?', '1457088720000');

-- ----------------------------
-- Table structure for lts_executing_job_queue
-- ----------------------------
DROP TABLE IF EXISTS `lts_executing_job_queue`;
CREATE TABLE `lts_executing_job_queue` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID,与业务无关的',
  `job_id` varchar(32) DEFAULT NULL COMMENT '作业ID,程序生成的',
  `priority` int(11) DEFAULT NULL COMMENT '优先级,(数值越大,优先级越低)',
  `retry_times` int(11) DEFAULT '0' COMMENT '重试次数',
  `task_id` varchar(64) DEFAULT NULL COMMENT '任务ID,客户端传过来的任务ID',
  `gmt_created` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` bigint(11) DEFAULT NULL COMMENT '修改时间',
  `submit_node_group` varchar(64) DEFAULT NULL COMMENT '提交节点组,提交客户端的节点组',
  `task_tracker_node_group` varchar(64) DEFAULT NULL COMMENT '执行节点组,执行job的任务节点',
  `ext_params` text COMMENT '用户参数 JSON',
  `is_running` tinyint(1) DEFAULT NULL COMMENT '是否正在执行',
  `task_tracker_identity` varchar(64) DEFAULT NULL COMMENT 'taskTrackerId,执行的taskTracker的唯一标识',
  `need_feedback` tinyint(4) DEFAULT NULL COMMENT '反馈客户端,是否需要反馈给客户端',
  `cron_expression` varchar(128) DEFAULT NULL COMMENT 'Cron表达式,执行时间表达式 (和 quartz 表达式一样)',
  `trigger_time` bigint(20) DEFAULT NULL COMMENT '下一次执行时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_job_id` (`job_id`),
  UNIQUE KEY `idx_taskId_taskTrackerNodeGroup` (`task_id`,`task_tracker_node_group`),
  KEY `idx_taskTrackerIdentity` (`task_tracker_identity`),
  KEY `idx_gmtCreated` (`gmt_created`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='执行中任务';

-- ----------------------------
-- Records of lts_executing_job_queue
-- ----------------------------

-- ----------------------------
-- Table structure for lts_feedback_job_queue_uba_tasktrackerclient
-- ----------------------------
DROP TABLE IF EXISTS `lts_feedback_job_queue_uba_tasktrackerclient`;
CREATE TABLE `lts_feedback_job_queue_uba_tasktrackerclient` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `gmt_created` bigint(11) DEFAULT NULL COMMENT '创建时间',
  `job_result` text COMMENT '任务执行结果,JSON',
  PRIMARY KEY (`id`),
  KEY `idex_gmt_created` (`gmt_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='作业反馈结果';

-- ----------------------------
-- Records of lts_feedback_job_queue_uba_tasktrackerclient
-- ----------------------------

-- ----------------------------
-- Table structure for lts_job_log_po
-- ----------------------------
DROP TABLE IF EXISTS `lts_job_log_po`;
CREATE TABLE `lts_job_log_po` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gmt_created` bigint(20) DEFAULT NULL COMMENT '日志创建时间',
  `log_time` bigint(20) DEFAULT NULL COMMENT '日志记录时间',
  `log_type` varchar(32) DEFAULT NULL COMMENT '日志类型',
  `success` tinyint(11) DEFAULT NULL COMMENT '成功与否',
  `msg` text COMMENT '消息',
  `code` varchar(32) DEFAULT NULL COMMENT '消息编码',
  `task_tracker_identity` varchar(64) DEFAULT NULL COMMENT '执行节点唯一标识',
  `level` varchar(32) DEFAULT NULL COMMENT '日志记录级别',
  `task_id` varchar(64) DEFAULT NULL COMMENT '客户端ID',
  `job_id` varchar(64) DEFAULT '' COMMENT '服务端生成ID',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `submit_node_group` varchar(64) DEFAULT NULL COMMENT '提交节点组',
  `task_tracker_node_group` varchar(64) DEFAULT NULL COMMENT '执行节点组',
  `ext_params` text COMMENT '用户参数',
  `need_feedback` tinyint(4) DEFAULT NULL COMMENT '是否需要反馈',
  `cron_expression` varchar(32) DEFAULT NULL COMMENT 'cron表达式',
  `trigger_time` bigint(20) DEFAULT NULL COMMENT '触发时间',
  `retry_times` int(11) DEFAULT NULL COMMENT '重试次数',
  PRIMARY KEY (`id`),
  KEY `log_time` (`log_time`),
  KEY `task_id_task_tracker_node_group` (`task_id`,`task_tracker_node_group`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COMMENT='任务日志';

-- ----------------------------
-- Records of lts_job_log_po
-- ----------------------------
INSERT INTO `lts_job_log_po` VALUES ('1', '1457077525528', '1457077525529', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gaq_function_infos', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('2', '1457077525682', '1457077525682', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gaq_start_infos', '3C4529A598C1B567F1823002A1FC5D2D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('3', '1457077525798', '1457077525798', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gaq_stop_infos', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('4', '1457077525931', '1457077525931', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gaq_version_changes', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('5', '1457077526065', '1457077526065', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gzl_function_infos', '0FB78FECF77DED38064E2C506DFCF515', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('6', '1457077526272', '1457077526272', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gzl_start_infos', '1D338592135DB08FC8E237D3D5B4A6C0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('7', '1457077526357', '1457077526357', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gzl_stop_infos', '79068100412E53963A998EDE7298BEA9', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('8', '1457077526455', '1457077526455', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gzl_version_changes', '237360137101DDEC028C9CC6B0FCDC80', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('9', '1457077526548', '1457077526548', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gmj_function_infos', '9087675BC261D1797DECE49D041E48E1', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('10', '1457077526647', '1457077526647', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gmj_start_infos', '3A111F671CFF78E2A1DAA7354D453322', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('11', '1457077526732', '1457077526732', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gmj_stop_infos', '97199390D5F346EC91779D5490BC73C5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('12', '1457077526831', '1457077526831', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gmj_version_changes', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('13', '1457077526924', '1457077526924', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gfyc_function_infos', '661882C388DE58C94CB1A9A2D56FF0AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('14', '1457077527022', '1457077527022', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gfyc_start_infos', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('15', '1457077527115', '1457077527115', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gfyc_stop_infos', '272ED2554EC56932A75727195187CCC5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('16', '1457077527256', '1457077527256', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gfyc_version_changes', '4F725E9D12F7CA620E271119F8E7742C', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('17', '1457077527340', '1457077527340', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gbcb_function_infos', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('18', '1457077527439', '1457077527439', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gbcb_start_infos', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('19', '1457077527532', '1457077527532', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gbcb_stop_infos', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('20', '1457077527622', '1457077527622', 'RECEIVE', '1', '添加任务成功.', null, null, 'INFO', 'gbcb_version_changes', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('21', '1457077921270', '1457077921270', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_function_infos', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('22', '1457077921503', '1457077921503', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_start_infos', '3C4529A598C1B567F1823002A1FC5D2D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('23', '1457077921618', '1457077921618', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_stop_infos', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('24', '1457077921850', '1457077921850', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_version_changes', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('25', '1457077922006', '1457077922006', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_function_infos', '0FB78FECF77DED38064E2C506DFCF515', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('26', '1457077922335', '1457077922335', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_start_infos', '1D338592135DB08FC8E237D3D5B4A6C0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('27', '1457077922397', '1457077922397', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_stop_infos', '79068100412E53963A998EDE7298BEA9', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('28', '1457077922829', '1457077922829', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_version_changes', '237360137101DDEC028C9CC6B0FCDC80', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('29', '1457077922892', '1457077922892', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_function_infos', '9087675BC261D1797DECE49D041E48E1', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('30', '1457077923194', '1457077923194', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_start_infos', '3A111F671CFF78E2A1DAA7354D453322', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('31', '1457077924424', '1457077924408', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_start_infos', '3C4529A598C1B567F1823002A1FC5D2D', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('32', '1457077924425', '1457077924408', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_function_infos', '0FB78FECF77DED38064E2C506DFCF515', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('33', '1457077924425', '1457077924408', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_function_infos', '9087675BC261D1797DECE49D041E48E1', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('34', '1457077924425', '1457077924409', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_start_infos', '1D338592135DB08FC8E237D3D5B4A6C0', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('35', '1457077924439', '1457077924409', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_start_infos', '3A111F671CFF78E2A1DAA7354D453322', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('36', '1457077924440', '1457077924408', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_start_infos', '3C4529A598C1B567F1823002A1FC5D2D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('37', '1457077924440', '1457077924408', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_function_infos', '0FB78FECF77DED38064E2C506DFCF515', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('38', '1457077924440', '1457077924409', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_stop_infos', '79068100412E53963A998EDE7298BEA9', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('39', '1457077924441', '1457077924409', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_start_infos', '3A111F671CFF78E2A1DAA7354D453322', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('40', '1457077924441', '1457077924409', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_stop_infos', '79068100412E53963A998EDE7298BEA9', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('41', '1457077924441', '1457077924409', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_version_changes', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('42', '1457077924441', '1457077924409', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_version_changes', '237360137101DDEC028C9CC6B0FCDC80', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('43', '1457077924441', '1457077924408', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_function_infos', '9087675BC261D1797DECE49D041E48E1', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('44', '1457077924442', '1457077924409', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_function_infos', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('45', '1457077924442', '1457077924409', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_version_changes', '237360137101DDEC028C9CC6B0FCDC80', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('46', '1457077924442', '1457077924410', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_stop_infos', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('47', '1457077924442', '1457077924410', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_stop_infos', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('48', '1457077924442', '1457077924409', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_start_infos', '1D338592135DB08FC8E237D3D5B4A6C0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('49', '1457077924441', '1457077924409', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_version_changes', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('50', '1457077924442', '1457077924409', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_function_infos', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('51', '1457077924949', '1457077924949', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_function_infos', '661882C388DE58C94CB1A9A2D56FF0AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('52', '1457077924992', '1457077924992', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_stop_infos', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('53', '1457077924992', '1457077924992', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_version_changes', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('54', '1457077924992', '1457077924992', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_start_infos', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('55', '1457077924992', '1457077924992', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_version_changes', '4F725E9D12F7CA620E271119F8E7742C', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('56', '1457077924992', '1457077924992', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_function_infos', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('57', '1457077925024', '1457077925024', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_start_infos', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('58', '1457077925024', '1457077925024', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_stop_infos', '272ED2554EC56932A75727195187CCC5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('59', '1457077925034', '1457077925033', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_function_infos', '661882C388DE58C94CB1A9A2D56FF0AB', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('60', '1457077925035', '1457077925034', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_function_infos', '661882C388DE58C94CB1A9A2D56FF0AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('61', '1457077925059', '1457077925059', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_version_changes', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('62', '1457077925059', '1457077925057', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_stop_infos', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('63', '1457077925059', '1457077925057', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_stop_infos', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('64', '1457077925066', '1457077925059', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_version_changes', '4F725E9D12F7CA620E271119F8E7742C', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('65', '1457077925067', '1457077925061', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_start_infos', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('66', '1457077925066', '1457077925059', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_version_changes', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('67', '1457077925067', '1457077925059', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_version_changes', '4F725E9D12F7CA620E271119F8E7742C', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('68', '1457077925071', '1457077925070', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_function_infos', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('69', '1457077925067', '1457077925061', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_start_infos', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('70', '1457077925072', '1457077925070', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_function_infos', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('71', '1457077925101', '1457077925099', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_stop_infos', '272ED2554EC56932A75727195187CCC5', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('72', '1457077925101', '1457077925099', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_start_infos', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('73', '1457077925101', '1457077925099', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_start_infos', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('74', '1457077925102', '1457077925099', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_stop_infos', '272ED2554EC56932A75727195187CCC5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('75', '1457077925398', '1457077925398', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_stop_infos', '97199390D5F346EC91779D5490BC73C5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('76', '1457077925409', '1457077925407', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_stop_infos', '97199390D5F346EC91779D5490BC73C5', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('77', '1457077925410', '1457077925407', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_stop_infos', '97199390D5F346EC91779D5490BC73C5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('78', '1457077925424', '1457077925424', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_version_changes', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('79', '1457077925492', '1457077925491', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_version_changes', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('80', '1457077925493', '1457077925491', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_version_changes', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457077920000', '0');
INSERT INTO `lts_job_log_po` VALUES ('81', '1457081520868', '1457081520868', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_start_infos', '3C4529A598C1B567F1823002A1FC5D2D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('82', '1457081520872', '1457081520871', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_start_infos', '3C4529A598C1B567F1823002A1FC5D2D', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('83', '1457081520873', '1457081520871', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_start_infos', '3C4529A598C1B567F1823002A1FC5D2D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('84', '1457081521512', '1457081521512', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_start_infos', '3A111F671CFF78E2A1DAA7354D453322', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('85', '1457081521522', '1457081521520', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_start_infos', '3A111F671CFF78E2A1DAA7354D453322', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('86', '1457081521523', '1457081521520', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_start_infos', '3A111F671CFF78E2A1DAA7354D453322', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('87', '1457081521992', '1457081521992', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_stop_infos', '79068100412E53963A998EDE7298BEA9', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('88', '1457081522061', '1457081522061', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_function_infos', '9087675BC261D1797DECE49D041E48E1', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('89', '1457081522063', '1457081522062', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_function_infos', '9087675BC261D1797DECE49D041E48E1', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('90', '1457081522064', '1457081522062', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_function_infos', '9087675BC261D1797DECE49D041E48E1', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('91', '1457081522140', '1457081522139', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_stop_infos', '79068100412E53963A998EDE7298BEA9', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('92', '1457081522141', '1457081522139', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_stop_infos', '79068100412E53963A998EDE7298BEA9', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('93', '1457081522294', '1457081522294', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_function_infos', '0FB78FECF77DED38064E2C506DFCF515', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('94', '1457081522300', '1457081522299', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_function_infos', '0FB78FECF77DED38064E2C506DFCF515', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('95', '1457081522300', '1457081522299', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_function_infos', '0FB78FECF77DED38064E2C506DFCF515', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('96', '1457081522655', '1457081522655', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_stop_infos', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('97', '1457081522721', '1457081522721', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_version_changes', '237360137101DDEC028C9CC6B0FCDC80', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('98', '1457081522730', '1457081522729', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_version_changes', '237360137101DDEC028C9CC6B0FCDC80', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('99', '1457081522731', '1457081522729', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_version_changes', '237360137101DDEC028C9CC6B0FCDC80', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('100', '1457081522815', '1457081522812', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_stop_infos', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('101', '1457081522814', '1457081522812', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_stop_infos', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('102', '1457081523043', '1457081523043', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_version_changes', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('103', '1457081522958', '1457081522958', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_start_infos', '1D338592135DB08FC8E237D3D5B4A6C0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('104', '1457081522963', '1457081522962', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_start_infos', '1D338592135DB08FC8E237D3D5B4A6C0', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('105', '1457081522963', '1457081522962', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_start_infos', '1D338592135DB08FC8E237D3D5B4A6C0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('106', '1457081523173', '1457081523173', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_stop_infos', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('107', '1457081523177', '1457081523177', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_function_infos', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('108', '1457081523185', '1457081523184', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_function_infos', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('109', '1457081523344', '1457081523344', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_function_infos', '661882C388DE58C94CB1A9A2D56FF0AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('110', '1457081523187', '1457081523184', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_function_infos', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('111', '1457081523271', '1457081523269', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_version_changes', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('112', '1457081523272', '1457081523270', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_version_changes', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('113', '1457081523354', '1457081523353', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_stop_infos', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('114', '1457081523442', '1457081523442', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_version_changes', '4F725E9D12F7CA620E271119F8E7742C', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('115', '1457081523446', '1457081523445', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_version_changes', '4F725E9D12F7CA620E271119F8E7742C', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('116', '1457081523354', '1457081523353', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_stop_infos', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('117', '1457081523447', '1457081523445', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_version_changes', '4F725E9D12F7CA620E271119F8E7742C', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('118', '1457081523499', '1457081523497', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_function_infos', '661882C388DE58C94CB1A9A2D56FF0AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('119', '1457081524172', '1457081524172', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_function_infos', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('120', '1457081524096', '1457081524096', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_version_changes', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('121', '1457081524104', '1457081524102', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_version_changes', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('122', '1457081524393', '1457081524393', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_start_infos', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('123', '1457081523498', '1457081523497', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_function_infos', '661882C388DE58C94CB1A9A2D56FF0AB', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('124', '1457081524340', '1457081524339', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_function_infos', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('125', '1457081524341', '1457081524339', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_function_infos', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('126', '1457081524237', '1457081524237', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_start_infos', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('127', '1457081524103', '1457081524102', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_version_changes', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('128', '1457081524502', '1457081524501', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_stop_infos', '97199390D5F346EC91779D5490BC73C5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('129', '1457081524502', '1457081524501', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_stop_infos', '97199390D5F346EC91779D5490BC73C5', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('130', '1457081524587', '1457081524586', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_start_infos', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('131', '1457081524494', '1457081524494', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_stop_infos', '97199390D5F346EC91779D5490BC73C5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('132', '1457081524244', '1457081524242', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_start_infos', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('133', '1457081524917', '1457081524917', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_version_changes', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('134', '1457081524243', '1457081524242', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_start_infos', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('135', '1457081524588', '1457081524586', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_start_infos', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('136', '1457081525068', '1457081525067', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_version_changes', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('137', '1457081525068', '1457081525067', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_version_changes', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('138', '1457081525688', '1457081525688', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_stop_infos', '272ED2554EC56932A75727195187CCC5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('139', '1457081525806', '1457081525804', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_stop_infos', '272ED2554EC56932A75727195187CCC5', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('140', '1457081525808', '1457081525804', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_stop_infos', '272ED2554EC56932A75727195187CCC5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457081520000', '0');
INSERT INTO `lts_job_log_po` VALUES ('141', '1457085121737', '1457085121737', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_start_infos', '3C4529A598C1B567F1823002A1FC5D2D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('142', '1457085121746', '1457085121745', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_start_infos', '3C4529A598C1B567F1823002A1FC5D2D', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('143', '1457085121746', '1457085121745', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_start_infos', '3C4529A598C1B567F1823002A1FC5D2D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('144', '1457085122240', '1457085122240', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_start_infos', '3A111F671CFF78E2A1DAA7354D453322', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('145', '1457085122248', '1457085122246', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_start_infos', '3A111F671CFF78E2A1DAA7354D453322', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('146', '1457085122249', '1457085122246', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_start_infos', '3A111F671CFF78E2A1DAA7354D453322', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('147', '1457085122725', '1457085122725', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_function_infos', '9087675BC261D1797DECE49D041E48E1', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('148', '1457085122806', '1457085122806', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_stop_infos', '79068100412E53963A998EDE7298BEA9', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('149', '1457085122806', '1457085122806', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_function_infos', '0FB78FECF77DED38064E2C506DFCF515', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('150', '1457085122810', '1457085122809', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_function_infos', '0FB78FECF77DED38064E2C506DFCF515', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('151', '1457085122810', '1457085122809', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_stop_infos', '79068100412E53963A998EDE7298BEA9', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('152', '1457085122811', '1457085122809', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_function_infos', '0FB78FECF77DED38064E2C506DFCF515', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('153', '1457085122811', '1457085122809', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_stop_infos', '79068100412E53963A998EDE7298BEA9', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('154', '1457085122897', '1457085122896', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_function_infos', '9087675BC261D1797DECE49D041E48E1', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('155', '1457085122899', '1457085122896', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_function_infos', '9087675BC261D1797DECE49D041E48E1', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('156', '1457085123080', '1457085123080', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_version_changes', '237360137101DDEC028C9CC6B0FCDC80', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('157', '1457085123262', '1457085123261', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_version_changes', '237360137101DDEC028C9CC6B0FCDC80', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('158', '1457085123263', '1457085123262', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_version_changes', '237360137101DDEC028C9CC6B0FCDC80', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('159', '1457085123439', '1457085123439', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_start_infos', '1D338592135DB08FC8E237D3D5B4A6C0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('160', '1457085123439', '1457085123439', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_stop_infos', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('161', '1457085123446', '1457085123445', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_start_infos', '1D338592135DB08FC8E237D3D5B4A6C0', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('162', '1457085123447', '1457085123445', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gzl_start_infos', '1D338592135DB08FC8E237D3D5B4A6C0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gzl\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('163', '1457085123448', '1457085123446', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_stop_infos', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('164', '1457085123448', '1457085123446', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_stop_infos', '1A2C55EC8831F75A0F8B3246256A2D9D', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('165', '1457085123851', '1457085123851', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_version_changes', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('166', '1457085123734', '1457085123734', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_function_infos', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('167', '1457085123992', '1457085123992', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_version_changes', '4F725E9D12F7CA620E271119F8E7742C', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('168', '1457085124005', '1457085124004', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_version_changes', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('169', '1457085124006', '1457085124004', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_version_changes', '3E3E79BD91BBE30438ECFCAEB6FF8B1A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('170', '1457085124005', '1457085124004', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_function_infos', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('171', '1457085124057', '1457085124057', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_stop_infos', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('172', '1457085124062', '1457085124061', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_stop_infos', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('173', '1457085124062', '1457085124061', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_stop_infos', '8ACA6E74F50A3EF25E2AE38A8C697B0B', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('174', '1457085124137', '1457085124137', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_version_changes', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('175', '1457085124139', '1457085124139', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_function_infos', '661882C388DE58C94CB1A9A2D56FF0AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('176', '1457085124291', '1457085124291', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_function_infos', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('177', '1457085124149', '1457085124147', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_function_infos', '661882C388DE58C94CB1A9A2D56FF0AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('178', '1457085124148', '1457085124147', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_function_infos', '661882C388DE58C94CB1A9A2D56FF0AB', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('179', '1457085124007', '1457085124004', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gaq_function_infos', 'B9B9845F37231CFF3332E73CA5AF08AB', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gaq\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('180', '1457085124145', '1457085124144', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_version_changes', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('181', '1457085124145', '1457085124144', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_version_changes', '4F725E9D12F7CA620E271119F8E7742C', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('182', '1457085124145', '1457085124144', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_version_changes', '22C21FAE8AF3C4600287BAF91ACFFFED', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('183', '1457085124147', '1457085124144', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_version_changes', '4F725E9D12F7CA620E271119F8E7742C', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('184', '1457085124456', '1457085124454', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_function_infos', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('185', '1457085124458', '1457085124454', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_function_infos', 'E7C58D7740A9D7A4DAD678E49ED54C87', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"function_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('186', '1457085124786', '1457085124786', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_start_infos', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('187', '1457085124697', '1457085124697', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_stop_infos', '97199390D5F346EC91779D5490BC73C5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('188', '1457085124795', '1457085124794', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_start_infos', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('189', '1457085124796', '1457085124794', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_start_infos', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('190', '1457085124788', '1457085124788', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_start_infos', '0AEF50B250DD12D75C9E6C8FF495C37A', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('191', '1457085124996', '1457085124996', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_version_changes', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('192', '1457085125002', '1457085125001', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_start_infos', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('193', '1457085125002', '1457085125001', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_version_changes', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('194', '1457085125082', '1457085125081', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_stop_infos', '97199390D5F346EC91779D5490BC73C5', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('195', '1457085125003', '1457085125001', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gbcb_start_infos', 'D34FCC3C96C2A7E865B2A0EF8D1C7994', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gbcb\",\"type\":\"start_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('196', '1457085125083', '1457085125081', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_stop_infos', '97199390D5F346EC91779D5490BC73C5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('197', '1457085125003', '1457085125001', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gmj_version_changes', 'BA8C12FEB21B9CABB371A57FA356D4A0', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gmj\",\"type\":\"version_changes\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('198', '1457085125162', '1457085125162', 'SENT', '1', null, null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_stop_infos', '272ED2554EC56932A75727195187CCC5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');
INSERT INTO `lts_job_log_po` VALUES ('199', '1457085125176', '1457085125173', 'BIZ', '1', '任务完成:{\"action\":\"EXECUTE_SUCCESS\",\"msg\":\"执行成功了，哈哈\"}', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_stop_infos', '272ED2554EC56932A75727195187CCC5', '100', null, 'uba_taskTracker', null, '1', null, null, '0');
INSERT INTO `lts_job_log_po` VALUES ('200', '1457085125179', '1457085125173', 'FINISHED', '1', '执行成功了，哈哈', null, 'BBCB2035FC494AE192CEE620D8E19613', 'INFO', 'gfyc_stop_infos', '272ED2554EC56932A75727195187CCC5', '100', 'uba_taskTrackerclient', 'uba_taskTracker', '{\"product\":\"gfyc\",\"type\":\"stop_infos\",\"size\":\"300\"}', '0', '0 52 10-18 * * ?', '1457085120000', '0');

-- ----------------------------
-- Table structure for lts_node
-- ----------------------------
DROP TABLE IF EXISTS `lts_node`;
CREATE TABLE `lts_node` (
  `identity` varchar(32) NOT NULL DEFAULT '' COMMENT 'ID',
  `available` tinyint(4) DEFAULT NULL COMMENT '可用状态',
  `clusterName` varchar(64) DEFAULT NULL COMMENT '集群',
  `nodeType` varchar(64) DEFAULT NULL COMMENT '节点类型',
  `ip` varchar(16) DEFAULT NULL COMMENT 'IP地址',
  `port` int(11) DEFAULT NULL COMMENT '端口',
  `nodeGroup` varchar(64) DEFAULT NULL COMMENT '节点组',
  `createTime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `threads` int(11) DEFAULT NULL COMMENT '线程数',
  `hostName` varchar(64) DEFAULT NULL COMMENT '主机名',
  `commandPort` int(11) DEFAULT NULL COMMENT '命令端口',
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='节点';

-- ----------------------------
-- Records of lts_node
-- ----------------------------

-- ----------------------------
-- Table structure for lts_node_group_store
-- ----------------------------
DROP TABLE IF EXISTS `lts_node_group_store`;
CREATE TABLE `lts_node_group_store` (
  `node_type` varchar(16) NOT NULL DEFAULT '' COMMENT '节点类型',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名字',
  `gmt_created` bigint(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`node_type`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='节点组';

-- ----------------------------
-- Records of lts_node_group_store
-- ----------------------------
INSERT INTO `lts_node_group_store` VALUES ('JOB_CLIENT', 'uba_taskTrackerclient', '1457077525489');
INSERT INTO `lts_node_group_store` VALUES ('TASK_TRACKER', 'uba_taskTracker', '1457077528118');
