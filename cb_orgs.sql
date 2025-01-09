CREATE TABLE `org_grades` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`org_name` VARCHAR(50) DEFAULT NULL,
	`grade` INT NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	`label` VARCHAR(50) NOT NULL,
	`salary` INT NOT NULL,
	`skin_male` LONGTEXT NOT NULL,
	`skin_female` LONGTEXT NOT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `orgs` (
	`name` VARCHAR(50) NOT NULL,
	`label` VARCHAR(50) DEFAULT NULL,
	`shared` TINYINT(4)	NOT NULL,

	PRIMARY KEY (`name`)
);