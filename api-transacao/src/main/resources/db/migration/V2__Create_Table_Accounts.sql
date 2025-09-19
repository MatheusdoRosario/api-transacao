CREATE TABLE IF NOT EXISTS `accounts` (
    `id_account` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `account_type` VARCHAR(20) CHECK (account_type IN ('CURRENT', 'SAVINGS')) NOT NULL,
    `balance` DECIMAL(15,2) DEFAULT 0.00,
    `creation_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `id_user` BIGINT NOT NULL,
    PRIMARY KEY `pk_id_account` (`id_account`),
    FOREIGN KEY (id_user) REFERENCES users(id_user)
) ENGINE=InnoDB;