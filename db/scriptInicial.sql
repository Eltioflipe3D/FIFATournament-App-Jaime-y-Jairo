BEGIN;

-- torneos
INSERT INTO TORNEOS
(cod_torneo, nombre, año, num_participantes, activo)
VALUES
(1, 'FIFA Les go', 2026, 8, TRUE),
(2, 'fifas world tour', 2025, 4, FALSE);


-- participantes
INSERT INTO PARTICIPANTES
(cod_participante, correo_educaand, nombre, apellidos, curso)
VALUES
(1, 'jaime.farias@g.educaand.es', 'Jaime', 'farias', 'DAM 2'),
(2, 'jairo.zampacheetos@g.educaand.es', 'jairo', 'zampacheetos', 'DAM 2'),
(3, 'hector.morados@g.educaand.es', 'hector', 'el morados', 'DAM 1'),
(4, 'mehdi.delacruz@g.educaand.es', 'mehdi', 'de la cruz', 'DAM 2'),
(5, 'john.fifas@g.educaand.es', 'john', 'fifas', 'DAM 2'),
(6, 'carlos.ortiz@g.educaand.es', 'carlos', 'ortiz', 'DAM 1'),
(7, 'roberto.delasnegras@g.educaand.es', 'roberto', 'de las negras', 'DAM 2'),
(8, 'lucas.sanchino@g.educaand.es', 'lucas', 'sanchez', 'DAM 1');


-- relaciones
INSERT INTO TOR_PAR
(cod_torneo, cod_participante)
VALUES
-- fifa les go (8 participantes)
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),

-- fifas world tour (4 participantes)
(2, 1),
(2, 3),
(2, 5),
(2, 7);

COMMIT;