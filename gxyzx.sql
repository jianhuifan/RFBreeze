/*
MySQL Data Transfer
Source Host: localhost
Source Database: gxyzx
Target Host: localhost
Target Database: gxyzx
Date: 2013/12/28 22:14:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `account` varchar(20) NOT NULL default '',
  `password` varchar(40) NOT NULL,
  `name` varchar(20) default NULL,
  `email` varchar(20) default NULL,
  `role` varchar(100) default NULL,
  PRIMARY KEY  (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cmsmetadata
-- ----------------------------
DROP TABLE IF EXISTS `cmsmetadata`;
CREATE TABLE `cmsmetadata` (
  `cid` int(11) NOT NULL auto_increment,
  `dataDesc` varchar(20480) default NULL,
  `alias` varchar(128) NOT NULL,
  `tableName` varchar(128) default NULL,
  `displayName` varchar(128) default NULL,
  `parentAlias` varchar(128) default NULL,
  `dataRefresh` varchar(128) default NULL,
  `dataOwner` varchar(64) default NULL,
  `opertime` bigint(20) default NULL,
  `nodeid` int(11) default NULL,
  `dataOwnerSet` varchar(128) default NULL,
  PRIMARY KEY  (`cid`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wg_action
-- ----------------------------
DROP TABLE IF EXISTS `wg_action`;
CREATE TABLE `wg_action` (
  `paramJson` varchar(1024) default NULL,
  `alias` varchar(128) default NULL,
  `actionName` varchar(40) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `serviceName` varchar(40) default NULL,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wg_channelclass
-- ----------------------------
DROP TABLE IF EXISTS `wg_channelclass`;
CREATE TABLE `wg_channelclass` (
  `alias` varchar(128) default NULL,
  `displayName` varchar(256) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wg_cmsconfig
-- ----------------------------
DROP TABLE IF EXISTS `wg_cmsconfig`;
CREATE TABLE `wg_cmsconfig` (
  `alias` varchar(128) default NULL,
  `name` varchar(40) default NULL,
  `value` varchar(128) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wg_cmsview
-- ----------------------------
DROP TABLE IF EXISTS `wg_cmsview`;
CREATE TABLE `wg_cmsview` (
  `alias` varchar(128) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  `templateid` int(11) default NULL,
  `keyname` varchar(256) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wg_cmsviewtemplate
-- ----------------------------
DROP TABLE IF EXISTS `wg_cmsviewtemplate`;
CREATE TABLE `wg_cmsviewtemplate` (
  `templateimg` varchar(256) default NULL,
  `alias` varchar(128) default NULL,
  `name` varchar(40) default NULL,
  `templateurl` varchar(256) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wg_leftmenu
-- ----------------------------
DROP TABLE IF EXISTS `wg_leftmenu`;
CREATE TABLE `wg_leftmenu` (
  `alias` varchar(128) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  `menuUrl` varchar(250) default NULL,
  `displayName` varchar(40) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wg_roles
-- ----------------------------
DROP TABLE IF EXISTS `wg_roles`;
CREATE TABLE `wg_roles` (
  `alias` varchar(128) default NULL,
  `name` varchar(256) default NULL,
  `displayName` varchar(256) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wg_rolesaction
-- ----------------------------
DROP TABLE IF EXISTS `wg_rolesaction`;
CREATE TABLE `wg_rolesaction` (
  `alias` varchar(128) default NULL,
  `actionCid` int(11) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=518 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wg_statusaction
-- ----------------------------
DROP TABLE IF EXISTS `wg_statusaction`;
CREATE TABLE `wg_statusaction` (
  `alias` varchar(128) default NULL,
  `actionName` varchar(256) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `serviceName` varchar(256) default NULL,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  `nextStatusCid` varchar(256) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wg_statusinfo
-- ----------------------------
DROP TABLE IF EXISTS `wg_statusinfo`;
CREATE TABLE `wg_statusinfo` (
  `alias` varchar(128) default NULL,
  `statusName` varchar(256) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `statusAlias` varchar(256) default NULL,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yzx_batchoutlog
-- ----------------------------
DROP TABLE IF EXISTS `yzx_batchoutlog`;
CREATE TABLE `yzx_batchoutlog` (
  `alias` varchar(128) default NULL,
  `dlscid` int(11) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  `remark` varchar(256) default NULL,
  `money` int(11) default NULL,
  `batchouttime` bigint(20) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yzx_dls
-- ----------------------------
DROP TABLE IF EXISTS `yzx_dls`;
CREATE TABLE `yzx_dls` (
  `alias` varchar(128) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `nodeid` int(11) default NULL,
  `dataOwner` varchar(64) default NULL,
  `name` varchar(256) default NULL,
  `opertime` bigint(20) default NULL,
  `mgrpercent` int(11) default NULL,
  `scorestotle` int(11) default NULL,
  `account` varchar(256) default NULL,
  `password` varchar(256) default NULL,
  `scoresmonth` int(11) default NULL,
  `levelcid` int(11) default NULL,
  `remid` int(11) default NULL,
  `address` varchar(256) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yzx_level
-- ----------------------------
DROP TABLE IF EXISTS `yzx_level`;
CREATE TABLE `yzx_level` (
  `nextpercent` int(11) default NULL,
  `mgrpercent` int(11) default NULL,
  `level` varchar(256) default NULL,
  `alias` varchar(128) default NULL,
  `selfpercent` int(11) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for yzx_scoreslog
-- ----------------------------
DROP TABLE IF EXISTS `yzx_scoreslog`;
CREATE TABLE `yzx_scoreslog` (
  `percent` varchar(256) default NULL,
  `scores` int(11) default NULL,
  `alias` varchar(128) default NULL,
  `name` varchar(256) default NULL,
  `money` int(11) default NULL,
  `type` varchar(256) default NULL,
  `opertime` bigint(20) default NULL,
  `cid` int(11) NOT NULL auto_increment,
  `dataOwner` varchar(64) default NULL,
  `nodeid` int(11) default NULL,
  `batchoutcid` int(11) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- View structure for wg_cmsview_view
-- ----------------------------
DROP VIEW IF EXISTS `wg_cmsview_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wg_cmsview_view` AS select `cmsview`.`alias` AS `alias`,`cmsviewtemplate`.`cid` AS `templateid`,`cmsview`.`keyname` AS `keyname`,`cmsview`.`opertime` AS `opertime`,`cmsview`.`cid` AS `cid`,`cmsviewtemplate`.`templateimg` AS `tmpurl`,`cmsviewtemplate`.`templateurl` AS `tmpname`,`cmsview`.`dataOwner` AS `dataOwner`,`cmsview`.`nodeid` AS `nodeid` from (`wg_cmsview` `cmsview` left join `wg_cmsviewtemplate` `cmsviewtemplate` on((`cmsview`.`templateid` = `cmsviewtemplate`.`cid`)));

-- ----------------------------
-- View structure for wg_rolesaction_view
-- ----------------------------
DROP VIEW IF EXISTS `wg_rolesaction_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wg_rolesaction_view` AS select `rolesaction`.`alias` AS `alias`,`action`.`cid` AS `actionCid`,`rolesaction`.`opertime` AS `opertime`,`rolesaction`.`cid` AS `cid`,`action`.`actionName` AS `actionDisplayName`,`rolesaction`.`dataOwner` AS `dataOwner`,`rolesaction`.`nodeid` AS `nodeid` from (`wg_rolesaction` `rolesAction` left join `wg_action` `action` on((`rolesaction`.`actionCid` = `action`.`cid`)));

-- ----------------------------
-- View structure for wg_statusaction_view
-- ----------------------------
DROP VIEW IF EXISTS `wg_statusaction_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wg_statusaction_view` AS select `statusinfo`.`statusName` AS `nextStatusName`,`statusaction`.`alias` AS `alias`,`statusaction`.`actionName` AS `actionName`,`statusinfo`.`cid` AS `nextStatusCid`,`statusaction`.`opertime` AS `opertime`,`statusaction`.`cid` AS `cid`,`statusaction`.`serviceName` AS `serviceName`,`statusaction`.`dataOwner` AS `dataOwner`,`statusaction`.`nodeid` AS `nodeid` from (`wg_statusaction` `statusaction` left join `wg_statusinfo` `statusinfo` on((`statusaction`.`nextStatusCid` = `statusinfo`.`cid`)));

-- ----------------------------
-- View structure for yzx_batchoutlog_view
-- ----------------------------
DROP VIEW IF EXISTS `yzx_batchoutlog_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `yzx_batchoutlog_view` AS select `dls`.`level` AS `level`,`batchoutlog`.`remark` AS `remark`,`batchoutlog`.`alias` AS `alias`,`dls`.`name` AS `name`,`dls`.`cid` AS `dlscid`,`batchoutlog`.`money` AS `money`,`batchoutlog`.`batchouttime` AS `batchouttime`,`batchoutlog`.`opertime` AS `opertime`,`batchoutlog`.`cid` AS `cid`,`batchoutlog`.`dataOwner` AS `dataOwner`,`batchoutlog`.`nodeid` AS `nodeid` from (`yzx_batchoutlog` `batchoutlog` left join `yzx_dls_view` `dls` on((`batchoutlog`.`dlscid` = `dls`.`cid`)));

-- ----------------------------
-- View structure for yzx_dls_view
-- ----------------------------
DROP VIEW IF EXISTS `yzx_dls_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `yzx_dls_view` AS select `dllevel`.`mgrpercent` AS `mgrpercent`,`dls`.`scorestotle` AS `scorestotle`,`dls`.`alias` AS `alias`,`dllevel`.`selfpercent` AS `selfpercent`,`dls`.`cid` AS `cid`,`dls`.`password` AS `password`,`dls`.`scoresmonth` AS `scoresmonth`,`dls`.`nodeid` AS `nodeid`,`dls`.`dataOwner` AS `dataOwner`,`dllevel`.`cid` AS `levelcid`,`dllevel`.`nextpercent` AS `nextpercent`,`vdls`.`cid` AS `remid`,`dllevel`.`level` AS `level`,`dls`.`address` AS `address`,`vdls`.`name` AS `remname`,`dls`.`name` AS `name`,`dls`.`account` AS `account`,`dls`.`opertime` AS `opertime` from ((`yzx_dls` `dls` left join `yzx_level` `dllevel` on((`dls`.`levelcid` = `dllevel`.`cid`))) left join `yzx_dls` `vdls` on((`dls`.`remid` = `vdls`.`cid`)));

-- ----------------------------
-- Procedure structure for createRoles
-- ----------------------------
DROP PROCEDURE IF EXISTS `createRoles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createRoles`(in p_leader varchar(100) ,in p_alias varchar(100) ,in p_actionOperate varchar(7) ,in ifAddNode int)
BEGIN
        declare i int;
        DECLARE p_count INT;
        declare p_action_cid int;
        DECLARE p_roles_cid INT;
        declare p_displayName varchar(50);
        declare p_parentAlias varchar(50);
        declare p_actionOperateNum varchar(10);

        select cid into p_roles_cid from `wg_roles` where name = p_leader;
	select displayName into p_displayName FROM cmsmetadata WHERE alias = p_alias;/*获取模型名称*/
	select parentAlias into p_parentAlias from cmsmetadata where alias = p_alias;/*获取挂接的alias*/
/* 表权限补全 */
	select count(*) into p_count from `wg_action` where 'cms.addContent' IN (SELECT serviceName FROM wg_action WHERE paramJson LIKE CONCAT('{alias:"',p_alias,'"}'));
	if p_count=0  then
	    insert into wg_action(paramJson,alias,actionName,serviceName) values(CONCAT('{alias:"',p_alias,'"}'),'action',CONCAT('新增',p_displayName),'cms.addContent');
	end if;

	SELECT COUNT(*) INTO p_count FROM `wg_action` WHERE 'cms.deleteContent' IN (SELECT serviceName FROM wg_action WHERE paramJson LIKE CONCAT('{alias:"',p_alias,'"}'));
	IF p_count=0  THEN
	    INSERT INTO wg_action(paramJson,alias,actionName,serviceName) VALUES(CONCAT('{alias:"',p_alias,'"}'),'action',CONCAT('删除',p_displayName),'cms.deleteContent');
	end if;

	SELECT COUNT(*) INTO p_count FROM `wg_action` WHERE 'cms.modifyContent' IN (SELECT serviceName FROM wg_action WHERE paramJson LIKE CONCAT('{alias:"',p_alias,'"}'));
	IF p_count=0  THEN
	    INSERT INTO wg_action(paramJson,alias,actionName,serviceName) VALUES(CONCAT('{alias:"',p_alias,'"}'),'action',CONCAT('修改',p_displayName),'cms.modifyContent');
	end if;

	SELECT COUNT(*) INTO p_count FROM `wg_action` WHERE 'cms.queryContent' IN (SELECT serviceName FROM wg_action WHERE paramJson LIKE CONCAT('{alias:"',p_alias,'"}'));
	IF p_count=0  THEN
	    INSERT INTO wg_action(paramJson,alias,actionName,serviceName) VALUES(CONCAT('{alias:"',p_alias,'"}'),'action',concat('查询',p_displayName),'cms.queryContent');
	end if;
	/*判断是否添加节点操作权限*/
	IF ifAddNode = 1 then
	    SELECT COUNT(*) INTO p_count FROM `wg_action` WHERE 'cms.addNode' IN (SELECT serviceName FROM wg_action WHERE paramJson LIKE CONCAT('{alias:"',p_alias,'"}'));
	    IF p_count=0  THEN
		INSERT INTO wg_action(paramJson,alias,actionName,serviceName) VALUES(CONCAT('{alias:"',p_alias,'"}'),'action',CONCAT('新增',p_displayName,'节点'),'cms.addNode');
	    end if;

	    SELECT COUNT(*) INTO p_count FROM `wg_action` WHERE 'cms.deleteNode' IN (SELECT serviceName FROM wg_action WHERE paramJson LIKE CONCAT('{alias:"',p_alias,'"}'));
	    IF p_count=0  THEN
		INSERT INTO wg_action(paramJson,alias,actionName,serviceName) VALUES(CONCAT('{alias:"',p_alias,'"}'),'action',CONCAT('删除',p_displayName,'节点'),'cms.deleteNode');
	    END IF;

	    SELECT COUNT(*) INTO p_count FROM `wg_action` WHERE 'cms.modifyNode' IN (SELECT serviceName FROM wg_action WHERE paramJson LIKE CONCAT('{alias:"',p_alias,'"}'));
	    IF p_count=0  THEN
		INSERT INTO wg_action(paramJson,alias,actionName,serviceName) VALUES(CONCAT('{alias:"',p_alias,'"}'),'action',CONCAT('修改',p_displayName,'节点'),'cms.modifyNode');
	    END IF;
	end if;

/* 角色权限添加 */
	/*暴力清除权限*/
	delete from `wg_rolesaction` where nodeid = p_roles_cid and actionCid in (select cid from `wg_action` where paramJson like CONCAT('{alias:"',p_alias,'"}'));
	set p_actionOperateNum = substring(p_actionOperate,1,1);
	if p_actionOperateNum = '1' then
	    select cid into p_action_cid from `wg_action` where serviceName = 'cms.addContent' and paramJson like CONCAT('{alias:"',p_alias,'"}');
	    insert into wg_rolesaction(alias,actionCid,nodeid) values('rolesAction',p_action_cid,p_roles_cid);
	end if;

	SET p_actionOperateNum = SUBSTRING(p_actionOperate,2,1);
	IF p_actionOperateNum = '1' THEN
	    SELECT cid INTO p_action_cid FROM `wg_action` WHERE serviceName = 'cms.deleteContent' AND paramJson LIKE CONCAT('{alias:"',p_alias,'"}');
	    INSERT INTO wg_rolesaction(alias,actionCid,nodeid) VALUES('rolesAction',p_action_cid,p_roles_cid);
	END IF;

	SET p_actionOperateNum = SUBSTRING(p_actionOperate,3,1);
	IF p_actionOperateNum = '1' THEN
	    SELECT cid INTO p_action_cid FROM `wg_action` WHERE serviceName = 'cms.modifyContent' AND paramJson LIKE CONCAT('{alias:"',p_alias,'"}');
	    INSERT INTO wg_rolesaction(alias,actionCid,nodeid) VALUES('rolesAction',p_action_cid,p_roles_cid);
	END IF;

	SET p_actionOperateNum = SUBSTRING(p_actionOperate,4,1);
	IF p_actionOperateNum = '1' THEN
	    SELECT cid INTO p_action_cid FROM `wg_action` WHERE serviceName = 'cms.queryContent' AND paramJson LIKE CONCAT('{alias:"',p_alias,'"}');
	    INSERT INTO wg_rolesaction(alias,actionCid,nodeid) VALUES('rolesAction',p_action_cid,p_roles_cid);
	END IF;

	/*判断是否添加节点操作权限*/
	IF ifAddNode = 1 THEN
		SET p_actionOperateNum = SUBSTRING(p_actionOperate,5,1);
		IF p_actionOperateNum = '1' THEN
		    SELECT cid INTO p_action_cid FROM `wg_action` WHERE serviceName = 'cms.addNode' AND paramJson LIKE CONCAT('{alias:"',p_alias,'"}');
		    INSERT INTO wg_rolesaction(alias,actionCid,nodeid) VALUES('rolesAction',p_action_cid,p_roles_cid);
		END IF;

		SET p_actionOperateNum = SUBSTRING(p_actionOperate,6,1);
		IF p_actionOperateNum = '1' THEN
		    SELECT cid INTO p_action_cid FROM `wg_action` WHERE serviceName = 'cms.deleteNode' AND paramJson LIKE CONCAT('{alias:"',p_alias,'"}');
		    INSERT INTO wg_rolesaction(alias,actionCid,nodeid) VALUES('rolesAction',p_action_cid,p_roles_cid);
		END IF;

		SET p_actionOperateNum = SUBSTRING(p_actionOperate,7,1);
		IF p_actionOperateNum = '1' THEN
		    SELECT cid INTO p_action_cid FROM `wg_action` WHERE serviceName = 'cms.modifyNode' AND paramJson LIKE CONCAT('{alias:"',p_alias,'"}');
		    INSERT INTO wg_rolesaction(alias,actionCid,nodeid) VALUES('rolesAction',p_action_cid,p_roles_cid);
		END IF;
	end if;
    END;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for insertCardByNumber
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertCardByNumber`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCardByNumber`(in p_cardType int,in p_cardBatch varchar(100) ,
in p_cardNumber int,in p_validDate LONG,in p_money varchar(100))
BEGIN
	declare i int;
  set i=0;
	WHILE i<p_cardNumber DO
		SET i=i+1;
		INSERT INTO wg_chargecard (cardType,cardBatch,validDate,cardId,`password`,`money`) values 
		(p_cardType,p_cardBatch,p_validDate,CONCAT(p_cardBatch,i),ROUND(ROUND(RAND(),5)*100000000),p_money); 
		
	END WHILE;
END;;
DELIMITER ;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `adminuser` VALUES ('admin', 'dedcd0d685a85a58bc76b5f1b57fe03c', 'admin', '', 'adminManager');
INSERT INTO `cmsmetadata` VALUES ('1', '{\"tableName\":{\"title\":\"表名\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"128\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"1\",\"order\":\"50\"},\"displayName\":{\"title\":\"模型名称\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"128\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"parentAlias\":{\"title\":\"挂接模型\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"128\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"dataRefresh\":{\"title\":\"数据刷新\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"128\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"dataDesc\":{\"title\":\"数据描述\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"20480\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"50\"},\"dataOwnerSet\":{\"title\":\"数据权限设置\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"128\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"dataOwner\":{\"title\":\"数据所有者\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"128\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"}}', 'channel', 'cmsmetadata', '数据模型', 'channelClass', '', '', null, '3', '');
INSERT INTO `cmsmetadata` VALUES ('2', '{\"displayName\":{\"title\":\"分类名称\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"}}', 'channelClass', 'wg_channelclass', '模型分类', '', '', '', null, '3', '');
INSERT INTO `cmsmetadata` VALUES ('3', '{\"name\":{\"title\":\"参数名\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"40\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"value\":{\"title\":\"参数值\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"128\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"}}', 'cmsconfig', 'wg_cmsconfig', 'cms系统配置', '', '', '', '1384485152128', '1', '');
INSERT INTO `cmsmetadata` VALUES ('4', '{\"keyname\":{\"title\":\"视图类型\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"40\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"列表页为list，详情页为detail\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"templateid\":{\"title\":\"模板索引\",\"type\":\"OuterLink\",\"fieldType\":\"int\",\"ourterLink\":\"cmsviewtemplate.cid\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"50\"},\"tmpname\":{\"title\":\"模板地址\",\"type\":\"ReadOnly\",\"fieldType\":\"ourterField\",\"ourterLink\":\"cmsviewtemplate.templateurl\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"tmpurl\":{\"title\":\"模板视图\",\"type\":\"File\",\"fieldType\":\"ourterField\",\"ourterLink\":\"cmsviewtemplate.templateimg\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"}}', 'cmsview', 'wg_cmsview', 'CMS视图配置', 'channel', '', '', null, '1', '');
INSERT INTO `cmsmetadata` VALUES ('5', '{\"name\":{\"title\":\"模板名称\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"40\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"templateurl\":{\"title\":\"模板地址\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"256\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"templateimg\":{\"title\":\"模板图片\",\"type\":\"File\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"256\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"}}', 'cmsviewtemplate', 'wg_cmsviewtemplate', '视图模板', '', '', '', null, '1', '');
INSERT INTO `cmsmetadata` VALUES ('6', '{\"actionName\":{\"title\":\"权限名称\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"40\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"1\"},\"serviceName\":{\"title\":\"服务名称\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"40\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"2\"},\"paramJson\":{\"title\":\"权限参数\",\"type\":\"TextArea\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"1024\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"3\"}}', 'action', 'wg_action', '权限定义', '', '', '', null, null, '');
INSERT INTO `cmsmetadata` VALUES ('7', '{\"actionCid\":{\"title\":\"权限ID\",\"type\":\"OuterLink\",\"fieldType\":\"int\",\"ourterLink\":\"action.cid\",\"fieldLen\":\"11\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"\"},\"actionDisplayName\":{\"title\":\"角色名称\",\"type\":\"ReadOnly\",\"fieldType\":\"ourterField\",\"ourterLink\":\"action.actionName\",\"fieldLen\":\"256\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"}}', 'rolesAction', 'wg_rolesaction', '角色权限', 'roles', '', '', null, null, '');
INSERT INTO `cmsmetadata` VALUES ('8', '{\"displayName\":{\"title\":\"角色名称\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"256\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"1\"},\"name\":{\"title\":\"角色标识\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"256\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"2\"}}', 'roles', 'wg_roles', '角色定义', '', '', '', null, null, '');
INSERT INTO `cmsmetadata` VALUES ('9', '{\"statusAlias\":{\"title\":\"状态别名\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"statusName\":{\"title\":\"状态名称\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"}}', 'statusinfo', 'wg_statusinfo', '状态信息', '', '', '', null, '1', '');
INSERT INTO `cmsmetadata` VALUES ('10', '{\"actionName\":{\"title\":\"动作名称\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"serviceName\":{\"title\":\"服务名称\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"},\"nextStatusCid\":{\"title\":\"选择下一状态\",\"type\":\"OuterLink\",\"fieldType\":\"varchar\",\"ourterLink\":\"statusinfo.cid\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"50\"},\"nextStatusName\":{\"title\":\"下一状态名称\",\"type\":\"ReadOnly\",\"fieldType\":\"ourterField\",\"ourterLink\":\"statusinfo.statusName\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"50\"}}', 'statusaction', 'wg_statusaction', '状态动作', 'statusinfo', '', '', null, '1', '');
INSERT INTO `cmsmetadata` VALUES ('12', '{\"name\":{\"title\":\"真实姓名\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":[{\"checkers\":\"\\\\S+\",\"failTips\":\"姓名不能为空哦\"}],\"desc\":\"必填，真实姓名，必填\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"1\"},\"account\":{\"title\":\"手机号码\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":[{\"checkers\":\"\\\\S+\",\"failTips\":\"手机号码不能为空或已存在\"}],\"desc\":\"必填，手机号码即查看积分登陆账号\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"2\"},\"password\":{\"title\":\"登陆密码\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":[{\"checkers\":\"\\\\S+\",\"failTips\":\"请设置查看积分密码\"}],\"desc\":\"必填，查看积分密码\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"3\"},\"scorestotle\":{\"title\":\"历史积分\",\"type\":\"Text\",\"fieldType\":\"int\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"4\"},\"scoresmonth\":{\"title\":\"可用积分\",\"type\":\"Text\",\"fieldType\":\"int\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"5\"},\"levelcid\":{\"title\":\"选择代理级别\",\"type\":\"OuterLink\",\"fieldType\":\"int\",\"ourterLink\":\"dllevel.cid\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":[{\"checkers\":\"\\\\S+\",\"failTips\":\"请选择代理级别\"}],\"desc\":\"必填，设置代理级别\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"6\"},\"level\":{\"title\":\"代理级别\",\"type\":\"ReadOnly\",\"fieldType\":\"ourterField\",\"ourterLink\":\"dllevel.level\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"7\"},\"selfpercent\":{\"title\":\"进货积分(%)\",\"type\":\"ReadOnly\",\"fieldType\":\"ourterField\",\"ourterLink\":\"dllevel.selfpercent\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"8\"},\"nextpercent\":{\"title\":\"下级积分(%)\",\"type\":\"ReadOnly\",\"fieldType\":\"ourterField\",\"ourterLink\":\"dllevel.nextpercent\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"9\"},\"mgrpercent\":{\"title\":\"下辖积分(%)\",\"type\":\"ReadOnly\",\"fieldType\":\"int\",\"ourterLink\":\"dllevel.mgrpercent\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"10\"},\"address\":{\"title\":\"所属地区\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"代理商所属地区\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"11\"},\"remid\":{\"title\":\"推荐人\",\"type\":\"OuterLink\",\"fieldType\":\"int\",\"ourterLink\":\"vdls.cid\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"12\"},\"remname\":{\"title\":\"推荐人姓名\",\"type\":\"ReadOnly\",\"fieldType\":\"ourterField\",\"ourterLink\":\"vdls.name\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"13\"}}', 'dls', 'yzx_dls', '代理商', '', '', '', null, '2', '');
INSERT INTO `cmsmetadata` VALUES ('18', '{\"name\":{\"title\":\"真实姓名\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"1\"}}', 'vdls', 'yzx_dls', '虚拟代理商', '', '', null, null, null, '');
INSERT INTO `cmsmetadata` VALUES ('19', '{\"name\":{\"title\":\"姓名\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"},\"money\":{\"title\":\"进货金额\",\"type\":\"Text\",\"fieldType\":\"int\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"元\",\"width\":\"60px\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"},\"type\":{\"title\":\"积分类型\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"80px\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"},\"percent\":{\"title\":\"积分比重(%)\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"%\",\"width\":\"60px\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"},\"scores\":{\"title\":\"积分数\",\"type\":\"Text\",\"fieldType\":\"int\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"分\",\"width\":\"60px\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"},\"opertime\":{\"title\":\"积分日期\",\"type\":\"DatePicker\",\"fieldType\":\"bigint\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"},\"batchoutcid\":{\"title\":\"进货记录cid\",\"type\":\"Hidden\",\"fieldType\":\"int\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"}}', 'scoreslog', 'yzx_scoreslog', '积分记录', 'dls', '', null, null, '2', '');
INSERT INTO `cmsmetadata` VALUES ('20', '{\"dlscid\":{\"title\":\"选择代理商\",\"type\":\"OuterLink\",\"fieldType\":\"int\",\"ourterLink\":\"dls.cid\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":[{\"checkers\":\"\\\\S+\",\"failTips\":\"请选择代理商\"}],\"desc\":\"必填\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"1\"},\"name\":{\"title\":\"代理商姓名\",\"type\":\"ReadOnly\",\"fieldType\":\"ourterField\",\"ourterLink\":\"dls.name\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"2\"},\"level\":{\"title\":\"代理商级别\",\"type\":\"ReadOnly\",\"fieldType\":\"ourterField\",\"ourterLink\":\"dls.level\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"100px\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"3\"},\"money\":{\"title\":\"进货金额\",\"type\":\"Text\",\"fieldType\":\"int\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":[{\"checkers\":\"^[1-9]{1}[0-9]*$\",\"failTips\":\"请正确输入进货金额\"}],\"desc\":\"元 ，必填\",\"width\":\"60px\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"6\"},\"remark\":{\"title\":\"备注信息\",\"type\":\"TextArea\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"0\",\"issearch\":\"0\",\"order\":\"7\"},\"batchouttime\":{\"title\":\"出货时间\",\"type\":\"DatePicker\",\"fieldType\":\"bigint\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"8\"}}', 'batchoutlog', 'yzx_batchoutlog', '出货记录', '', '', null, null, '2', '');
INSERT INTO `cmsmetadata` VALUES ('21', '{\"level\":{\"title\":\"代理级别\",\"type\":\"Text\",\"fieldType\":\"varchar\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"},\"selfpercent\":{\"title\":\"进货积分(%)\",\"type\":\"Text\",\"fieldType\":\"int\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"},\"nextpercent\":{\"title\":\"下级积分(%)\",\"type\":\"Text\",\"fieldType\":\"int\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"},\"mgrpercent\":{\"title\":\"下辖积分(%)\",\"type\":\"Text\",\"fieldType\":\"int\",\"ourterLink\":\"\",\"fieldLen\":\"\",\"dataExt\":\"\",\"valueRange\":\"\",\"desc\":\"\",\"width\":\"\",\"fieldtmp\":\"\",\"islist\":\"1\",\"issearch\":\"0\",\"order\":\"\"}}', 'dllevel', 'yzx_level', '代理级别', '', '', null, null, '2', '');
INSERT INTO `wg_channelclass` VALUES ('channelClass', 'CMS', '1384385867346', '1', null, '0');
INSERT INTO `wg_channelclass` VALUES ('channelClass', '积分制度', '1386991535150', '2', null, '0');
INSERT INTO `wg_roles` VALUES ('roles', 'adminManager', '超级管理员', '1385633503874', '1', null, '0');
INSERT INTO `wg_rolesaction` VALUES ('rolesAction', '434', null, '511', null, '1');
INSERT INTO `wg_rolesaction` VALUES ('rolesAction', '435', null, '512', null, '1');
INSERT INTO `wg_rolesaction` VALUES ('rolesAction', '436', null, '513', null, '1');
INSERT INTO `wg_rolesaction` VALUES ('rolesAction', '437', null, '514', null, '1');
INSERT INTO `wg_rolesaction` VALUES ('rolesAction', '438', null, '515', null, '1');
INSERT INTO `wg_rolesaction` VALUES ('rolesAction', '439', null, '516', null, '1');
INSERT INTO `wg_rolesaction` VALUES ('rolesAction', '440', null, '517', null, '1');
INSERT INTO `wg_statusaction` VALUES ('statusaction', '支付', '1385643280112', '1', 'statusCtr.setStatusByAlias', null, '1', '2');
INSERT INTO `wg_statusaction` VALUES ('statusaction', '打单配货', '1385643321410', '2', 'statusCtr.setStatusByAlias', null, '2', '3');
INSERT INTO `wg_statusaction` VALUES ('statusaction', '物流配送', '1385643389525', '3', 'statusCtr.setStatusByAlias', null, '3', '4');
INSERT INTO `wg_statusaction` VALUES ('statusaction', '确认配送', '1385643415474', '4', 'statusCtr.setStatusByAlias', null, '4', '5');
INSERT INTO `wg_statusaction` VALUES ('statusaction', '核销检查', '1385643441071', '5', 'statusCtr.setStatusByAlias', null, '5', '6');
INSERT INTO `wg_statusaction` VALUES ('statusaction', '生成核销报表', '1385643463885', '6', 'statusCtr.setStatusByAlias', null, '6', '7');
INSERT INTO `wg_statusaction` VALUES ('statusaction', '确认套餐配送', '1385643682054', '7', 'statusCtr.setStatusByAlias', null, '4', '2');
INSERT INTO `wg_statusinfo` VALUES ('statusinfo', '初始', '1385637823419', '1', 'Order', null, '0');
INSERT INTO `wg_statusinfo` VALUES ('statusinfo', '待配货', '1385637850165', '2', 'Order', null, '0');
INSERT INTO `wg_statusinfo` VALUES ('statusinfo', '待配送', '1385637867035', '3', 'Order', null, '0');
INSERT INTO `wg_statusinfo` VALUES ('statusinfo', '配送中', '1385637880741', '4', 'Order', null, '0');
INSERT INTO `wg_statusinfo` VALUES ('statusinfo', '待核销', '1385637897715', '5', 'Order', null, '0');
INSERT INTO `wg_statusinfo` VALUES ('statusinfo', '已核销', '1385637907765', '6', 'Order', null, '0');
INSERT INTO `wg_statusinfo` VALUES ('statusinfo', '完成 ', '1385638017793', '7', 'Order', null, '0');
INSERT INTO `yzx_batchoutlog` VALUES ('batchoutlog', '4', '1387891436125', '1', null, '0', '', '3000', '1387891436125');
INSERT INTO `yzx_dls` VALUES ('dls', '1', '0', null, '李总', '1387813202092', '15', '4506', '13117716678', 'dedcd0d685a85a58bc76b5f1b57fe03c', '0', '1', '0', '');
INSERT INTO `yzx_dls` VALUES ('dls', '2', '0', null, '陈总', '1387813205257', '12', '5252', '1378888885', 'dedcd0d685a85a58bc76b5f1b57fe03c', '360', '2', '1', '');
INSERT INTO `yzx_dls` VALUES ('dls', '3', '0', null, '潘经理', '1387813208042', '10', '2978', '13788888888', 'dedcd0d685a85a58bc76b5f1b57fe03c', '600', '3', '2', '');
INSERT INTO `yzx_dls` VALUES ('dls', '4', '0', null, '王经理', '1387813210926', '15', '2355', '13888888888', '1ef523c6b645a65441a91fa80df077c1', '900', '1', '3', '');
INSERT INTO `yzx_dls` VALUES ('dls', '8', '0', null, 'alec', '1387896106155', '10', '0', '13212121212', 'da2aa52d7c55bff50b9b38928ec3f852', '0', '3', '4', null);
INSERT INTO `yzx_level` VALUES ('30', '15', '一级代理', 'dllevel', '30', '1387019882210', '1', null, null);
INSERT INTO `yzx_level` VALUES ('25', '12', '二级代理', 'dllevel', '25', '1387019882294', '2', null, null);
INSERT INTO `yzx_level` VALUES ('20', '10', '三级代理', 'dllevel', '20', '1387019882296', '3', null, null);
INSERT INTO `yzx_scoreslog` VALUES ('30', '900', 'scoreslog', '王经理', '3000', '进货积分', '1387891436000', '4', null, '4', '1');
INSERT INTO `yzx_scoreslog` VALUES ('20', '600', 'scoreslog', '潘经理', '3000', '下级积分', '1387891436000', '5', null, '3', '1');
INSERT INTO `yzx_scoreslog` VALUES ('12', '360', 'scoreslog', '陈总', '3000', '下辖积分', '1387891436000', '6', null, '2', '1');

-- ----------------------------
-- Trigger structure for trigger_statusCtr_insert
-- ----------------------------
DELIMITER ;;
CREATE TRIGGER `trigger_statusCtr_insert` AFTER INSERT ON `wg_statusaction` FOR EACH ROW BEGIN
    DECLARE maxCid varchar(20);
    DECLARE paramJson varchar(40);
    select max(cid) into maxCid from `wg_statusaction`;
    set paramJson = concat('{actionCid:' , maxCid , '}');
    insert into wg_action(paramJson,actionName,serviceName)values(paramJson,NEW.actionName,'statusCtr.setStatus');
END;;
DELIMITER ;

-- ----------------------------
-- Trigger structure for score_trigger
-- ----------------------------
DELIMITER ;;
CREATE TRIGGER `score_trigger` AFTER INSERT ON `yzx_batchoutlog` FOR EACH ROW begin 
	DECLARE _selfpercent  INT;
	DECLARE _remid  INT ;
	DECLARE _nextpercent  INT;
    DECLARE _remnodeid  INT ;
	DECLARE _mgrpercent  INT ;
	DECLARE _name VARCHAR(256);
    DECLARE _remname VARCHAR(256);
    DECLARE _mgrname VARCHAR(256);

	set _selfpercent = (select  yzx_dls_view.selfpercent from yzx_dls_view where yzx_dls_view.cid = NEW.dlscid);
	update yzx_dls set scoresmonth = scoresmonth + _selfpercent*NEW.money/100, scorestotle = scorestotle + _selfpercent*NEW.money/100 where yzx_dls.cid=NEW.dlscid;
 	set _name = (select yzx_dls.name from yzx_dls where yzx_dls.cid = NEW.dlscid);
	INSERT INTO yzx_scoreslog (name,money,type,percent,scores,nodeid,alias,opertime,batchoutcid) VALUES (_name,NEW.money,'进货积分',_selfpercent,_selfpercent*NEW.money/100,NEW.dlscid,'scoreslog',unix_timestamp(now())*1000,NEW.cid);

	set _remid = (select yzx_dls.remid from yzx_dls where yzx_dls.cid = NEW.dlscid);
	IF (_remid!='' and _remid is not null) THEN
		set _nextpercent = (select  yzx_dls_view.nextpercent from yzx_dls_view where yzx_dls_view.cid = _remid);
		update yzx_dls set scoresmonth = scoresmonth + _nextpercent*NEW.money/100, scorestotle = scorestotle + _nextpercent*NEW.money/100 where yzx_dls.cid=_remid;
 		set _remname = (select yzx_dls.name from yzx_dls where yzx_dls.cid = _remid);
    	INSERT INTO yzx_scoreslog (name,money,type,percent,scores,nodeid,alias,opertime,batchoutcid) VALUES (_remname,NEW.money,'下级积分',_nextpercent,_nextpercent*NEW.money/100, _remid,'scoreslog',unix_timestamp(now())*1000,NEW.cid);

		set _remnodeid = (select yzx_dls.remid from yzx_dls where yzx_dls.cid = _remid);
		IF (_remnodeid!='' and _remnodeid is not null) THEN
			set _mgrpercent = (select  yzx_dls_view.mgrpercent from yzx_dls_view where yzx_dls_view.cid = _remnodeid);
			update yzx_dls set scoresmonth = scoresmonth + _mgrpercent*NEW.money/100, scorestotle = scorestotle + _mgrpercent*NEW.money/100 where yzx_dls.cid=_remnodeid;
			set _mgrname = (select yzx_dls.name from yzx_dls where yzx_dls.cid = _remnodeid);
    		INSERT INTO yzx_scoreslog (name,money,type,percent,scores,nodeid,alias,opertime,batchoutcid) VALUES (_mgrname,NEW.money,'下辖积分',_mgrpercent,_mgrpercent*NEW.money/100, _remnodeid,'scoreslog',unix_timestamp(now())*1000,NEW.cid);
		END IF;
	END IF;
end;;
DELIMITER ;

-- ----------------------------
-- Trigger structure for score_trigger_edit
-- ----------------------------
DELIMITER ;;
CREATE TRIGGER `score_trigger_edit` AFTER UPDATE ON `yzx_batchoutlog` FOR EACH ROW begin 
	DECLARE _selfpercent  INT;
	DECLARE _remid  INT ;
	DECLARE _nextpercent  INT;
    DECLARE _remnodeid  INT ;
	DECLARE _mgrpercent  INT ;
	DECLARE _name VARCHAR(256);
    DECLARE _remname VARCHAR(256);
    DECLARE _mgrname VARCHAR(256);

	set _selfpercent = (select  yzx_dls_view.selfpercent from yzx_dls_view where yzx_dls_view.cid = OLD.dlscid);
	update yzx_dls set scoresmonth = scoresmonth - _selfpercent*OLD.money/100, scorestotle = scorestotle - _selfpercent*OLD.money/100 where yzx_dls.cid=OLD.dlscid;
 	DELETE FROM yzx_scoreslog WHERE yzx_scoreslog.batchoutcid = OLD.cid;

	set _selfpercent = (select  yzx_dls_view.selfpercent from yzx_dls_view where yzx_dls_view.cid = NEW.dlscid);
	update yzx_dls set scoresmonth = scoresmonth + _selfpercent*NEW.money/100, scorestotle = scorestotle + _selfpercent*NEW.money/100 where yzx_dls.cid=NEW.dlscid;
 	set _name = (select yzx_dls.name from yzx_dls where yzx_dls.cid = NEW.dlscid);
	INSERT INTO yzx_scoreslog (name,money,type,percent,scores,nodeid,alias,opertime,batchoutcid) VALUES (_name,NEW.money,'进货积分',_selfpercent,_selfpercent*NEW.money/100,NEW.dlscid,'scoreslog',unix_timestamp(now())*1000,NEW.cid);

	set _remid = (select yzx_dls.remid from yzx_dls where yzx_dls.cid = OLD.dlscid);
	IF (_remid!='' and _remid is not null) THEN
		set _nextpercent = (select  yzx_dls_view.nextpercent from yzx_dls_view where yzx_dls_view.cid = _remid);
		update yzx_dls set scoresmonth = scoresmonth - _nextpercent*OLD.money/100, scorestotle = scorestotle - _nextpercent*OLD.money/100 where yzx_dls.cid=_remid;
		set _remnodeid = (select yzx_dls.remid from yzx_dls where yzx_dls.cid = _remid);
		IF (_remnodeid!='' and _remnodeid is not null) THEN
			set _mgrpercent = (select  yzx_dls_view.mgrpercent from yzx_dls_view where yzx_dls_view.cid = _remnodeid);
			update yzx_dls set scoresmonth = scoresmonth - _mgrpercent*OLD.money/100, scorestotle = scorestotle - _mgrpercent*OLD.money/100 where yzx_dls.cid=_remnodeid;
		END IF;
	END IF;

	set _remid = (select yzx_dls.remid from yzx_dls where yzx_dls.cid = NEW.dlscid);
	IF (_remid!='' and _remid is not null) THEN
		set _nextpercent = (select  yzx_dls_view.nextpercent from yzx_dls_view where yzx_dls_view.cid = _remid);
		update yzx_dls set scoresmonth = scoresmonth + _nextpercent*NEW.money/100, scorestotle = scorestotle + _nextpercent*NEW.money/100 where yzx_dls.cid=_remid;
 		set _remname = (select yzx_dls.name from yzx_dls where yzx_dls.cid = _remid);
    	INSERT INTO yzx_scoreslog (name,money,type,percent,scores,nodeid,alias,opertime,batchoutcid) VALUES (_remname,NEW.money,'下级积分',_nextpercent,_nextpercent*NEW.money/100, _remid,'scoreslog',unix_timestamp(now())*1000,NEW.cid);

		set _remnodeid = (select yzx_dls.remid from yzx_dls where yzx_dls.cid = _remid);
		IF (_remnodeid!='' and _remnodeid is not null) THEN
			set _mgrpercent = (select  yzx_dls_view.mgrpercent from yzx_dls_view where yzx_dls_view.cid = _remnodeid);
			update yzx_dls set scoresmonth = scoresmonth + _mgrpercent*NEW.money/100, scorestotle = scorestotle + _mgrpercent*NEW.money/100 where yzx_dls.cid=_remnodeid;
			set _mgrname = (select yzx_dls.name from yzx_dls where yzx_dls.cid = _remnodeid);
    		INSERT INTO yzx_scoreslog (name,money,type,percent,scores,nodeid,alias,opertime,batchoutcid) VALUES (_mgrname,NEW.money,'下辖积分',_mgrpercent,_mgrpercent*NEW.money/100, _remnodeid,'scoreslog',unix_timestamp(now())*1000,NEW.cid);
		END IF;
	END IF;

end;;
DELIMITER ;

-- ----------------------------
-- Trigger structure for score_trigger_del
-- ----------------------------
DELIMITER ;;
CREATE TRIGGER `score_trigger_del` AFTER DELETE ON `yzx_batchoutlog` FOR EACH ROW begin 
	DECLARE _selfpercent  INT;
	DECLARE _remid  INT ;
	DECLARE _nextpercent  INT;
    DECLARE _remnodeid  INT ;
	DECLARE _mgrpercent  INT ;
	DECLARE _name VARCHAR(256);
    DECLARE _remname VARCHAR(256);
    DECLARE _mgrname VARCHAR(256);

	set _selfpercent = (select  yzx_dls_view.selfpercent from yzx_dls_view where yzx_dls_view.cid = OLD.dlscid);
	update yzx_dls set scoresmonth = scoresmonth - _selfpercent*OLD.money/100, scorestotle = scorestotle - _selfpercent*OLD.money/100 where yzx_dls.cid=OLD.dlscid;
 	DELETE FROM yzx_scoreslog WHERE yzx_scoreslog.batchoutcid = OLD.cid;

	set _remid = (select yzx_dls.remid from yzx_dls where yzx_dls.cid = OLD.dlscid);
	IF (_remid!='' and _remid is not null) THEN
		set _nextpercent = (select  yzx_dls_view.nextpercent from yzx_dls_view where yzx_dls_view.cid = _remid);
		update yzx_dls set scoresmonth = scoresmonth - _nextpercent*OLD.money/100, scorestotle = scorestotle - _nextpercent*OLD.money/100 where yzx_dls.cid=_remid;
		set _remnodeid = (select yzx_dls.remid from yzx_dls where yzx_dls.cid = _remid);
		IF (_remnodeid!='' and _remnodeid is not null) THEN
			set _mgrpercent = (select  yzx_dls_view.mgrpercent from yzx_dls_view where yzx_dls_view.cid = _remnodeid);
			update yzx_dls set scoresmonth = scoresmonth - _mgrpercent*OLD.money/100, scorestotle = scorestotle - _mgrpercent*OLD.money/100 where yzx_dls.cid=_remnodeid;
		END IF;
	END IF;
end;;
DELIMITER ;
