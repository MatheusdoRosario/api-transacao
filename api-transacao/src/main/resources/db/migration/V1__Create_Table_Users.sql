CREATE TABLE IF NOT EXISTS `users`(
    `id_user` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `user_name` VARCHAR(255) NOT NULL UNIQUE,
    `full_name` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL UNIQUE,
    `register_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY `pk_id_user` (`id_user`)
) ENGINE=InnoDB;