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

-- INSERT PERSONAGENS

INSERT INTO personagem (nome, tipo)
VALUES
('Barbie', 'Principal'),
('Ken Alistair Beaumont', 'Acompanhante'),
('Skipper Celestine', 'Irmã'),
('Stacie Aurora', 'Irmã'),
('Chelsea Elodie', 'Irmã');

-- INSERT EVENTO

INSERT INTO evento
(nome, local_evento, data_evento, dress_code_min)
VALUES
(
'Golden Prestige Dinner',
'Le Château Lumière - Salão Aurora Royale',
'2026-06-12 20:00:00',
8
);

-- INSERT CLOSETS

INSERT INTO closet (nome, tipo_acesso)
VALUES
('Aurora Borealis', 'Compartilhado'),
('Rubis Imperiale', 'Premium'),
('Perle Celeste', 'Compartilhado'),
('Eclipse Noir', 'Restrito');

-- INSERT OBJETOS

INSERT INTO objeto
(
nome,
categoria,
elegancia,
disponivel,
exclusivo,
data_liberacao,
fkCloset
)
VALUES
(
'Maison Elegance Lumiere Sapphire Mist Couture',
'Vestido',
10,
TRUE,
FALSE,
'2026-06-10',
1
),
(
'Velvet Moon Eclipse Signature',
'Sapato',
9,
TRUE,
FALSE,
'2026-06-10',
1
),
(
'Royal Essence Frost Champagne Deluxe Prestige',
'Bolsa',
9,
TRUE,
FALSE,
'2026-06-10',
2
),
(
'Cristaux de Lune Infinite Supreme',
'Acessorio',
10,
TRUE,
FALSE,
'2026-06-10',
3
),
(
'Aurora Prism Celestial Edition',
'Acessorio',
9,
TRUE,
FALSE,
'2026-06-10',
3
),
(
'Noir Shadow Exclusive',
'Sapato',
10,
TRUE,
TRUE,
'2026-06-10',
4
);

-- RELAÇÃO PERSONAGEM x OBJETO

INSERT INTO personagem_objeto
(fkPersonagem, fkObjeto, tipo_relacao)
VALUES
(1, 1, 'Proprietaria'),
(1, 2, 'Proprietaria'),
(4, 3, 'Compartilhado'),
(5, 4, 'Compartilhado'),
(5, 5, 'Compartilhado'),
(2, 6, 'Exclusivo');

-- RELAÇÃO EVENTO x OBJETO

INSERT INTO evento_objeto
(fkEvento, fkObjeto, compatibilidade)
VALUES
(1, 1, 10),
(1, 2, 9),
(1, 3, 9),
(1, 4, 10),
(1, 5, 9),
(1, 6, 8);

-- RELAÇÃO PERSONAGEM x CLOSET

INSERT INTO permissao_closet
(fkPersonagem, fkCloset)
VALUES
(1,1),
(1,2),
(1,3),
(3,1),
(4,2),
(5,3);


-- RESPOSTA

SELECT 
    o.nome AS objeto,
    o.categoria,
    o.elegancia,
    c.nome AS closet,
    p.nome AS personagem_relacionado,
    e.nome AS evento,
    e.data_evento
FROM objeto o
INNER JOIN closet c
    ON o.fkCloset = c.idCloset

INNER JOIN personagem_objeto po
    ON o.idObjeto = po.fkObjeto

INNER JOIN personagem p
    ON po.fkPersonagem = p.idPersonagem

INNER JOIN evento_objeto eo
    ON o.idObjeto = eo.fkObjeto

INNER JOIN evento e
    ON eo.fkEvento = e.idEvento

INNER JOIN permissao_closet pc
    ON c.idCloset = pc.fkCloset

INNER JOIN personagem pb
    ON pc.fkPersonagem = pb.idPersonagem

WHERE 
    pb.nome = 'Barbie'
    AND o.disponivel = TRUE
    AND o.exclusivo = FALSE
    AND o.data_liberacao <= DATE(e.data_evento)
    AND o.elegancia >= e.dress_code_min
    AND p.nome IN (
        'Barbie',
        'Skipper Celestine',
        'Stacie Aurora',
        'Chelsea Elodie'
    )
    AND e.nome = 'Golden Prestige Dinner'

ORDER BY 
    o.categoria,
    o.elegancia DESC;
    
    /*
    | objeto                                        | categoria | elegancia | closet          | personagem_relacionado | evento                 | data_evento         |
	| --------------------------------------------- | --------: | --------: | --------------- | ---------------------- | ---------------------- | ------------------- |
	| Cristaux de Lune Infinite Supreme             | Acessorio |        10 | Perle Celeste   | Chelsea Elodie         | Golden Prestige Dinner | 2026-06-12 20:00:00 |
	| Aurora Prism Celestial Edition                | Acessorio |         9 | Perle Celeste   | Chelsea Elodie         | Golden Prestige Dinner | 2026-06-12 20:00:00 |
	| Royal Essence Frost Champagne Deluxe Prestige |     Bolsa |         9 | Rubis Imperiale | Stacie Aurora          | Golden Prestige Dinner | 2026-06-12 20:00:00 |
	| Velvet Moon Eclipse Signature                 |    Sapato |         9 | Aurora Borealis | Barbie                 | Golden Prestige Dinner | 2026-06-12 20:00:00 |
	| Maison Elegance Lumiere Sapphire Mist Couture |   Vestido |        10 | Aurora Borealis | Barbie                 | Golden Prestige Dinner | 2026-06-12 20:00:00 |
    */