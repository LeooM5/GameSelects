
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