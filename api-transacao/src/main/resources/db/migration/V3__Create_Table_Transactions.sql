CREATE TABLE IF NOT EXISTS `transactions` (
    `id_transactions` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `transactions_type` VARCHAR(255) CHECK (transactions_type IN ('DEPOSIT','WITHDRAW','TRANSFER')) NOT NULL,
    `transactions_value` DECIMAL(15,2) NOT NULL,
    `transactions_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `id_origin_accounts` BIGINT NOT NULL,
    `id_destination_accounts` BIGINT,
    PRIMARY KEY `pk_id_transactions` (`id_transactions`),
    FOREIGN KEY (id_origin_accounts) REFERENCES accounts(id_accounts),
    FOREIGN KEY (id_destination_accounts) REFERENCES accounts(id_accounts)
) ENGINE=InnoDB;