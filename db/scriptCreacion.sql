BEGIN;

-- Limpieza previa (orden inverso por las claves foráneas)
DROP TABLE IF EXISTS TOR_PAR;
DROP TABLE IF EXISTS PARTICIPANTES;
DROP TABLE IF EXISTS TORNEOS;


-- TORNEOS
CREATE TABLE TORNEOS (
    cod_torneo        INT          NOT NULL,
    nombre            VARCHAR(100) NOT NULL,
    año               INT          NOT NULL,
    num_participantes INT          NOT NULL,
    activo            BOOLEAN      NOT NULL DEFAULT TRUE,
    CONSTRAINT pk_torneos PRIMARY KEY (cod_torneo),
    CONSTRAINT uk_torneos_nombre UNIQUE (nombre)
);


-- PARTICIPANTES
CREATE TABLE PARTICIPANTES (
    cod_participante INT          NOT NULL,
    correo_educaand  VARCHAR(100) NOT NULL,
    nombre           VARCHAR(50)  NOT NULL,
    apellidos        VARCHAR(100) NOT NULL,
    curso            VARCHAR(20)  NOT NULL,
    CONSTRAINT pk_participantes PRIMARY KEY (cod_participante),
    CONSTRAINT uk_participantes_correo UNIQUE (correo_educaand)
);


-- TOR_PAR (relación N:M entre torneos y participantes)
CREATE TABLE TOR_PAR (
    cod_torneo       INT NOT NULL,
    cod_participante INT NOT NULL,
    CONSTRAINT pk_tor_par PRIMARY KEY (cod_torneo, cod_participante),
    CONSTRAINT fk_tor_par_torneo FOREIGN KEY (cod_torneo)
        REFERENCES TORNEOS (cod_torneo)
        ON DELETE CASCADE,
    CONSTRAINT fk_tor_par_participante FOREIGN KEY (cod_participante)
        REFERENCES PARTICIPANTES (cod_participante)
        ON DELETE CASCADE
);

COMMIT;
