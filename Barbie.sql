CREATE DATABASE fashionlandia;
USE fashionlandia;

CREATE TABLE personagem (
    idpersonagem INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tipo_relacao VARCHAR(30),
    fkRelacionada INT,
    CONSTRAINT fk_personagem_relacionada FOREIGN KEY (fkRelacionada)
        REFERENCES personagem (idpersonagem)
);

CREATE TABLE objeto (
    idobjeto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    cor VARCHAR(100),
    marca VARCHAR(100),
    nivel_elegancia INT,
    disponivel TINYINT
);

CREATE TABLE closet (
    fkIdpersonagem INT,
    fkObjeto INT,
    localizacao VARCHAR(100),
    status_emprestimo VARCHAR(50),
    PRIMARY KEY (fkIdpersonagem , fkObjeto),
    CONSTRAINT fk_closet_personagem FOREIGN KEY (fkIdpersonagem)
        REFERENCES personagem (idpersonagem),
    CONSTRAINT fk_closet_objeto FOREIGN KEY (fkObjeto)
        REFERENCES objeto (idobjeto)
);

INSERT INTO personagem (idpersonagem, nome, tipo_relacao, fkRelacionada) VALUES
(1, 'Barbie', NULL, NULL),
(2, 'Skipper Celestine', 'Irma', 1),
(3, 'Stacie Aurora', 'Irma', 1),
(4, 'Chelsea Elodie', 'Irma', 1),
(5, 'Ken Alistair Beaumont', 'Acompanhante', 1);

INSERT INTO objeto(idobjeto, nome, tipo, cor, marca, nivel_elegancia, disponivel)VALUES
(1, 'Maison Elegance Lumiere Etoile Sapphire Mist Premiere Couture','Vestido','Azul Safira Nebuloso Acetinado Lunar','Maison Elegance',10, 1),
(2, 'Maison Elegance Lumiere Etoile Sapphire Night Couture','Vestido','Azul Noturno Profundo','Maison Elegance',9, 1),
(3, 'Aurora Bleu Nuit Prestige','Vestido','Azul Midnight Frost','Belle Couture',8, 1),
(4, 'Aurora Bleu Nocturne Prestige','Vestido','Azul Eclipse Real','Belle Couture',8, 0),
(5, 'Velvet Moon Silverline Eclipse Signature','Sapato','Prata Glacial Espelhado','Velvet Moon',10, 1),
(6, 'Velvet Moon Silverline Eclipse Deluxe','Sapato','Prata Lunar','Velvet Moon',9, 1),
(7, 'Crystal Walk Polar Edition','Sapato','Cristal Ártico','Crystal Walk',7, 1),
(8, 'Royal Essence Frost Champagne Mini Deluxe Prestige','Bolsa','Champagne Perolado','Royal Essence',10, 1),
(9, 'Royal Essence Frost Champagne Mini Classic','Bolsa','Champagne Clássico','Royal Essence',8, 1),
(10, 'Aurora Satin Rose Reflect Bag','Bolsa','Rosé Metálico','Aurora Luxe',6, 1),
(11, 'Cristaux de Lune Opaline Infinite Supreme','Acessorio','Prata Opalina','Cristaux',10, 1),
(12, 'Cristaux de Lune Opaline Prime','Acessorio','Prata Lunar','Cristaux',8, 1),
(13, 'Aurora Prism Pearl Celestial Reflection Edition','Acessorio','Pérola Celestial','Aurora Luxe',10, 1),
(14, 'Aurora Prism Pearl Celestial Edition','Acessorio','Pérola Aurora','Aurora Luxe',8, 1),
(15, 'Diamond Whisper Frostlight','Acessorio','Diamante Glacial','Diamond Whisper',7, 1);

INSERT INTO closet(fkIdpersonagem, fkObjeto, localizacao, status_emprestimo)VALUES
(1,1,'Aurora Borealis','Disponivel'),
(1,5,'Aurora Borealis','Disponivel'),
(1,8,'Rubis Imperiale','Disponivel'),
(1,11,'Perle Celeste','Disponivel'),
(1,13,'Perle Celeste','Disponivel'),
(1,2,'Aurora Borealis','Disponivel'),
(1,6,'Rubis Imperiale','Disponivel'),
(1,9,'Rubis Imperiale','Disponivel'),
(1,12,'Perle Celeste','Disponivel'),
(2,1,'Perle Celeste','Emprestado'),
(2,3,'Aurora Borealis','Disponivel'),
(2,5,'Rubis Imperiale','Emprestado'),
(2,8,'Perle Celeste','Compartilhado'),
(2,11,'Perle Celeste','Compartilhado'),
(2,14,'Perle Celeste','Disponivel'),
(3,2,'Aurora Borealis','Disponivel'),
(3,4,'Eclipse Noir','Indisponivel'),
(3,6,'Rubis Imperiale','Disponivel'),
(3,9,'Rubis Imperiale','Disponivel'),
(3,12,'Perle Celeste','Disponivel'),
(3,13,'Perle Celeste','Compartilhado'),
(4,1,'Perle Celeste','Compartilhado'),
(4,5,'Rubis Imperiale','Compartilhado'),
(4,8,'Perle Celeste','Compartilhado'),
(4,11,'Perle Celeste','Compartilhado'),
(4,13,'Perle Celeste','Compartilhado'),
(4,15,'Eclipse Noir','Disponivel'),
(5,10,'Eclipse Noir','Disponivel'),
(5,15,'Eclipse Noir','Disponivel'),
(5,7,'Aurora Borealis','Disponivel');