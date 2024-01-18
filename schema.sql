-- 믈리적 설계
--  create database project;
--  use project;

CREATE TABLE `member` (
    `member_id` VARCHAR(20) NOT NULL,
    `member_name` VARCHAR(20) NULL,
    `member_pw` VARCHAR(20) NOT NULL,
    `subscription_YN` BOOLEAN
);

CREATE TABLE `subscription` (
    `member_id` VARCHAR(20) NOT NULL,
    `subscription_plan` ENUM('basic', 'standard', 'premium') DEFAULT 'basic',
    `subscription_s_date` DATE NULL,
    `subscription_f_date` DATE NULL
);

CREATE TABLE `contents` (
    `contents_code` VARCHAR(15) NOT NULL,
    `contents_title` VARCHAR(25) NULL,
    `contents_director` VARCHAR(15) NULL,
    `contents_p_year` DATE NULL,
    `contents_genre` VARCHAR(15) NULL,
    `contents_p_actor` VARCHAR(20) NULL,
    `contents_explanation` VARCHAR(300) NULL,
    `genre_code` VARCHAR(15) NOT NULL
);

CREATE TABLE `profile` (
    `member_id` VARCHAR(20) NOT NULL,
    `profile_image` BLOB NULL,
    `nickname` VARCHAR(15) NULL
);

CREATE TABLE `genre` (
    `genre_code` VARCHAR(15) NOT NULL,
    `genre_name` VARCHAR(15) NULL
);

CREATE TABLE `pay` (
    `member_id` VARCHAR(20) NOT NULL,
    `payment` VARCHAR(20) NULL,
    `paydate` DATE NULL,
    `price` DECIMAL(20, 2) NULL
);


CREATE TABLE `review` (
    `comment_time` DATETIME NOT NULL,
    `member_id` VARCHAR(20) NOT NULL,
    `comment_id` VARCHAR(20) NULL,
    `comment_detail` VARCHAR(300) NULL,
    `score` INT NULL DEFAULT 1,
    `contents_code` VARCHAR(15) NOT NULL
);

CREATE TABLE `watch` (
    `play_date` DATE NOT NULL,
    `member_id` VARCHAR(20) NOT NULL,
    `contents_code` VARCHAR(15) NOT NULL,
    `play_start` TIME NULL,
    `play_finish` TIME NULL
);

CREATE TABLE `recommend` (
    `member_id` VARCHAR(20) NOT NULL,
    `contents_code` VARCHAR(15) NOT NULL,
    `contents_title` VARCHAR(15) NULL,
    `genre_code` VARCHAR(15) NOT NULL
);

CREATE TABLE `search` (
    `member_id` VARCHAR(20) NOT NULL,
    `search_date` DATE NULL,
    `detail` VARCHAR(20) NULL
);

CREATE TABLE `wishlist` (
    `member_id` VARCHAR(20) NOT NULL,
    `contents_code` VARCHAR(15) NOT NULL
);

CREATE TABLE `save` (
    `member_id` VARCHAR(20) NOT NULL,
    `contents_code` VARCHAR(15) NOT NULL
);

CREATE TABLE `party` (
    `party_code` VARCHAR(20) NOT NULL,
    `party_name` VARCHAR(15) NULL,
    `p_maker_id` VARCHAR(20) NULL,
    `p_member_id` VARCHAR(20) NULL,
    `party_date` DATE NULL,
    `contents_code` VARCHAR(15) NOT NULL,
    `member_id` VARCHAR(20) NOT NULL
);

CREATE TABLE `livechat` (
    `chat_id` VARCHAR(25) NOT NULL,
    `detail` VARCHAR(100) NULL,
    `date` DATETIME NULL,
    `member_id` VARCHAR(20) NOT NULL,
    `party_code` VARCHAR(20) NOT NULL
);

CREATE TABLE `purchase` (
    `purchase_id` VARCHAR(20) NOT NULL,
    `purchase_date` DATE NULL,
    `contents_code` VARCHAR(15) NOT NULL,
    `member_id` VARCHAR(20) NOT NULL
);

ALTER TABLE `member` ADD PRIMARY KEY (`member_id`);

ALTER TABLE `subscription` ADD PRIMARY KEY (`member_id`);

ALTER TABLE `contents` ADD PRIMARY KEY (`contents_code`);

ALTER TABLE `profile` ADD PRIMARY KEY (`member_id`);

ALTER TABLE `genre` ADD PRIMARY KEY (`genre_code`);

ALTER TABLE `pay` ADD PRIMARY KEY (`member_id`);

ALTER TABLE `review` ADD PRIMARY KEY (`comment_time`, `member_id`);

ALTER TABLE `watch` ADD PRIMARY KEY (`play_date`, `member_id`, `contents_code`);

ALTER TABLE `recommend` ADD PRIMARY KEY (`member_id`, `contents_code`);

ALTER TABLE `search` ADD PRIMARY KEY (`member_id`);

ALTER TABLE `wishlist` ADD PRIMARY KEY (`member_id`, `contents_code`);

ALTER TABLE `save` ADD PRIMARY KEY (`member_id`, `contents_code`);

ALTER TABLE `party` ADD PRIMARY KEY (`party_code`);

ALTER TABLE `livechat` ADD PRIMARY KEY (`chat_id`);

ALTER TABLE `purchase` ADD PRIMARY KEY (`purchase_id`);

ALTER TABLE `subscription` ADD CONSTRAINT `FK_member_TO_subscription_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `profile` ADD CONSTRAINT `FK_member_TO_profile_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `pay` ADD CONSTRAINT `FK_subscription_TO_pay_1` FOREIGN KEY (`member_id`) REFERENCES `subscription` (`member_id`);

ALTER TABLE `pay` ADD CONSTRAINT `FK_member_TO_pay_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `review` ADD CONSTRAINT `FK_member_TO_review_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `watch` ADD CONSTRAINT `FK_member_TO_watch_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `watch` ADD CONSTRAINT `FK_contents_TO_watch_1` FOREIGN KEY (`contents_code`) REFERENCES `contents` (`contents_code`);

ALTER TABLE `recommend` ADD CONSTRAINT `FK_member_TO_recommend_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `recommend` ADD CONSTRAINT `FK_contents_TO_recommend_1` FOREIGN KEY (`contents_code`) REFERENCES `contents` (`contents_code`);

ALTER TABLE `search` ADD CONSTRAINT `FK_member_TO_search_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `wishlist` ADD CONSTRAINT `FK_member_TO_wishlist_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `wishlist` ADD CONSTRAINT `FK_contents_TO_wishlist_1` FOREIGN KEY (`contents_code`) REFERENCES `contents` (`contents_code`);

ALTER TABLE `save` ADD CONSTRAINT `FK_member_TO_save_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

ALTER TABLE `save` ADD CONSTRAINT `FK_contents_TO_save_1` FOREIGN KEY (`contents_code`) REFERENCES `contents` (`contents_code`);