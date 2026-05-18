CREATE DATABASE fashionlandia;
USE fashionlandia;

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
    local_evento VARCHAR(150),
    data_evento DATETIME,
    dress_code_min INT,
    CONSTRAINT chkDressCode CHECK (dress_code_min BETWEEN 1 AND 10)
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
    CONSTRAINT chkElegancia CHECK (elegancia BETWEEN 1 AND 10),
    CONSTRAINT fkObjetoCloset FOREIGN KEY (fkCloset)
        REFERENCES closet (idCloset)
);


-- RELAÇÃO N:N PERSONAGEM x OBJETO

CREATE TABLE personagem_objeto (
    fkPersonagem INT,
    fkObjeto INT,
    tipo_relacao VARCHAR(30) ,
    PRIMARY KEY (fkPersonagem , fkObjeto),
    CONSTRAINT fkPOPersonagem FOREIGN KEY (fkPersonagem)
        REFERENCES personagem (idPersonagem),
    CONSTRAINT fkPOObjeto FOREIGN KEY (fkObjeto)
        REFERENCES objeto (idObjeto)
);


-- RELAÇÃO N:N EVENTO x OBJETO

CREATE TABLE evento_objeto (
    fkEvento INT,
    fkObjeto INT,
    compatibilidade INT,
    PRIMARY KEY (fkEvento , fkObjeto),
    CONSTRAINT chkCompatibilidade CHECK (compatibilidade BETWEEN 1 AND 10),
    CONSTRAINT fkEOEvento FOREIGN KEY (fkEvento)
        REFERENCES evento (idEvento),
    CONSTRAINT fkEOObjeto FOREIGN KEY (fkObjeto)
        REFERENCES objeto (idObjeto)
);


-- RELAÇÃO N:N PERSONAGEM x CLOSET

CREATE TABLE permissao_closet (
    fkPersonagem INT,
    fkCloset INT,
    PRIMARY KEY (fkPersonagem, fkCloset),
    CONSTRAINT fkPermissaoPersonagem
        FOREIGN KEY (fkPersonagem)
        REFERENCES personagem(idPersonagem),
    CONSTRAINT fkPermissaoCloset
        FOREIGN KEY (fkCloset)
        REFERENCES closet(idCloset)
);

