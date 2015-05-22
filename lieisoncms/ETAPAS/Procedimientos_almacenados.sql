-- --------------------------------------------------------
-- Host:                         lieison.com
-- Versión del servidor:         5.5.40-MariaDB-cll-lve - MariaDB Server
-- SO del servidor:              Linux
-- HeidiSQL Versión:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para lieison_soft
CREATE DATABASE IF NOT EXISTS `lieison_soft` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lieison_soft`;


-- Volcando estructura para procedimiento lieison_soft.Message_Count_procedure
DELIMITER //
//
DELIMITER ;


-- Volcando estructura para procedimiento lieison_soft.ProcGetDashboardPagebyId
DELIMITER //
CREATE DEFINER=`lieison_soft`@`%` PROCEDURE `ProcGetDashboardPagebyId`(in id_page int)
BEGIN
 select 
        `seccion_dashboard`.`id_seccion` AS `id_seccion`,
        `dashboard`.`titulo` AS `dash_titulo`,
        `seccion_dashboard`.`icono` AS `sec_icono`,
        `seccion_dashboard`.`titulo` AS `sec_titulo`,
        `dashboard`.`link` AS `link`,
        `dashboard`.`icono` AS `icono`,
        `dashboard`.`privilegios` AS `priv_nombre`
    from
        ((`dashboard`
        join `seccion_dashboard` ON ((`dashboard`.`id_seccion` = `seccion_dashboard`.`id_seccion`)))
        join `privilegios` ON ((`dashboard`.`privilegios` = `privilegios`.`nivel`)))
    where
        (`dashboard`.`id_dashboard` like id_page);
END//
DELIMITER ;


-- Volcando estructura para procedimiento lieison_soft.ProcGetEntrance
DELIMITER //
CREATE DEFINER=`lieison_soft`@`%` PROCEDURE `ProcGetEntrance`()
BEGIN
SELECT 
concat(usuario.nombre , ' ' , usuario.apellido) as 'Uname' ,
usuario.imagen as 'Uimg' , 
usuario.id_usuario as 'Uid',
sales_prospect.nombre as 'Pname' , 
sales_prospect.estado as 'Pstate' , 
sales_entradas.id_entrada as 'id',
sales_entradas.fecha as 'date',
sales_entradas.hora as 'hour'
FROM sales_entradas 
INNER JOIN usuario ON sales_entradas.id_usuario=usuario.id_usuario
INNER JOIN sales_prospect ON sales_entradas.id_prospecto=sales_prospect.id_prospect
ORDER BY timestamp(sales_entradas.fecha , sales_entradas.hora) DESC;
END//
DELIMITER ;


-- Volcando estructura para procedimiento lieison_soft.ProcGetOldEntrace
DELIMITER //
CREATE DEFINER=`lieison_soft`@`%` PROCEDURE `ProcGetOldEntrace`()
BEGIN
(SELECT id_entrada FROM sales_entradas WHERE DATE_ADD(fecha, INTERVAL 5 DAY)  < date_format(now() , '%Y-%m-%d'));
END//
DELIMITER ;


-- Volcando estructura para procedimiento lieison_soft.ProcProspectGetBitacora
DELIMITER //
CREATE DEFINER=`lieison_soft`@`%` PROCEDURE `ProcProspectGetBitacora`( in id_p int , in hour_ varchar(50)  )
BEGIN
IF (hour_ = null or hour_ = '')  THEN 
SELECT  
sales_prospect_bitacora_log.id_log as 'id_log' ,
sales_prospect_bitacora_log.fecha as 'date',
sales_prospect_bitacora_log.hora as 'hour',
sales_prospect_bitacora_log.titulo as 'title',
sales_prospect_bitacora_log.descripcion as 'description',
sales_prospect_bitacora_log.id_usuario as 'id_user',
concat(usuario.nombre , ' '  , usuario.apellido) as 'name',
usuario.imagen as 'avatar',
sales_bitacora_tipo.titulo as 'title_type'
FROM sales_prospect_bitacora
INNER JOIN sales_prospect_bitacora_log ON sales_prospect_bitacora.id_bitacora= sales_prospect_bitacora_log.id_bitacora
INNER JOIN usuario ON sales_prospect_bitacora_log.id_usuario = usuario.id_usuario
INNER JOIN sales_bitacora_tipo ON sales_prospect_bitacora_log.id_tipo = sales_bitacora_tipo.id_tipo
WHERE sales_prospect_bitacora.id_prospecto LIKE id_p;
ELSE 
SELECT  
sales_prospect_bitacora_log.id_log as 'id_log' ,
sales_prospect_bitacora_log.fecha as 'date',
sales_prospect_bitacora_log.hora as 'hour',
sales_prospect_bitacora_log.titulo as 'title',
sales_prospect_bitacora_log.descripcion as 'description',
sales_prospect_bitacora_log.id_usuario as 'id_user',
concat(usuario.nombre , ' '  , usuario.apellido) as 'name',
usuario.imagen as 'avatar',
sales_bitacora_tipo.titulo as 'title_type'
FROM sales_prospect_bitacora
INNER JOIN sales_prospect_bitacora_log ON sales_prospect_bitacora.id_bitacora= sales_prospect_bitacora_log.id_bitacora
INNER JOIN usuario ON sales_prospect_bitacora_log.id_usuario = usuario.id_usuario
INNER JOIN sales_bitacora_tipo ON sales_prospect_bitacora_log.id_tipo = sales_bitacora_tipo.id_tipo
WHERE sales_prospect_bitacora.id_prospecto LIKE id_p AND sales_prospect_bitacora_log.hora LIKE hour_;
END IF;
END//
DELIMITER ;


-- Volcando estructura para procedimiento lieison_soft.ShowYourTask
DELIMITER //
//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
