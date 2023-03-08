CREATE DATABASE IF NOT EXISTS gestion;
use gestion;
CREATE TABLE personne(
    matricule int,
    nom varchar(50),
    prenom varchar(50),
    age int(10)

);

use mysql;

CREATE USER 'guest'@'%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON *.* TO 'guest'@'%';
flush privileges;