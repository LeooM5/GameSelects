
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

-- INSERT OBJETO
INSERT INTO objeto (nome, categoria, elegancia, disponivel, exclusivo, data_liberacao, fkCloset) VALUES
('Maison de Vallière Étoile Nocturne Sapphire Haute Couture Collection', 'Vestido', 10, TRUE, FALSE, '2026-06-10', 1),
('Velvet Obsidian Moonlight Swarovski Limited Signature Heels', 'Sapato', 9, TRUE, FALSE, '2026-06-10', 1),
('Royal Imperial Crystal Frost Champagne Diamond Edition Handbag', 'Bolsa', 9, TRUE, FALSE, '2026-06-10', 2),
('Collier Lumière Éternelle de Versailles Infinite Prestige', 'Acessorio', 10, TRUE, FALSE, '2026-06-10', 3),
('Aurora Celestial Prism Platinum Exclusive Crown Edition', 'Acessorio', 9, TRUE, FALSE, '2026-06-10', 3),
('Noir Phantom Eclipse Carbon Velvet Private Collection', 'Sapato', 10, TRUE, TRUE, '2026-06-10', 4),
('Grand Duchess Rosé Diamond Silk Infinity Gown', 'Vestido', 10, TRUE, TRUE, '2026-06-11', 2),
('Midnight Royale Golden Pearl Reflection Stiletto', 'Sapato', 8, TRUE, FALSE, '2026-06-09', 1),
('Imperatrice Celeste Aurora Platinum Mini Bag', 'Bolsa', 10, TRUE, TRUE, '2026-06-08', 2),
('Crystal Mirage Lunar Symphony Choker Collection', 'Acessorio', 9, TRUE, FALSE, '2026-06-07', 3),
('Opaline Velvet Aristocrat Couture Evening Dress', 'Vestido', 9, TRUE, FALSE, '2026-06-06', 1),
('Sovereign Black Diamond Runway Prestige Heels', 'Sapato', 10, TRUE, TRUE, '2026-06-05', 4),
('Elixir Royale Sapphire Cascade Luxury Clutch', 'Bolsa', 8, TRUE, FALSE, '2026-06-05', 2),
('Celestial Whisper Frozen Pearl Tiara Collection', 'Acessorio', 10, TRUE, FALSE, '2026-06-04', 3),
('Monarch Eclipse Velvet Night Gala Couture', 'Vestido', 10, TRUE, TRUE, '2026-06-03', 4),
('Astral Velvet Diamond Mirage Runway Collection', 'Vestido', 9, TRUE, FALSE, '2026-06-02', 1),
('Lunar Eclipse Prestige Crystal Sandals', 'Sapato', 8, TRUE, FALSE, '2026-06-02', 1),
('Golden Aristocrat Platinum Evening Clutch', 'Bolsa', 10, TRUE, TRUE, '2026-06-01', 2),
('Frozen Celeste Infinity Pearl Necklace', 'Acessorio', 9, TRUE, FALSE, '2026-06-01', 3),
('Royal Noir Velvet Crown Limited Edition', 'Acessorio', 10, TRUE, TRUE, '2026-05-31', 4),
('Imperial Sapphire Galaxy Couture Dress', 'Vestido', 10, TRUE, FALSE, '2026-05-31', 1),
('Diamond Symphony Obsidian Prestige Boots', 'Sapato', 9, TRUE, TRUE, '2026-05-30', 4),
('Celestial Moonlight Luxury Crystal Bag', 'Bolsa', 8, TRUE, FALSE, '2026-05-30', 2),
('Versailles Eternal Shine Tiara Collection', 'Acessorio', 10, TRUE, FALSE, '2026-05-29', 3),
('Phantom Velvet Eclipse Runway Gown', 'Vestido', 10, TRUE, TRUE, '2026-05-29', 4),
('Aurora Royale Diamond Reflection Dress', 'Vestido', 9, TRUE, FALSE, '2026-05-28', 1),
('Sapphire Mirage Infinite Prestige Heels', 'Sapato', 10, TRUE, FALSE, '2026-05-28', 1),
('Golden Frost Imperial Signature Purse', 'Bolsa', 9, TRUE, TRUE, '2026-05-27', 2),
('Crystal Aurora Celestial Choker Deluxe', 'Acessorio', 8, TRUE, FALSE, '2026-05-27', 3),
('Velvet Duchess Platinum Couture Edition', 'Vestido', 10, TRUE, TRUE, '2026-05-26', 2),
('Moonlight Obsidian Swarovski Glamour Heels', 'Sapato', 9, TRUE, FALSE, '2026-05-26', 1),
('Royal Diamond Cascade Evening Handbag', 'Bolsa', 10, TRUE, FALSE, '2026-05-25', 2),
('Infinite Celestial Pearl Crown', 'Acessorio', 9, TRUE, FALSE, '2026-05-25', 3),
('Noir Eclipse Aristocrat Runway Dress', 'Vestido', 10, TRUE, TRUE, '2026-05-24', 4),
('Imperatrice Velvet Diamond Couture Gown', 'Vestido', 10, TRUE, FALSE, '2026-05-24', 1),
('Luxe Sapphire Mirage Signature Boots', 'Sapato', 9, TRUE, TRUE, '2026-05-23', 4),
('Golden Celeste Reflection Crystal Purse', 'Bolsa', 8, TRUE, FALSE, '2026-05-23', 2),
('Frozen Pearl Infinite Tiara Prestige', 'Acessorio', 10, TRUE, FALSE, '2026-05-22', 3),
('Phantom Noir Platinum Velvet Collection', 'Vestido', 10, TRUE, TRUE, '2026-05-22', 4),
('Royal Moonlight Swarovski Elite Sandals', 'Sapato', 8, TRUE, FALSE, '2026-05-21', 1),
('Crystal Symphony Diamond Edition Clutch', 'Bolsa', 10, TRUE, TRUE, '2026-05-21', 2),
('Celestial Aurora Infinite Choker', 'Acessorio', 9, TRUE, FALSE, '2026-05-20', 3),
('Versailles Obsidian Couture Gala Dress', 'Vestido', 10, TRUE, TRUE, '2026-05-20', 4),
('Imperial Velvet Sapphire Runway Collection', 'Vestido', 9, TRUE, FALSE, '2026-05-19', 1),
('Diamond Eclipse Prestige Stiletto Heels', 'Sapato', 10, TRUE, FALSE, '2026-05-19', 1),
('Golden Mirage Royal Evening Purse', 'Bolsa', 8, TRUE, FALSE, '2026-05-18', 2),
('Lunar Crystal Aristocrat Tiara', 'Acessorio', 10, TRUE, TRUE, '2026-05-18', 3),
('Monarch Platinum Velvet Infinite Gown', 'Vestido', 10, TRUE, TRUE, '2026-05-17', 4),
('Aurora Sapphire Celestial Runway Dress', 'Vestido', 9, TRUE, FALSE, '2026-05-17', 1),
('Velvet Diamond Signature Elite Boots', 'Sapato', 10, TRUE, TRUE, '2026-05-16', 4),
('Royal Champagne Crystal Deluxe Handbag', 'Bolsa', 9, TRUE, FALSE, '2026-05-16', 2),
('Frozen Aurora Infinite Pearl Crown', 'Acessorio', 10, TRUE, FALSE, '2026-05-15', 3),
('Noir Eclipse Swarovski Couture Edition', 'Vestido', 10, TRUE, TRUE, '2026-05-15', 4),
('Imperatrice Golden Velvet Reflection Gown', 'Vestido', 9, TRUE, FALSE, '2026-05-14', 1),
('Luxe Moonlight Obsidian Prestige Heels', 'Sapato', 8, TRUE, FALSE, '2026-05-14', 1),
('Diamond Symphony Platinum Evening Clutch', 'Bolsa', 10, TRUE, TRUE, '2026-05-13', 2),
('Celestial Crystal Infinite Tiara Deluxe', 'Acessorio', 9, TRUE, FALSE, '2026-05-13', 3),
('Royal Phantom Velvet Aristocrat Dress', 'Vestido', 10, TRUE, TRUE, '2026-05-12', 4),
('Aurora Mirage Sapphire Couture Collection', 'Vestido', 9, TRUE, FALSE, '2026-05-12', 1),
('Golden Eclipse Swarovski Luxury Sandals', 'Sapato', 10, TRUE, FALSE, '2026-05-11', 1),
('Imperial Crystal Frost Signature Purse', 'Bolsa', 9, TRUE, TRUE, '2026-05-11', 2),
('Frozen Moonlight Celestial Choker', 'Acessorio', 10, TRUE, FALSE, '2026-05-10', 3),
('Monarch Noir Velvet Prestige Runway', 'Vestido', 10, TRUE, TRUE, '2026-05-10', 4),
('Diamond Aurora Infinite Reflection Gown', 'Vestido', 10, TRUE, FALSE, '2026-05-09', 1),
('Velvet Royal Platinum Signature Boots', 'Sapato', 9, TRUE, TRUE, '2026-05-09', 4),
('Crystal Symphony Elite Evening Handbag', 'Bolsa', 8, TRUE, FALSE, '2026-05-08', 2),
('Celestial Eclipse Pearl Crown Edition', 'Acessorio', 10, TRUE, FALSE, '2026-05-08', 3),
('Imperatrice Noir Diamond Couture Dress', 'Vestido', 10, TRUE, TRUE, '2026-05-07', 4),
('Aurora Sapphire Frozen Prestige Collection', 'Vestido', 9, TRUE, FALSE, '2026-05-07', 1),
('Golden Moonlight Reflection Stiletto', 'Sapato', 8, TRUE, FALSE, '2026-05-06', 1),
('Royal Crystal Mirage Deluxe Purse', 'Bolsa', 10, TRUE, TRUE, '2026-05-06', 2),
('Infinite Celeste Diamond Choker', 'Acessorio', 9, TRUE, FALSE, '2026-05-05', 3),
('Phantom Velvet Obsidian Gala Couture', 'Vestido', 10, TRUE, TRUE, '2026-05-05', 4),
('Lunar Sapphire Aristocrat Evening Dress', 'Vestido', 9, TRUE, FALSE, '2026-05-04', 1),
('Diamond Eclipse Golden Prestige Heels', 'Sapato', 10, TRUE, FALSE, '2026-05-04', 1),
('Crystal Aurora Platinum Elite Bag', 'Bolsa', 8, TRUE, FALSE, '2026-05-03', 2),
('Frozen Versailles Infinite Tiara', 'Acessorio', 10, TRUE, TRUE, '2026-05-03', 3),
('Royal Noir Velvet Signature Collection', 'Vestido', 10, TRUE, TRUE, '2026-05-02', 4),
('Imperial Sapphire Reflection Couture', 'Vestido', 9, TRUE, FALSE, '2026-05-02', 1),
('Moonlight Diamond Mirage Luxury Boots', 'Sapato', 10, TRUE, TRUE, '2026-05-01', 4),
('Golden Crystal Frost Evening Clutch', 'Bolsa', 9, TRUE, FALSE, '2026-05-01', 2),
('Celestial Pearl Infinite Crown Edition', 'Acessorio', 10, TRUE, FALSE, '2026-04-30', 3),
('Monarch Eclipse Platinum Gala Dress', 'Vestido', 10, TRUE, TRUE, '2026-04-30', 4),
('Aurora Velvet Swarovski Couture Gown', 'Vestido', 9, TRUE, FALSE, '2026-04-29', 1),
('Royal Obsidian Signature Stiletto', 'Sapato', 8, TRUE, FALSE, '2026-04-29', 1),
('Diamond Symphony Crystal Handbag Deluxe', 'Bolsa', 10, TRUE, TRUE, '2026-04-28', 2),
('Frozen Celestial Reflection Necklace', 'Acessorio', 9, TRUE, FALSE, '2026-04-28', 3),
('Noir Phantom Infinite Prestige Dress', 'Vestido', 10, TRUE, TRUE, '2026-04-27', 4),
('Imperatrice Sapphire Velvet Runway', 'Vestido', 10, TRUE, FALSE, '2026-04-27', 1),
('Golden Eclipse Elite Swarovski Heels', 'Sapato', 9, TRUE, FALSE, '2026-04-26', 1),
('Crystal Aurora Platinum Signature Purse', 'Bolsa', 8, TRUE, TRUE, '2026-04-26', 2),
('Versailles Frozen Diamond Tiara', 'Acessorio', 10, TRUE, FALSE, '2026-04-25', 3),
('Royal Velvet Aristocrat Couture Dress', 'Vestido', 10, TRUE, TRUE, '2026-04-25', 4),
('Lunar Mirage Sapphire Collection Gown', 'Vestido', 9, TRUE, FALSE, '2026-04-24', 1),
('Diamond Noir Reflection Prestige Boots', 'Sapato', 10, TRUE, TRUE, '2026-04-24', 4),
('Golden Celestial Crystal Evening Bag', 'Bolsa', 9, TRUE, FALSE, '2026-04-23', 2),
('Infinite Pearl Symphony Crown', 'Acessorio', 10, TRUE, FALSE, '2026-04-23', 3),
('Monarch Velvet Eclipse Gala Edition', 'Vestido', 10, TRUE, TRUE, '2026-04-22', 4),
('Aurora Royal Sapphire Prestige Dress', 'Vestido', 9, TRUE, FALSE, '2026-04-22', 1),
('Obsidian Swarovski Infinite Heels', 'Sapato', 8, TRUE, FALSE, '2026-04-21', 1),
('Crystal Diamond Aristocrat Clutch', 'Bolsa', 10, TRUE, TRUE, '2026-04-21', 2),
('Frozen Moonlight Platinum Necklace', 'Acessorio', 9, TRUE, FALSE, '2026-04-20', 3),
('Imperial Noir Velvet Signature Gown', 'Vestido', 10, TRUE, TRUE, '2026-04-20', 4);

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


