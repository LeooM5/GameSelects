
-- INSERT PERSONAGENS
INSERT INTO personagem (nome, tipo)
VALUES
('Barbie', 'Principal'),
('Ken Alistair Beaumont', 'Acompanhante'),
('Skipper Celestine', 'Irmã'),
('Stacie Aurora', 'Irmã'),
('Chelsea Elodie', 'Irmã');

-- INSERT EVENTO
INSERT INTO evento (nome, local_evento, data_evento, dress_code_min) VALUES
('Golden Prestige Dinner','Le Château Lumière - Salão Aurora Royale','2026-06-12 20:00:00',8);

-- INSERT CLOSETS
INSERT INTO closet (nome, tipo_acesso) VALUES
('Aurora Borealis', 'Compartilhado'),
('Rubis Imperiale', 'Premium'),
('Perle Celeste', 'Compartilhado'),
('Eclipse Noir', 'Restrito');

-- INSERT OBJETO
INSERT INTO objeto (nome, categoria, elegancia, disponivel, exclusivo, data_liberacao, fkCloset) VALUES
('Vestido Longo Valentino Noir Couture', 'Vestido', 10, TRUE, FALSE, '2026-06-10', 1),
('Scarpin Christian Lune Swarovski Edition', 'Sapato', 9, TRUE, FALSE, '2026-06-10', 1),
('Bolsa Chanel Crystal Pearl Limited', 'Bolsa', 9, TRUE, FALSE, '2026-06-10', 2),
('Colar Versailles Diamond Essence', 'Acessorio', 10, TRUE, FALSE, '2026-06-10', 3),
('Tiara Aurora Platinum Collection', 'Acessorio', 9, TRUE, FALSE, '2026-06-10', 3),
('Sapato Noir Eclipse Private Edition', 'Sapato', 10, TRUE, TRUE, '2026-06-10', 4),
('Vestido Rosé Duchess Silk Couture', 'Vestido', 10, TRUE, TRUE, '2026-06-11', 2),
('Stiletto Midnight Pearl Reflection', 'Sapato', 8, TRUE, FALSE, '2026-06-09', 1),
('Mini Bag Imperatrice Crystal Gold', 'Bolsa', 10, TRUE, TRUE, '2026-06-08', 2),
('Choker Lunar Crystal Symphony', 'Acessorio', 9, TRUE, FALSE, '2026-06-07', 3),
('Vestido Velvet Aristocrat Evening', 'Vestido', 9, TRUE, FALSE, '2026-06-06', 1),
('Heels Black Diamond Prestige', 'Sapato', 10, TRUE, TRUE, '2026-06-05', 4),
('Clutch Royale Sapphire Cascade', 'Bolsa', 8, TRUE, FALSE, '2026-06-05', 2),
('Tiara Frozen Pearl Deluxe', 'Acessorio', 10, TRUE, FALSE, '2026-06-04', 3),
('Vestido Monarch Velvet Gala', 'Vestido', 10, TRUE, TRUE, '2026-06-03', 4),
('Vestido Astral Diamond Runway', 'Vestido', 9, TRUE, FALSE, '2026-06-02', 1),
('Sandália Lunar Crystal Prestige', 'Sapato', 8, TRUE, FALSE, '2026-06-02', 1),
('Clutch Golden Aristocrat Platinum', 'Bolsa', 10, TRUE, TRUE, '2026-06-01', 2),
('Colar Celeste Pearl Infinity', 'Acessorio', 9, TRUE, FALSE, '2026-06-01', 3),
('Coroa Royal Noir Velvet', 'Acessorio', 10, TRUE, TRUE, '2026-05-31', 4),
('Vestido Imperial Sapphire Couture', 'Vestido', 10, TRUE, FALSE, '2026-05-31', 1),
('Bota Obsidian Prestige Diamond', 'Sapato', 9, TRUE, TRUE, '2026-05-30', 4),
('Bolsa Celestial Moonlight Crystal', 'Bolsa', 8, TRUE, FALSE, '2026-05-30', 2),
('Tiara Versailles Eternal Shine', 'Acessorio', 10, TRUE, FALSE, '2026-05-29', 3),
('Vestido Phantom Velvet Eclipse', 'Vestido', 10, TRUE, TRUE, '2026-05-29', 4),
('Vestido Aurora Diamond Reflection', 'Vestido', 9, TRUE, FALSE, '2026-05-28', 1),
('Heels Sapphire Mirage Prestige', 'Sapato', 10, TRUE, FALSE, '2026-05-28', 1),
('Bolsa Golden Frost Signature', 'Bolsa', 9, TRUE, TRUE, '2026-05-27', 2),
('Choker Crystal Aurora Deluxe', 'Acessorio', 8, TRUE, FALSE, '2026-05-27', 3),
('Vestido Duchess Platinum Couture', 'Vestido', 10, TRUE, TRUE, '2026-05-26', 2),
('Heels Moonlight Swarovski Glam', 'Sapato', 9, TRUE, FALSE, '2026-05-26', 1),
('Handbag Royal Diamond Cascade', 'Bolsa', 10, TRUE, FALSE, '2026-05-25', 2),
('Coroa Infinite Celestial Pearl', 'Acessorio', 9, TRUE, FALSE, '2026-05-25', 3),
('Vestido Noir Aristocrat Runway', 'Vestido', 10, TRUE, TRUE, '2026-05-24', 4),
('Vestido Imperatrice Velvet Diamond', 'Vestido', 10, TRUE, FALSE, '2026-05-24', 1),
('Bota Luxe Sapphire Mirage', 'Sapato', 9, TRUE, TRUE, '2026-05-23', 4),
('Bolsa Golden Reflection Crystal', 'Bolsa', 8, TRUE, FALSE, '2026-05-23', 2),
('Tiara Frozen Pearl Prestige', 'Acessorio', 10, TRUE, FALSE, '2026-05-22', 3),
('Vestido Phantom Noir Platinum', 'Vestido', 10, TRUE, TRUE, '2026-05-22', 4),
('Sandália Royal Moonlight Swarovski', 'Sapato', 8, TRUE, FALSE, '2026-05-21', 1),
('Clutch Crystal Symphony Diamond', 'Bolsa', 10, TRUE, TRUE, '2026-05-21', 2),
('Choker Celestial Aurora Infinite', 'Acessorio', 9, TRUE, FALSE, '2026-05-20', 3),
('Vestido Versailles Obsidian Gala', 'Vestido', 10, TRUE, TRUE, '2026-05-20', 4),
('Vestido Imperial Velvet Sapphire', 'Vestido', 9, TRUE, FALSE, '2026-05-19', 1),
('Stiletto Diamond Eclipse Prestige', 'Sapato', 10, TRUE, FALSE, '2026-05-19', 1),
('Bolsa Golden Mirage Evening', 'Bolsa', 8, TRUE, FALSE, '2026-05-18', 2),
('Tiara Lunar Crystal Aristocrat', 'Acessorio', 10, TRUE, TRUE, '2026-05-18', 3),
('Vestido Monarch Platinum Velvet', 'Vestido', 10, TRUE, TRUE, '2026-05-17', 4),
('Vestido Aurora Sapphire Runway', 'Vestido', 9, TRUE, FALSE, '2026-05-17', 1),
('Bota Velvet Diamond Elite', 'Sapato', 10, TRUE, TRUE, '2026-05-16', 4),
('Handbag Royal Champagne Crystal', 'Bolsa', 9, TRUE, FALSE, '2026-05-16', 2),
('Coroa Frozen Aurora Pearl', 'Acessorio', 10, TRUE, FALSE, '2026-05-15', 3),
('Vestido Noir Swarovski Couture', 'Vestido', 10, TRUE, TRUE, '2026-05-15', 4),
('Vestido Imperatrice Golden Velvet', 'Vestido', 9, TRUE, FALSE, '2026-05-14', 1),
('Heels Luxe Moonlight Obsidian', 'Sapato', 8, TRUE, FALSE, '2026-05-14', 1),
('Clutch Diamond Symphony Platinum', 'Bolsa', 10, TRUE, TRUE, '2026-05-13', 2),
('Tiara Celestial Crystal Infinite', 'Acessorio', 9, TRUE, FALSE, '2026-05-13', 3),
('Vestido Royal Phantom Aristocrat', 'Vestido', 10, TRUE, TRUE, '2026-05-12', 4),
('Vestido Aurora Mirage Sapphire', 'Vestido', 9, TRUE, FALSE, '2026-05-12', 1),
('Sandália Golden Eclipse Swarovski', 'Sapato', 10, TRUE, FALSE, '2026-05-11', 1),
('Bolsa Imperial Crystal Frost', 'Bolsa', 9, TRUE, TRUE, '2026-05-11', 2),
('Choker Frozen Moonlight Celestial', 'Acessorio', 10, TRUE, FALSE, '2026-05-10', 3),
('Vestido Monarch Noir Prestige', 'Vestido', 10, TRUE, TRUE, '2026-05-10', 4);

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


