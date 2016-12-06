CREATE DATABASE IF NOT EXISTS `blog`;

USE `blog`;

CREATE TABLE IF NOT EXISTS `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fname` VARCHAR(100) NOT NULL ,
  `lname` VARCHAR(100) NOT NULL ,
  `username` VARCHAR(128) NOT NULL ,
  `password` VARCHAR(256) NOT NULL ,
  `email` VARCHAR(100) NOT NULL ,
  `active` TINYINT,
  `verified` TINYINT,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `articles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `article_author` INT NOT NULL ,
  `title` VARCHAR(512) NOT NULL ,
  `category` INT NOT NULL ,
  `date_posted` INT NOT NULL ,
  `date_last_modified` INT NOT NULL ,
  `path` VARCHAR(1000) NOT NULL ,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `article_likes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `article` INT NOT NULL,
  `like` TINYINT,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `comment_author` INT NOT NULL ,
  `article` INT NOT NULL ,
  `comment` VARCHAR(3000) NOT NULL ,
  `relates` INT,
  `date_posted` INT NOT NULL ,
  `date_last_modified` INT NOT NULL ,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `comment_likes` (
  `id` INT NOT NULL ,
  `like_author` INT NOT NULL ,
  `comment` INT NOT NULL ,
  `like` TINYINT,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(200) NOT NULL ,
  `relates` INT,
  PRIMARY KEY (`id`)
);