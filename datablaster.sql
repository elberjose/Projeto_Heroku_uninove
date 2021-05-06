DROP TRIGGER IF EXISTS `sku_avaria`;
DELIMITER $$
CREATE TRIGGER `sku_avaria` AFTER INSERT ON `avaria` FOR EACH ROW BEGIN
    INSERT INTO sku(`N_processo`, `nome_process`, `data_processo`, `id_user`)
VALUES(
    NEW.carga_v,
    'AVARIA',
    NEW.data_avaria,
    NEW.id_user);
END $$

DELIMITER ;

DROP TRIGGER IF EXISTS `sku_expe`;
DELIMITER $$
CREATE TRIGGER `sku_expe` AFTER INSERT ON `c_control_exp` FOR EACH ROW BEGIN
    INSERT INTO sku(`N_processo`, `nome_process`, `data_processo`, `id_user`)
VALUES(
    NEW.OE,
    'EXPEDIÇÃO',
    NEW.data_expedicao,
    NEW.id_user
);
END $$
DELIMITER ;

DROP TRIGGER IF EXISTS `sku_rec`;
DELIMITER $$
CREATE TRIGGER `sku_rec` AFTER INSERT ON `c_control_rec` FOR EACH ROW BEGIN
    INSERT INTO sku(`N_processo`, `nome_process`,`data_processo`,`id_user`)
VALUES(
    NEW.carga_r,
    'RECEBIMENTO',
    NEW.data_recebimento,
    NEW.id_user);
END $$
DELIMITER ;

DROP TRIGGER IF EXISTS `sku_rac`;
DELIMITER $$
CREATE TRIGGER `sku_rac` AFTER INSERT ON `rac` FOR EACH ROW BEGIN
    INSERT INTO sku(`N_processo`, `nome_process`,`data_processo`,`id_user`)
VALUES(
    NEW.carga_rac,
    'RECOLHA',
    NEW.data_chegada,
    NEW.id_user);
END $$
DELIMITER ;