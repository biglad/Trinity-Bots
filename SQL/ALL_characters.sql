DROP TABLE IF EXISTS `characters_npcbot`;
CREATE TABLE `characters_npcbot` (
  `entry` int(10) unsigned NOT NULL COMMENT 'creature_template.entry',
  `owner` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'characters.guid (lowguid)',
  `roles` smallint(5) unsigned NOT NULL COMMENT 'bitmask: tank(1),dps(2),heal(4),ranged(8)',
  `faction` int(10) unsigned NOT NULL DEFAULT '35',
  `equipMhEx` int(10) unsigned NOT NULL DEFAULT '0',
  `equipOhEx` int(10) unsigned NOT NULL DEFAULT '0',
  `equipRhEx` int(10) unsigned NOT NULL DEFAULT '0',
  `equipHead` int(10) unsigned NOT NULL DEFAULT '0',
  `equipShoulders` int(10) unsigned NOT NULL DEFAULT '0',
  `equipChest` int(10) unsigned NOT NULL DEFAULT '0',
  `equipWaist` int(10) unsigned NOT NULL DEFAULT '0',
  `equipLegs` int(10) unsigned NOT NULL DEFAULT '0',
  `equipFeet` int(10) unsigned NOT NULL DEFAULT '0',
  `equipWrist` int(10) unsigned NOT NULL DEFAULT '0',
  `equipHands` int(10) unsigned NOT NULL DEFAULT '0',
  `equipBack` int(10) unsigned NOT NULL DEFAULT '0',
  `equipBody` int(10) unsigned NOT NULL DEFAULT '0',
  `equipFinger1` int(10) unsigned NOT NULL DEFAULT '0',
  `equipFinger2` int(10) unsigned NOT NULL DEFAULT '0',
  `equipTrinket1` int(10) unsigned NOT NULL DEFAULT '0',
  `equipTrinket2` int(10) unsigned NOT NULL DEFAULT '0',
  `equipNeck` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `characters_npcbot` ADD `spec` tinyint(3) unsigned NOT NULL DEFAULT '1' AFTER `roles`;
DROP TEMPORARY TABLE IF EXISTS `npcbot_extras_temp`;

CREATE TEMPORARY TABLE `npcbot_extras_temp` (
  `entry` MEDIUMINT(8) UNSIGNED NOT NULL,
  `class` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`entry`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT INTO `npcbot_extras_temp` (`entry`,`class`) VALUES
('70001','1'),('70002','1'),('70003','1'),('70004','1'),('70005','1'),
('70006','1'),('70007','1'),('70008','1'),('70009','1'),('70010','1'),
('70011','1'),('70012','1'),('70013','1'),('70014','1'),('70015','1'),
('70016','1'),('70017','1'),('70018','1'),('70019','1'),('70020','1'),
('70021','1'),('70022','1'),('70023','1'),('70024','1'),('70025','1'),
('70026','1'),('70027','1'),('70028','1'),('70029','1'),('70030','1'),
('70031','1'),('70032','1'),('70033','1'),('70034','1'),('70035','1'),
('70036','1'),('70037','1'),('70038','1'),('70051','2'),('70052','2'),
('70053','2'),('70054','2'),('70055','2'),('70056','2'),('70057','2'),
('70058','2'),('70059','2'),('70060','2'),('70061','2'),('70062','2'),
('70063','2'),('70064','2'),('70065','2'),('70066','2'),('70067','2'),
('70068','2'),('70069','2'),('70070','2'),('70071','2'),('70072','2'),
('70073','2'),('70074','2'),('70101','3'),('70102','3'),('70103','3'),
('70104','3'),('70105','3'),('70106','3'),('70107','3'),('70108','3'),
('70109','3'),('70110','3'),('70111','3'),('70112','3'),('70113','3'),
('70114','3'),('70115','3'),('70116','3'),('70117','3'),('70118','3'),
('70119','3'),('70120','3'),('70121','3'),('70122','3'),('70123','3'),
('70124','3'),('70125','3'),('70126','3'),('70127','3'),('70128','3'),
('70129','3'),('70130','3'),('70131','3'),('70132','3'),('70133','3'),
('70134','3'),('70135','3'),('70136','3'),('70137','3'),('70138','3'),
('70139','3'),('70151','4'),('70152','4'),('70153','4'),('70154','4'),
('70155','4'),('70156','4'),('70157','4'),('70158','4'),('70159','4'),
('70160','4'),('70161','4'),('70162','4'),('70163','4'),('70164','4'),
('70165','4'),('70166','4'),('70167','4'),('70168','4'),('70169','4'),
('70170','4'),('70171','4'),('70172','4'),('70173','4'),('70174','4'),
('70175','4'),('70176','4'),('70177','4'),('70178','4'),('70179','4'),
('70180','4'),('70181','4'),('70201','5'),('70202','5'),('70203','5'),
('70204','5'),('70205','5'),('70206','5'),('70207','5'),('70208','5'),
('70209','5'),('70210','5'),('70211','5'),('70212','5'),('70213','5'),
('70214','5'),('70215','5'),('70216','5'),('70217','5'),('70218','5'),
('70219','5'),('70220','5'),('70221','5'),('70222','5'),('70223','5'),
('70224','5'),('70225','5'),('70226','5'),('70227','5'),('70228','5'),
('70229','5'),('70230','5'),('70231','5'),('70232','5'),('70233','5'),
('70234','5'),('70235','5'),('70236','5'),('70237','5'),('70238','5'),
('70239','5'),('70240','5'),('70251','7'),('70252','7'),('70253','7'),
('70254','7'),('70255','7'),('70256','7'),('70257','7'),('70258','7'),
('70259','7'),('70260','7'),('70261','7'),('70265','7'),('70267','7'),
('70268','7'),('70301','8'),('70302','8'),('70303','8'),('70304','8'),
('70305','8'),('70306','8'),('70307','8'),('70308','8'),('70309','8'),
('70310','8'),('70311','8'),('70312','8'),('70313','8'),('70314','8'),
('70315','8'),('70316','8'),('70317','8'),('70318','8'),('70319','8'),
('70320','8'),('70321','8'),('70322','8'),('70323','8'),('70324','8'),
('70325','8'),('70326','8'),('70327','8'),('70328','8'),('70329','8'),
('70330','8'),('70331','8'),('70332','8'),('70333','8'),('70334','8'),
('70335','8'),('70336','8'),('70351','9'),('70352','9'),('70353','9'),
('70354','9'),('70355','9'),('70356','9'),('70357','9'),('70358','9'),
('70359','9'),('70360','9'),('70361','9'),('70362','9'),('70363','9'),
('70364','9'),('70365','9'),('70366','9'),('70367','9'),('70368','9'),
('70369','9'),('70370','9'),('70371','9'),('70372','9'),('70373','9'),
('70374','9'),('70375','9'),('70376','9'),('70377','9'),('70401','11'),
('70402','11'),('70403','11'),('70404','11'),('70405','11'),('70406','11'),
('70407','11'),('70408','11'),('70409','11'),('70410','11'),('70411','11'),
('70412','11'),('70413','11'),('70414','11'),('70415','11'),('70416','11'),
('70417','11'),('70418','11'),('70451','6'),('70452','6'),('70453','6'),
('70454','6'),('70455','6'),('70456','6'),('70457','6'),('70458','6'),
('70459','6'),('70460','6'),('70461','6'),('70462','6'),('70463','6'),
('70464','6'),('70465','6'),('70501','0'),('70502','0'),('70503','0'),
('70504','0'),('70505','0'),('70506','0'),('70507','0'),('70508','0'),
('70509','0'),('70510','0'),('70511','0'),('70512','0'),('70513','0'),
('70514','0'),('70515','0'),('70516','0'),('70517','0'),('70518','0'),
('70519','0'),('70520','0'),('70521','0'),('70522','0'),('70523','0'),
('70524','0'),('70525','0'),('70526','0'),('70527','0'),('70528','0'),
('70529','0'),('70530','0'),('70531','0'),('70532','0'),('70533','0'),
('70534','0'),('70535','0'),('70536','0'),('70537','0'),('70538','0'),
('70542','0'),('70543','0'),('70544','0'),('70545','0'),('70551','12'),
('70552','12'),('70553','13'),('70554','13'),('70555','14'),('70556','0'),
('70557','15'),('70558','15'),('70559','15'),('70560','15'),('70561','15'),
('70562','0'),('70563','16'),('70564','16'),('70565','16'),('70566','16'),
('70567','16'),('70568','17'),('70569','17'),('70570','17'),('70571','17'),
('70572','17'),('70573','0'),('70574','0');

/*!50003 DROP PROCEDURE IF EXISTS `sp__update_specs_2020_06_21`*/;

DELIMITER ;;

/*!50003 CREATE*/
/*!50003 PROCEDURE `sp__update_specs_2020_06_21`()
BEGIN

DECLARE CLASS_WARRIOR INT DEFAULT 1;
DECLARE CLASS_PALADIN INT DEFAULT 2;
DECLARE CLASS_HUNTER INT DEFAULT 3;
DECLARE CLASS_ROGUE INT DEFAULT 4;
DECLARE CLASS_PRIEST INT DEFAULT 5;
DECLARE CLASS_DEATH_KNIGHT INT DEFAULT 6;
DECLARE CLASS_SHAMAN INT DEFAULT 7;
DECLARE CLASS_MAGE INT DEFAULT 8;
DECLARE CLASS_WARLOCK INT DEFAULT 9;
DECLARE CLASS_DRUID INT DEFAULT 11;
DECLARE CLASS_BLADEMASTER INT DEFAULT 12;
DECLARE CLASS_SPHYNX INT DEFAULT 13;
DECLARE CLASS_ARCHMAGE INT DEFAULT 14;
DECLARE CLASS_DREADLORD INT DEFAULT 15;
DECLARE CLASS_SPELL_BREAKER INT DEFAULT 16;
DECLARE CLASS_DARK_RANGER INT DEFAULT 17;

DECLARE SPEC_START_WARRIOR INT DEFAULT 1;
DECLARE SPEC_START_PALADIN INT DEFAULT 4;
DECLARE SPEC_START_HUNTER INT DEFAULT 7;
DECLARE SPEC_START_ROGUE INT DEFAULT 10;
DECLARE SPEC_START_PRIEST INT DEFAULT 13;
DECLARE SPEC_START_DEATH_KNIGHT INT DEFAULT 16;
DECLARE SPEC_START_SHAMAN INT DEFAULT 19;
DECLARE SPEC_START_MAGE INT DEFAULT 22;
DECLARE SPEC_START_WARLOCK INT DEFAULT 25;
DECLARE SPEC_START_DRUID INT DEFAULT 28;
DECLARE SPEC_DEFAULT INT DEFAULT 31;

DECLARE NPCBOT_ENTRY_BEGIN INT DEFAULT 70001;
DECLARE NPCBOT_ENTRY_END INT DEFAULT 71000;

DECLARE cur_pos INT;
DECLARE myclass INT;
DECLARE myspec INT;

SET cur_pos = NPCBOT_ENTRY_BEGIN;
WHILE cur_pos < NPCBOT_ENTRY_END DO
    SET myclass = (SELECT `class` FROM `npcbot_extras_temp` WHERE `entry` = cur_pos);
    SET myspec = (SELECT `spec` FROM `characters_npcbot` WHERE `entry` = cur_pos);

    IF myclass != 0 AND myspec != 0 AND myspec < 4 THEN

        IF myclass = CLASS_WARRIOR THEN
            SET myspec = myspec + SPEC_START_WARRIOR - 1;
        ELSEIF myclass = CLASS_PALADIN THEN
            SET myspec = myspec + SPEC_START_PALADIN - 1;
        ELSEIF myclass = CLASS_HUNTER THEN
            SET myspec = myspec + SPEC_START_HUNTER - 1;
        ELSEIF myclass = CLASS_ROGUE THEN
            SET myspec = myspec + SPEC_START_ROGUE - 1;
        ELSEIF myclass = CLASS_PRIEST THEN
            SET myspec = myspec + SPEC_START_PRIEST - 1;
        ELSEIF myclass = CLASS_DEATH_KNIGHT THEN
            SET myspec = myspec + SPEC_START_DEATH_KNIGHT - 1;
        ELSEIF myclass = CLASS_SHAMAN THEN
            SET myspec = myspec + SPEC_START_SHAMAN - 1;
        ELSEIF myclass = CLASS_MAGE THEN
            SET myspec = myspec + SPEC_START_MAGE - 1;
        ELSEIF myclass = CLASS_WARLOCK THEN
            SET myspec = myspec + SPEC_START_WARLOCK - 1;
        ELSEIF myclass = CLASS_DRUID THEN
            SET myspec = myspec + SPEC_START_DRUID - 1;
        ELSE
            SET myspec = SPEC_DEFAULT;
        END IF;

        UPDATE `characters_npcbot` SET `spec` = myspec WHERE `entry` = cur_pos;

    END IF;

    SET cur_pos = cur_pos + 1;

END WHILE;

DROP TEMPORARY TABLE IF EXISTS `npcbot_extras_temp`;

END*/;;

DELIMITER ;

CALL `sp__update_specs_2020_06_21`();

DROP PROCEDURE IF EXISTS `sp__update_specs_2020_06_21`;
ALTER TABLE `characters_npcbot` ADD `spells_disabled` longtext AFTER `equipNeck`;
ALTER TABLE `characters_npcbot` MODIFY COLUMN `roles` int(10) unsigned NOT NULL COMMENT 'bitmask: tank(1),dps(2),heal(4),ranged(8)';
DROP TABLE IF EXISTS `characters_npcbot_stats`;

CREATE TABLE `characters_npcbot_stats` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `spirit` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `defense` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPen` int(10) unsigned NOT NULL DEFAULT '0',
  `hastePct` float unsigned NOT NULL DEFAULT '0',
  `hitBonusPct` float unsigned NOT NULL DEFAULT '0',
  `expertise` int(10) unsigned NOT NULL DEFAULT '0',
  `armorPenPct` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- An update for shifted roles
UPDATE `characters_npcbot` SET `roles` = (roles & 0x1) | ((roles & ~0x1) << 1);
--
DROP TABLE IF EXISTS `characters_npcbot_transmog`;
CREATE TABLE `characters_npcbot_transmog` (
  `entry` int(10) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fake_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`slot`),
  CONSTRAINT `bot_id` FOREIGN KEY (`entry`) REFERENCES `characters_npcbot` (`entry`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
DROP TABLE IF EXISTS `characters_npcbot_group_member`;
CREATE TABLE `characters_npcbot_group_member` (
  `guid` int(10) unsigned NOT NULL,
  `entry` int(10) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
