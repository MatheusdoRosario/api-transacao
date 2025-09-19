CREATE TABLE IF NOT EXISTS `accounts` (
    `id_accounts` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `accounts_type` VARCHAR(20) CHECK (accounts_type IN ('CURRENT', 'SAVINGS')) NOT NULL,
    `balance` DECIMAL(15,2) DEFAULT 0.00,
    `creation_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `id_users` BIGINT NOT NULL,
    PRIMARY KEY `pk_id_accounts` (`id_accounts`),
    FOREIGN KEY (id_users) REFERENCES users(id_users)
) ENGINE=InnoDB;