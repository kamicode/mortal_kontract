CREATE TABLE IF NOT EXISTS `#__mortal_kontracts_leads` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`state` TINYINT(1)  NOT NULL ,
`created` DATETIME NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_by` INT(11)  NOT NULL ,
`name` VARCHAR(255)  NOT NULL ,
`description` TEXT NOT NULL ,
`url` VARCHAR(255)  NOT NULL ,
`checksum` VARCHAR(255)  NOT NULL ,
`hits` VARCHAR(255)  NOT NULL ,
`provider_id` INT NOT NULL ,
`region` VARCHAR(255)  NOT NULL ,
`accepted_for_quote` VARCHAR(255)  NOT NULL ,
`rating` VARCHAR(1)  NOT NULL ,
`posted` DATE NOT NULL DEFAULT '0000-00-00',
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__mortal_kontracts_providers` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_by` INT(11)  NOT NULL ,
`name` VARCHAR(255)  NOT NULL ,
`connector` VARCHAR(255)  NOT NULL ,
`parser` VARCHAR(255)  NOT NULL ,
`average_rating` VARCHAR(2)  NOT NULL ,
`url` VARCHAR(255)  NOT NULL ,
`keywords` TEXT NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

