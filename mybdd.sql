CREATE DATABASE IF NOT EXISTS gestion;
use gestion;
CREATE TABLE personne (
matricule int,
nom varchar(30),
prenom varchar(30),
age int(5)
);
INSERT INTO personne (matricule, nom, prenom, age) VALUES
(1,'Nanou','Livai',25);
INSERT INTO personne (matricule, nom, prenom, age) VALUES
(2,'Mus','OUNSI',29);
INSERT INTO personne (matricule, nom, prenom, age) VALUES
(3,'Adel','ZITOUN',19);
INSERT INTO personne (matricule, nom, prenom, age) VALUES
(4,'Amal','BEN SLIM',19);

use mysql;

CREATE USER 'guest'@'%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON *.* TO 'guest'@'%';
flush privileges;

