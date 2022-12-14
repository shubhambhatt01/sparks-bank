

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


 

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

 

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'madhu', 'madhu@gmail.com', 70000),
(2, 'alekhya', 'alk@gmail.com', 40000),
(3, 'elmariya', 'mariya@gmail.com', 45000),
(4, 'lavanya', 'lav@gmail.com', 90000),
(5, 'rachel', 'rachel@gmail.com', 35000),
(6, 'jimin', 'jimin@gmail.com', 50000),
(7, 'monica', 'monica@gmail.com', 55000),
(8, 'joey', 'joey@gmail.com', 60000),
(9, 'jin', 'jin@gmail.com', 80000),
(10, 'suga', 'suga@gmail.com', 20000);

 
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

 
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

 

 
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

 ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

 
