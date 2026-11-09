-- 1. 用户表
CREATE TABLE `sys_user` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL COMMENT '用户名',
  `role` VARCHAR(20) NOT NULL COMMENT '角色：admin/warehouse/finance'
);

-- 2. 库存表
CREATE TABLE `inventory` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `product_code` VARCHAR(50) NOT NULL COMMENT '商品编码',
  `location` VARCHAR(50) NOT NULL COMMENT '库位',
  `batch` VARCHAR(50) NOT NULL COMMENT '批次',
  `stock_qty` INT NOT NULL DEFAULT 0 COMMENT '库存数量'
);

-- 3. 订单表（出入库流水）
CREATE TABLE `wms_order` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `order_no` VARCHAR(50) NOT NULL UNIQUE COMMENT '单号',
  `type` TINYINT NOT NULL COMMENT '1入库 2出库',
  `product_code` VARCHAR(50) NOT NULL,
  `batch` VARCHAR(50) NOT NULL,
  `qty` INT NOT NULL COMMENT '数量'
);