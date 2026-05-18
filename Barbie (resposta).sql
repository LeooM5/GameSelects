
-- QUESTÕES DIFÍCEIS

-- 1

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
    
-- 2

