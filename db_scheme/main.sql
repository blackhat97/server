CREATE SCHEMA IF NOT EXISTS `main` ;
USE `main` ;

CREATE TABLE IF NOT EXISTS `main`.`academy` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(500) NOT NULL,
  `categoryIds` JSON NOT NULL,
  `star` BIGINT UNSIGNED NOT NULL,
  `commentIds` JSON NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `main`.`category` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `parentId` BIGINT UNSIGNED NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `type` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `main`.`class` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT NOT NULL,
  `images` JSON NOT NULL,
  `tutorIds` JSON NOT NULL,
  `lessonIds` JSON NOT NULL,
  `star` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `main`.`comments` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `userId` BIGINT UNSIGNED NOT NULL,
  `parentId` BIGINT UNSIGNED NOT NULL,
  `content` TEXT NOT NULL,
  `timestamp` BIGINT UNSIGNED NOT NULL,
  `likes` BIGINT UNSIGNED NOT NULL,
  `dislikes` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `main`.`lesson` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT NOT NULL,
  `images` JSON NOT NULL,
  `commentIds` JSON NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `main`.`user` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `role` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
