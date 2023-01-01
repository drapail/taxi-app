-- ----------------------------
-- Table structure for drivers
-- ----------------------------
DROP TABLE IF EXISTS drivers;
CREATE TABLE drivers
(
    id             SERIAL,
    name           varchar(255) NOT NULL,
    login          varchar(255) NOT NULL,
    password       varchar(255) NOT NULL,
    license_number varchar(255) NOT NULL,
    is_deleted     bit(1)       NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS manufacturers;
CREATE TABLE manufacturers
(
    id         SERIAL,
    name       varchar(255) NOT NULL,
    country    varchar(255) NOT NULL,
    is_deleted boolean      NOT NULL DEFAULT FALSE,
    PRIMARY KEY (id)
);

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS cars;
CREATE TABLE cars
(
    id              SERIAL,
    model           varchar(255) NOT NULL,
    manufacturer_id bigint       NOT NULL,
    is_deleted      boolean      NOT NULL DEFAULT FALSE,
    PRIMARY KEY (id),
    CONSTRAINT FK_manufacturer_id FOREIGN KEY (manufacturer_id) REFERENCES manufacturers (id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- ----------------------------
-- Table structure for cars_drivers
-- ----------------------------
DROP TABLE IF EXISTS cars_drivers;
CREATE TABLE cars_drivers
(
    car_id    bigint NOT NULL,
    driver_id bigint NOT NULL,
    PRIMARY KEY (car_id, driver_id),
    CONSTRAINT car_id FOREIGN KEY (car_id) REFERENCES cars (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT driver_id FOREIGN KEY (driver_id) REFERENCES drivers (id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

SET
FOREIGN_KEY_CHECKS = 1;
