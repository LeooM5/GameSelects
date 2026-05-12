CREATE DATABASE fashionlandia;

USE fashionlandia;

-- ANTERIOR
CREATE TABLE
    personagem (
        idpersonagem INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(100) NOT NULL,
        tipo_relacao VARCHAR(30),
        fkRelacionada INT,
        CONSTRAINT fk_personagem_relacionada FOREIGN KEY (fkRelacionada) REFERENCES personagem (idpersonagem)
    );

CREATE TABLE
    objeto (
        idobjeto INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(200) NOT NULL,
        tipo VARCHAR(30) NOT NULL,
        cor VARCHAR(100),
        marca VARCHAR(100),
        nivel_elegancia INT,
        disponivel TINYINT
    );

CREATE TABLE
    closet (
        fkIdpersonagem INT,
        fkObjeto INT,
        localizacao VARCHAR(100),
        status_emprestimo VARCHAR(50),
        PRIMARY KEY (fkIdpersonagem, fkObjeto),
        CONSTRAINT fk_closet_personagem FOREIGN KEY (fkIdpersonagem) REFERENCES personagem (idpersonagem),
        CONSTRAINT fk_closet_objeto FOREIGN KEY (fkObjeto) REFERENCES objeto (idobjeto)
    );

INSERT INTO personagem (idpersonagem, nome, tipo_relacao, fkRelacionada) VALUES
    (1, 'Barbie', NULL, NULL),
    (2, 'Skipper Celestine', 'Irma', 1),
    (3, 'Stacie Aurora', 'Irma', 1),
    (4, 'Chelsea Elodie', 'Irma', 1),
    (5, 'Ken Alistair Beaumont', 'Acompanhante', 1);

INSERT INTO objeto (idobjeto,nome,tipo,cor,marca,nivel_elegancia,disponivel) VALUES
    (1,'Maison Elegance Lumiere Etoile Sapphire Mist Premiere Couture','Vestido','Azul Safira Nebuloso Acetinado Lunar','Maison Elegance',10,1),
    (2,'Maison Elegance Lumiere Etoile Sapphire Night Couture','Vestido','Azul Noturno Profundo','Maison Elegance',9,1),
    (3,'Aurora Bleu Nuit Prestige','Vestido','Azul Midnight Frost','Belle Couture',8,1),
    (4,'Aurora Bleu Nocturne Prestige','Vestido','Azul Eclipse Real','Belle Couture',8,0),
    (5,'Velvet Moon Silverline Eclipse Signature','Sapato','Prata Glacial Espelhado','Velvet Moon',10,1),
    (6,'Velvet Moon Silverline Eclipse Deluxe','Sapato','Prata Lunar','Velvet Moon',9,1),
    (7,'Crystal Walk Polar Edition','Sapato','Cristal Ártico','Crystal Walk',7,1),
    (8,'Royal Essence Frost Champagne Mini Deluxe Prestige','Bolsa','Champagne Perolado','Royal Essence',10,1),
    (9,'Royal Essence Frost Champagne Mini Classic','Bolsa','Champagne Clássico','Royal Essence',8,1),
    (10,'Aurora Satin Rose Reflect Bag','Bolsa','Rosé Metálico','Aurora Luxe',6,1),
    (11,'Cristaux de Lune Opaline Infinite Supreme','Acessorio','Prata Opalina','Cristaux',10,1),
    (12,'Cristaux de Lune Opaline Prime','Acessorio','Prata Lunar','Cristaux',8,1),
    (13,'Aurora Prism Pearl Celestial Reflection Edition','Acessorio','Pérola Celestial','Aurora Luxe',10,1),
    (14,'Aurora Prism Pearl Celestial Edition','Acessorio','Pérola Aurora','Aurora Luxe',8,1),
    (15,'Diamond Whisper Frostlight','Acessorio','Diamante Glacial','Diamond Whisper',7,1);

INSERT INTO closet (fkIdpersonagem,fkObjeto,localizacao,status_emprestimo) VALUES
    (1, 1, 'Aurora Borealis', 'Disponivel'),
    (1, 5, 'Aurora Borealis', 'Disponivel'),
    (1, 8, 'Rubis Imperiale', 'Disponivel'),
    (1, 11, 'Perle Celeste', 'Disponivel'),
    (1, 13, 'Perle Celeste', 'Disponivel'),
    (1, 2, 'Aurora Borealis', 'Disponivel'),
    (1, 6, 'Rubis Imperiale', 'Disponivel'),
    (1, 9, 'Rubis Imperiale', 'Disponivel'),
    (1, 12, 'Perle Celeste', 'Disponivel'),
    (2, 1, 'Perle Celeste', 'Emprestado'),
    (2, 3, 'Aurora Borealis', 'Disponivel'),
    (2, 5, 'Rubis Imperiale', 'Emprestado'),
    (2, 8, 'Perle Celeste', 'Compartilhado'),
    (2, 11, 'Perle Celeste', 'Compartilhado'),
    (2, 14, 'Perle Celeste', 'Disponivel'),
    (3, 2, 'Aurora Borealis', 'Disponivel'),
    (3, 4, 'Eclipse Noir', 'Indisponivel'),
    (3, 6, 'Rubis Imperiale', 'Disponivel'),
    (3, 9, 'Rubis Imperiale', 'Disponivel'),
    (3, 12, 'Perle Celeste', 'Disponivel'),
    (3, 13, 'Perle Celeste', 'Compartilhado'),
    (4, 1, 'Perle Celeste', 'Compartilhado'),
    (4, 5, 'Rubis Imperiale', 'Compartilhado'),
    (4, 8, 'Perle Celeste', 'Compartilhado'),
    (4, 11, 'Perle Celeste', 'Compartilhado'),
    (4, 13, 'Perle Celeste', 'Compartilhado'),
    (4, 15, 'Eclipse Noir', 'Disponivel'),
    (5, 10, 'Eclipse Noir', 'Disponivel'),
    (5, 15, 'Eclipse Noir', 'Disponivel'),
    (5, 7, 'Aurora Borealis', 'Disponivel');

-- POSSÍVEL VERSÃO

-- TABELA PERSONAGEM
CREATE TABLE personagem (
        idPersonagem INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(100),
        tipo VARCHAR(30)
    );

-- TABELA EVENTO
CREATE TABLE evento (
        idEvento INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(120),
        local_evento VARCHAR(120),
        data_evento DATETIME,
        dress_code_min INT
    );

-- TABELA CLOSET
CREATE TABLE closet (
        idCloset INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(100),
        tipo_acesso VARCHAR(30)
    );

-- TABELA OBJETO
CREATE TABLE objeto (
        idObjeto INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(200),
        categoria VARCHAR(30),
        elegancia INT,
        disponivel TINYINT,
        exclusivo TINYINT,
        data_liberacao DATE,
        fkCloset INT,
        CONSTRAINT fkObjetoCloset FOREIGN KEY (fkCloset) REFERENCES closet (idCloset)
    );

-- RELAÇÃO PERSONAGEM x OBJETO
CREATE TABLE personagem_objeto (
        idPersonagemObjeto INT PRIMARY KEY AUTO_INCREMENT,
        fkPersonagem INT,
        fkObjeto INT,
        tipo_relacao VARCHAR(30),
        CONSTRAINT fkPOPersonagem FOREIGN KEY (fkPersonagem) REFERENCES personagem (idPersonagem),
        CONSTRAINT fkPOObjeto FOREIGN KEY (fkObjeto) REFERENCES objeto (idObjeto)
    );

-- RELAÇÃO EVENTO x OBJETO
CREATE TABLE evento_objeto (
        idEventoObjeto INT PRIMARY KEY AUTO_INCREMENT,
        fkEvento INT,
        fkObjeto INT,
        compatibilidade INT,
        CONSTRAINT fkEOEvento FOREIGN KEY (fkEvento) REFERENCES evento (idEvento),
        CONSTRAINT fkEOObjeto FOREIGN KEY (fkObjeto) REFERENCES objeto (idObjeto)
    );

-- PERMISSÃO DE ACESSO AOS CLOSETS
CREATE TABLE permissao_closet (
        idPermissao INT PRIMARY KEY AUTO_INCREMENT,
        fkPersonagem INT,
        fkCloset INT,
        CONSTRAINT fkPermissaoPersonagem FOREIGN KEY (fkPersonagem) REFERENCES personagem (idPersonagem),
        CONSTRAINT fkPermissaoCloset FOREIGN KEY (fkCloset) REFERENCES closet (idCloset)
    );

-- PERSONAGENS
INSERT INTO personagem (nome, tipo) VALUES
    ('Barbie', 'Principal'),
    ('Ken Alistair Beaumont', 'Acompanhante'),
    ('Skipper Celestine', 'Irmã'),
    ('Stacie Aurora', 'Irmã'),
    ('Chelsea Elodie', 'Irmã');

-- EVENTO
INSERT INTO evento (nome, local_evento, data_evento, dress_code_min)VALUES
    ('Golden Prestige Dinner','Le Château Lumière - Salão Aurora Royale','2026-06-12 20:00:00',8);

-- CLOSETS
INSERT INTO closet (nome, tipo_acesso) VALUES
    ('Aurora Borealis', 'Compartilhado'),
    ('Rubis Imperiale', 'Premium'),
    ('Perle Celeste', 'Compartilhado'),
    ('Eclipse Noir', 'Restrito');

-- OBJETOS
INSERT INTO objeto (nome,categoria,elegancia,disponivel,exclusivo,data_liberacao,fkCloset) VALUES
    ('Maison Elegance Lumiere Sapphire Mist Couture','Vestido',10,1,0,'2026-06-10',1),
    ('Velvet Moon Eclipse Signature','Sapato',9,1,0,'2026-06-10',1),
    ('Royal Essence Frost Champagne Deluxe Prestige','Bolsa',9,1,0,'2026-06-10',2),
    ('Cristaux de Lune Infinite Supreme','Acessorio',10,1,0,'2026-06-10',3),
    ('Aurora Prism Celestial Edition','Acessorio',9,1,0,'2026-06-10',3),
    ('Noir Shadow Exclusive','Sapato',10,1,1,'2026-06-10',4);

-- RELAÇÃO PERSONAGEM x OBJETO
INSERT INTO personagem_objeto (fkPersonagem, fkObjeto, tipo_relacao) VALUES
    (1, 1, 'Proprietaria'),
    (1, 2, 'Proprietaria'),
    (4, 3, 'Compartilhado'),
    (5, 4, 'Compartilhado'),
    (5, 5, 'Compartilhado'),
    (2, 6, 'Exclusivo');

-- RELAÇÃO EVENTO x OBJETO
INSERT INTO evento_objeto (fkEvento, fkObjeto, compatibilidade) VALUES
    (1, 1, 10),
    (1, 2, 9),
    (1, 3, 9),
    (1, 4, 10),
    (1, 5, 9),
    (1, 6, 8);

-- PERMISSÃO DOS CLOSETS
INSERT INTO permissao_closet (fkPersonagem, fkCloset) VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (3, 1),
    (4, 2),
    (5, 3);