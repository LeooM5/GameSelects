-- Questões fáceis 

-- 1

SELECT * FROM objeto
WHERE categoria = 'Acessório'
AND disponivel = 1
AND elegancia >= 8;

-- 2

SELECT * FROM objeto
WHERE data_liberacao > '2026-05-10'
ORDER BY elegancia DESC;

-- 3

SELECT * FROM closet
WHERE nome LIKE '%Aurora%'
AND tipo_acesso = 'Compartilhado';

-- 4



-- 5

SELECT * FROM objeto
WHERE disponivel = 1
AND elegancia >= 8
AND exclusivo = 0
AND ( nome LIKE '%Royal%'
OR nome LIKE '%Lumiere%')
ORDER BY elegancia DESC;

-- 6

SELECT * FROM objeto
WHERE exclusivo = 0
AND disponivel = 1
AND ( categoria = 'Bolsa'
OR categoria = 'Sapato'
OR categoria = 'Acessório' )
ORDER BY categoria ASC, elegancia DESC;

-- 7

SELECT * FROM objeto
WHERE exclusivo = 0
AND ( disponivel = 0
OR elegancia < 6 );

-- 8

SELECT * FROM objeto
WHERE exclusivo = 1
AND elegancia > 8
AND ( categoria = 'Vestido'
OR categoria = 'Sapato' );








-- QUESTÕES MÉDIAS

-- 1

SELECT 
    CONCAT('O item ', objeto.nome, ' está guardado no ', closet.nome) AS localizacao
FROM objeto
JOIN closet ON objeto.fkCloset = closet.idCloset;

-- 2

SELECT 
    p.nome AS nome_personagem,
    CASE 
        WHEN o.nome IS NULL THEN 'Nenhum item equipado'
        ELSE CONCAT('Equipado com: ', o.nome)
    END AS status_inventario
FROM personagem p
LEFT JOIN personagem_objeto po ON p.idPersonagem = po.fkPersonagem
LEFT JOIN objeto o ON po.fkObjeto = o.idObjeto;

-- 3

SELECT 
    o.nome AS nome_objeto,
    IFNULL(po.tipo_relacao, 'Disponível para Uso') AS relacao_final
FROM objeto o
LEFT JOIN personagem_objeto po ON o.idObjeto = po.fkObjeto;

-- 4

SELECT 
    o.nome AS nome_objeto,
    CASE 
        WHEN (eo.compatibilidade + o.elegancia) >= 18 THEN 'Combinação Perfeita'
        WHEN (eo.compatibilidade + o.elegancia) = 17 THEN 'Combinação Ok'
        ELSE 'Trocar de Roupa'
    END AS status_harmonia
FROM evento_objeto eo
JOIN objeto o ON eo.fkObjeto = o.idObjeto;

-- 5

SELECT 
    c.nome AS nome_closet,
    IFNULL(CONCAT('Acesso liberado para: ', p.nome), 'Sem usuários permitidos') AS status_acesso
FROM permissao_closet pc
JOIN closet c ON pc.fkCloset = c.idCloset
LEFT JOIN personagem p ON pc.fkPersonagem = p.idPersonagem;

-- 6



-- 7



-- 8



-- 9



-- 10






-- QUESTÕES DIFÍCEIS

-- 1

SELECT o.nome AS objeto,o.categoria,o.elegancia,c.nome AS closet,
    p.nome AS personagem,e.nome AS evento,e.data_evento FROM objeto o
JOIN closet c ON o.fkCloset = c.idCloset
JOIN personagem_objeto po ON o.idObjeto = po.fkObjeto
JOIN personagem p ON po.fkPersonagem = p.idPersonagem
JOIN evento_objeto eo ON o.idObjeto = eo.fkObjeto
JOIN evento e ON eo.fkEvento = e.idEvento
WHERE e.nome = 'Golden Prestige Dinner'
AND o.disponivel = TRUE
AND o.exclusivo = FALSE
AND o.data_liberacao <= DATE(e.data_evento)
AND o.elegancia >= e.dress_code_min
AND p.nome IN ('Barbie','Skipper Celestine','Stacie Aurora','Chelsea Elodie')
ORDER BY o.elegancia DESC
LIMIT 3;

-- 2

SELECT p.nome, COUNT(o.idObjeto) AS total_objetos FROM personagem p
JOIN personagem_objeto po ON p.idPersonagem = po.fkPersonagem
JOIN objeto o ON po.fkObjeto = o.idObjeto
JOIN evento_objeto eo ON o.idObjeto = eo.fkObjeto
JOIN evento e ON eo.fkEvento = e.idEvento
WHERE e.nome = 'Golden Prestige Dinner'
AND o.disponivel = TRUE
AND o.exclusivo = FALSE
AND o.elegancia >= e.dress_code_min
GROUP BY p.nome
HAVING COUNT(o.idObjeto) > 1
ORDER BY total_objetos DESC;

-- 3

SELECT c.nome, COUNT(o.idObjeto) AS total_objetos
FROM closet c JOIN objeto o ON c.idCloset = o.fkCloset
JOIN evento_objeto eo ON o.idObjeto = eo.fkObjeto
JOIN evento e ON eo.fkEvento = e.idEvento
WHERE e.nome = 'Golden Prestige Dinner'
AND o.disponivel = TRUE
AND o.exclusivo = FALSE
AND o.data_liberacao <= DATE(e.data_evento)
AND o.elegancia >= e.dress_code_min
GROUP BY c.nome
HAVING COUNT(o.idObjeto) > 2;

-- 4

SELECT nome FROM closet
WHERE tipo_acesso = 'Premium'
AND idCloset NOT IN (
    SELECT o.fkCloset
    FROM objeto o
    JOIN evento_objeto eo
        ON o.idObjeto = eo.fkObjeto
    JOIN evento e
        ON eo.fkEvento = e.idEvento
    WHERE e.nome = 'Golden Prestige Dinner'
    AND o.disponivel = TRUE
    AND o.exclusivo = FALSE
    AND o.data_liberacao <= DATE(e.data_evento)
    AND o.elegancia >= e.dress_code_min
);

-- 5

SELECT o.categoria, COUNT(o.idObjeto) AS total_objetos
FROM objeto o JOIN evento_objeto eo ON o.idObjeto = eo.fkObjeto
JOIN evento e ON eo.fkEvento = e.idEvento
WHERE e.nome = 'Golden Prestige Dinner'
AND o.disponivel = TRUE
AND o.exclusivo = FALSE
AND o.elegancia >= e.dress_code_min
GROUP BY o.categoria
HAVING COUNT(o.idObjeto) > 3
ORDER BY total_objetos DESC;