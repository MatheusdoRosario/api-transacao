CREATE TABLE IF NOT EXISTS `transactions` (
    `id_transaction` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `transaction_type` VARCHAR(255) CHECK (transaction_type IN ('DEPOSIT','WITHDRAW','TRANSFER')) NOT NULL,
    `amount` DECIMAL(15,2) NOT NULL,
    `transaction_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `description` VARCHAR(255),
    `id_origin_account` BIGINT NOT NULL,
    `id_destination_account` BIGINT,
    PRIMARY KEY `pk_id_transaction` (`id_transaction`),
    FOREIGN KEY (id_origin_account) REFERENCES accounts(id_account),
    FOREIGN KEY (id_destination_account) REFERENCES accounts(id_account)
) ENGINE=InnoDB;