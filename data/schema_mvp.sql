CREATE TABLE `todos` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`category_id` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL UNIQUE,
	PRIMARY KEY (`id`)
);

ALTER TABLE `todos` ADD CONSTRAINT `todos_fk0` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`);
