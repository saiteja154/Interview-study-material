create database if  not exists `social-media-database` ;

use `social-media-database`;

create table `user` ( `id` int not null auto_increment,
`name` varchar(65)  default null,
`dob` date default null ,
primary key(`id`)
)ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

create table `post` (
`id` int not null auto_increment,
 `description` varchar(65) default null,
  `user_id` int  not null ,
 primary key(`id`) ,
  FOREIGN KEY (`user_id`)
    REFERENCES `social-media-database`.`user` (`id`)
 )ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;




