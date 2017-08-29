CREATE TABLE `user_info` (
`user_id` varchar(255) NOT NULL,
`phone_number` varchar(11) NOT NULL,
`phone_number_checked` int NULL,
`is_face_checked` tinyint(1) NULL,
`is_identify_checked` tinyint(1) NULL,
`work_info` varchar(255) NULL,
`address` varchar(255) NULL,
`emergency_contact` varchar(11) NULL,
`credit_number` int NOT NULL DEFAULT 0,
PRIMARY KEY (`user_id`) 
);

CREATE TABLE `login` (
`user_id` varchar(255) NOT NULL,
`password` varchar(255) NOT NULL,
PRIMARY KEY (`user_id`) 
);

CREATE TABLE `loan_info` (
`loan_id` int NOT NULL,
`user_id` varchar(255) NOT NULL,
`create_date` date NOT NULL,
`load_money` int NOT NULL,
`remain_money` int NOT NULL,
`bid_valide_period` int NOT NULL,
`load_duration` int NOT NULL,
`rate` double NOT NULL,
`borrow_style` tinyint(1) NOT NULL,
`usage` varchar(255) NOT NULL,
`repay_style` tinyint(1) NOT NULL,
`state` tinyint NOT NULL,
PRIMARY KEY (`loan_id`) 
);

CREATE TABLE `repay_info` (
`repay_id` int NOT NULL,
`loan_id` int NOT NULL,
`repay_user_id` varchar(255) NOT NULL,
`state` tinyint NOT NULL,
`repay_total` double NOT NULL,
`remain_money` double NOT NULL,
`next_date` date NOT NULL,
`next_repay_money` double NOT NULL,
`overdue_days` int NOT NULL,
PRIMARY KEY (`repay_id`) 
);

CREATE TABLE `bank_card_info` (
`user_id` varchar(0) NOT NULL,
`bank_card_number` char(19) NOT NULL,
`description` varchar(255) NULL,
PRIMARY KEY (`user_id`, `bank_card_number`) 
);

CREATE TABLE `credit_change` (
`id` int NOT NULL AUTO_INCREMENT,
`user_id` varchar(255) NOT NULL,
`description` varchar(255) NOT NULL,
`change` double NOT NULL,
`date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`id`) 
);
