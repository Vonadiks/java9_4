CREATE TABLE `movies_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movies_name` varchar(255) NOT NULL,
  `movies_duration` time,
  PRIMARY KEY (`id`)
);

CREATE TABLE `sessions_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movies_id` int(11) NOT NULL,
  `sessions_begining_time` datetime,
  `sessions_price` int(11),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`movies_id`) REFERENCES `movies_tbl` (`id`)
);

CREATE TABLE `tickets_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessions_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`sessions_id`) REFERENCES `sessions_tbl`(`id`)
);

INSERT INTO `movies_tbl` VALUES (1,'Terminator','01:30:00'),(2,'StarTrek','02:00:00'),(3,'Ratatui','01:00:00'),(4,'Spiderman','01:30:00');
INSERT INTO `sessions_tbl` VALUES (1,1,'2021-01-11 09:00:00',100),(2,3,'2021-01-11 09:00:00',200),(3,1,'2021-01-11 10:00:00',300),(4,2,'2021-01-11 12:00:00',100),(5,2,'2021-01-11 18:00:00',100),(6,4,'2021-01-11 19:00:00',100),(7,3,'2021-01-11 21:30:00',150);
INSERT INTO `tickets_tbl` VALUES (1,1),(2,2),(3,4),(4,1),(5,2),(6,2),(7,2),(8,4),(9,1),(10,3);