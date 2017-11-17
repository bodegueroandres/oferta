/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.1.24-MariaDB : Database - oferta
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oferta` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oferta`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

/*Table structure for table `carreras` */

DROP TABLE IF EXISTS `carreras`;

CREATE TABLE `carreras` (
  `id_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `fk_sede` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_carrera`),
  KEY `fk_sede` (`fk_sede`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `carreras` */

insert  into `carreras`(`id_carrera`,`nombre`,`fk_sede`) values (1,'Tecnicatura Superior en Análisis y Programación Superior de Sistemas',NULL),(2,'Telecomunicaciones',NULL),(3,'Computación y Redes',NULL),(4,'Diseño Gráfico y Publicitario',NULL),(5,'Diseño Multimedial',NULL),(6,'Fotografía Creativa y Diseño Fotográfico',NULL),(7,'Diseño de Indumentaria',NULL);

/*Table structure for table `consulta` */

DROP TABLE IF EXISTS `consulta`;

CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `fk_usuario` int(11) DEFAULT NULL,
  `fk_admin` int(11) DEFAULT NULL,
  `fk_institucion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `fk_usuario` (`fk_usuario`),
  KEY `fk_institucion` (`fk_institucion`),
  CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`fk_usuario`) REFERENCES `admin` (`id_admin`),
  CONSTRAINT `consulta_ibfk_3` FOREIGN KEY (`fk_institucion`) REFERENCES `institucion` (`id_insitucion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `consulta` */

/*Table structure for table `datos` */

DROP TABLE IF EXISTS `datos`;

CREATE TABLE `datos` (
  `id_datos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `detalle_consulta` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_datos`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `datos` */

insert  into `datos`(`id_datos`,`nombre`,`email`,`detalle_consulta`) values (3,'anonimo','anonimo',NULL),(4,'anonimo','anonimo',NULL),(5,'anonimo','anonimo',NULL),(6,'Pedro','exequiel_puche@hotmail.com',NULL),(7,'Pedro','exequiel_puche@hotmail.com',NULL);

/*Table structure for table `institucion` */

DROP TABLE IF EXISTS `institucion`;

CREATE TABLE `institucion` (
  `id_insitucion` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  `turno` varchar(50) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `localizacion` varchar(1000) DEFAULT NULL,
  `fk_sede` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_insitucion`),
  KEY `fk_sede` (`fk_sede`),
  CONSTRAINT `institucion_ibfk_1` FOREIGN KEY (`fk_sede`) REFERENCES `sede` (`id_sede`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `institucion` */

insert  into `institucion`(`id_insitucion`,`tipo`,`turno`,`nombre`,`direccion`,`telefono`,`email`,`localizacion`,`fk_sede`) values (1,'estatal','vespertino','Instituto de Educacion Superior 9-0008 Manuel Belgrano ','Rodriguez 191(esq. Lamadrid)','261-4286173','manuelbelgranorectoria@gmail.com','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3349.9912320057847!2d-68.85595208481475!3d-32.898400080935545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967e090941efe5c3%3A0x5a79f9ddb0a955bb!2sJ.+Rodriguez+191%2C+Mendoza!5e0!3m2!1ses-419!2sar!4v1510754096998\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',2),(2,'estatal','vespertino','Instituto de Educacion Superior 9-0008 Manuel Belgrano ','Roque Saenz Peña 1271','261-4246237','manuelbelgranorectoria@gmail.com','<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d107156.30400190271!2d-68.8662087!3d-32.9342537!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967e096e24fe67d3%3A0x8bd4ca97336e5fdb!2sIES+9-008+Manuel+Belgrano+-+Sede+Godoy+Cruz!5e0!3m2!1ses-419!2sar!4v1510753928812\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',1),(3,'estatal','vespertino','Instituto de Educacion Superior 9-0008 Manuel Belgrano ','Doctor moreno esq.Roca','261-153478155','manuelbelgranorectoria@gmail.com','<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d418.9696876921115!2d-68.84054!3d-32.8516718!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967e08972bd84163%3A0xc69f774a11aa269a!2s9-008+-+Instituto+de+Educaci%C3%B3n+Superior+%22Manuel+Belgrano%22!5e0!3m2!1ses-419!2sar!4v1510753763452\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',3),(4,'estatal','vespertino','Instituto de Educacion Superior 9-0008 Manuel Belgrano ','Ruta Provincial N°50 nro 4566','261-155070555','manuelbelgranorectoria@gmail.com','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d836.6222230531304!2d-68.68844577438587!3d-32.99088392962339!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x967e6d36efdc2c57%3A0xa5ece9cdc61c705f!2sRP50+4566%2C+Mendoza!5e0!3m2!1ses-419!2sar!4v1510753140609\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',4);

/*Table structure for table `sede` */

DROP TABLE IF EXISTS `sede`;

CREATE TABLE `sede` (
  `id_sede` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_sede`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `sede` */

insert  into `sede`(`id_sede`,`nombre`) values (1,'Godoy Cruz'),(2,'Capital'),(3,'Las Heras'),(4,'Rodeo del Medio');

/*Table structure for table `sede_carrera` */

DROP TABLE IF EXISTS `sede_carrera`;

CREATE TABLE `sede_carrera` (
  `fk_sede` int(11) DEFAULT NULL,
  `fk_carrera` int(11) DEFAULT NULL,
  KEY `fk_sede` (`fk_sede`),
  KEY `indice` (`fk_carrera`,`fk_sede`),
  CONSTRAINT `sede_carrera_ibfk_1` FOREIGN KEY (`fk_sede`) REFERENCES `sede` (`id_sede`),
  CONSTRAINT `sede_carrera_ibfk_2` FOREIGN KEY (`fk_carrera`) REFERENCES `carreras` (`id_carrera`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sede_carrera` */

insert  into `sede_carrera`(`fk_sede`,`fk_carrera`) values (2,1),(3,1),(4,1),(2,2),(3,3),(4,3),(1,4),(1,5),(2,6),(3,6),(1,7),(3,7);

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
