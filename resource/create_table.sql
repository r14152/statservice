USE statdb;

CREATE TABLE IF NOT EXISTS stat_metric(
    timestamp           DATETIME    NOT NULL,
    metric              CHAR(255)   NOT NULL,
    value               BIGINT      NOT NULL,
    last_update         DATETIME    DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(timestamp, metric)
)ENGINE = INNODB CHARACTER SET=utf8
 PARTITION BY RANGE( MONTH(timestamp) ) (
    PARTITION p1_jan VALUES LESS THAN (2),
    PARTITION p1_feb VALUES LESS THAN (3),
    PARTITION p2_mar VALUES LESS THAN (4),
    PARTITION p3_apr VALUES LESS THAN (5),
    PARTITION p4_may VALUES LESS THAN (6),
    PARTITION p5_jun VALUES LESS THAN (7),
    PARTITION p6_jul VALUES LESS THAN (8),
    PARTITION p7_aug VALUES LESS THAN (9),
    PARTITION p8_sep VALUES LESS THAN (10),
    PARTITION p9_oct VALUES LESS THAN (11),
    PARTITION p10_nov VALUES LESS THAN (12),
    PARTITION p11_dec VALUES LESS THAN (13),
    PARTITION p13_inv VALUES LESS THAN MAXVALUE
);
