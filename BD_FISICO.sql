/* BD_PACIENTES_LOGICO: */

CREATE TABLE IF NOT EXISTS PACIENTE (
    codigo SERIAL PRIMARY KEY,
    cpf BIGINT,
    nome VARCHAR(80),
    data_nasc DATE,
    id VARCHAR(30)
);

CREATE TABLE APARELHO (
    codigo serial PRIMARY KEY,
    marca VARCHAR(80),
    disponivel BOOLEAN
);

CREATE TABLE REGISTRO_EXAME (
    codigo serial PRIMARY KEY,
    data_hora_geracao TIMESTAMP,
    condicaoEhPatologica BOOLEAN,
    fk_exame_codigo INTEGER
);

CREATE TABLE RADIOLOGISTA (
    codigo serial PRIMARY KEY,
    cpf BIGINT,
    nome VARCHAR(80),
    disponivel BOOLEAN
);

CREATE TABLE PATOLOGIA (
    codigo serial PRIMARY KEY,
    nome VARCHAR(50),
    nivel_gravidade INTEGER
);

CREATE TABLE LAUDO (
    codigo serial PRIMARY KEY,
    data_hora_geracao TIMESTAMP,
    fk_radiologista_codigo INTEGER,
    fk_exame_codigo INTEGER
);

CREATE TABLE IMAGEM_RECONHECIMENTO (
    codigo serial PRIMARY KEY,
    img VARCHAR(150)
    fk_registro_exame_codigo INTEGER
);

CREATE TABLE EXAME (
    codigo serial PRIMARY KEY,
    data_hora_realizacao TIMESTAMP,
    fk_paciente_codigo INTEGER,
    fk_aparelho_codigo INTEGER
);

CREATE TABLE PREDICAO (
    fk_patologia_codigo INTEGER,
    fk_registro_exame_codigo INTEGER,
    confiabilidade DECIMAL,
    codigo serial PRIMARY KEY
);

CREATE TABLE PATOLOGIA_LAUDO (
    fk_laudo_codigo INTEGER,
    fk_patologia_codigo INTEGER,
    codigo serial PRIMARY KEY
);

ALTER TABLE REGISTRO_EXAME ADD CONSTRAINT FK_REGISTRO_EXAME_2
    FOREIGN KEY (fk_exame_codigo)
    REFERENCES EXAME (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE LAUDO ADD CONSTRAINT FK_LAUDO_2
    FOREIGN KEY (fk_radiologista_codigo)
    REFERENCES RADIOLOGISTA (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE LAUDO ADD CONSTRAINT FK_LAUDO_3
    FOREIGN KEY (fk_exame_codigo)
    REFERENCES EXAME (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE IMAGEM_RECONHECIMENTO ADD CONSTRAINT FK_IMAGEM_RECONHECIMENTO_2
    FOREIGN KEY (fk_registro_exame_codigo)
    REFERENCES REGISTRO_EXAME (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE EXAME ADD CONSTRAINT FK_EXAME_2
    FOREIGN KEY (fk_paciente_codigo)
    REFERENCES PACIENTE (codigo)
    ON DELETE RESTRICT;
 
ALTER TABLE EXAME ADD CONSTRAINT FK_EXAME_3
    FOREIGN KEY (fk_aparelho_codigo)
    REFERENCES APARELHO (codigo)
    ON DELETE CASCADE;
 
ALTER TABLE PREDICAO ADD CONSTRAINT FK_PREDICAO_1
    FOREIGN KEY (fk_patologia_codigo)
    REFERENCES PATOLOGIA (codigo)
    ON DELETE SET NULL;
 
ALTER TABLE PREDICAO ADD CONSTRAINT FK_PREDICAO_2
    FOREIGN KEY (fk_registro_exame_codigo)
    REFERENCES REGISTRO_EXAME (codigo)
    ON DELETE SET NULL;
 
ALTER TABLE PATOLOGIA_LAUDO ADD CONSTRAINT FK_PATOLOGIA_LAUDO_1
    FOREIGN KEY (fk_laudo_codigo)
    REFERENCES LAUDO (codigo)
    ON DELETE SET NULL;
 
ALTER TABLE PATOLOGIA_LAUDO ADD CONSTRAINT FK_PATOLOGIA_LAUDO_2
    FOREIGN KEY (fk_patologia_codigo)
    REFERENCES PATOLOGIA (codigo)
    ON DELETE SET NULL;    