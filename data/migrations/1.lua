function onUpdateDatabase()
	print("> Updating database to version 3 (market history)")
	db.query("CREATE TABLE `market_history` (`id` INT UNSIGNED NOT NULL AUTO_INCREMENT, `player_id` INT NOT NULL, `sale` TINYINT(1) NOT NULL DEFAULT 0, `itemtype` INT UNSIGNED NOT NULL, `amount` SMALLINT UNSIGNED NOT NULL, `price` INT UNSIGNED NOT NULL DEFAULT 0, `expires_at` BIGINT UNSIGNED NOT NULL, `inserted` BIGINT UNSIGNED NOT NULL, `state` TINYINT(1) UNSIGNED NOT NULL, PRIMARY KEY(`id`), KEY(`player_id`, `sale`), FOREIGN KEY (`player_id`) REFERENCES `players`(`id`) ON DELETE CASCADE) ENGINE = InnoDB")
	return true
end
