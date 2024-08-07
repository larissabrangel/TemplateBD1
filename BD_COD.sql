CREATE TABLE IF NOT EXISTS PACIENTE (
    codigo SERIAL PRIMARY KEY,
    cpf BIGINT,
    nome VARCHAR(80),
    data_nasc DATE,
    id VARCHAR(30)
);

CREATE TABLE APARELHO (
    codigo SERIAL PRIMARY KEY,
    marca VARCHAR(80),
    disponivel BOOLEAN
);

CREATE TABLE REGISTRO_EXAME (
    codigo SERIAL PRIMARY KEY,
    data_hora_geracao TIMESTAMP,
    condicaoEhPatologica BOOLEAN,
    fk_exame_codigo INTEGER
);

CREATE TABLE RADIOLOGISTA (
    codigo SERIAL PRIMARY KEY,
    cpf BIGINT,
    nome VARCHAR(80),
    disponivel BOOLEAN
);

CREATE TABLE PATOLOGIA (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    nivel_gravidade INTEGER
);

CREATE TABLE LAUDO (
    codigo SERIAL PRIMARY KEY,
    data_hora_geracao TIMESTAMP,
    fk_radiologista_codigo INTEGER,
    fk_exame_codigo INTEGER
);

CREATE TABLE IMAGEM_RECONHECIMENTO (
    codigo SERIAL PRIMARY KEY,
    img VARCHAR(150),
    fk_registro_exame_codigo INTEGER
);

CREATE TABLE EXAME (
    codigo SERIAL PRIMARY KEY,
    data_hora_realizacao TIMESTAMP,
    fk_paciente_codigo INTEGER,
    fk_aparelho_codigo INTEGER
);

CREATE TABLE PREDICAO (
    codigo SERIAL PRIMARY KEY,
    fk_patologia_codigo INTEGER,
    fk_registro_exame_codigo INTEGER,
    confiabilidade DECIMAL
);

CREATE TABLE PATOLOGIA_LAUDO (
    codigo SERIAL PRIMARY KEY,
    fk_laudo_codigo INTEGER,
    fk_patologia_codigo INTEGER
);

ALTER TABLE REGISTRO_EXAME
ADD CONSTRAINT FK_REGISTRO_EXAME_2
FOREIGN KEY (fk_exame_codigo)
REFERENCES EXAME (codigo)
ON DELETE CASCADE;

ALTER TABLE LAUDO
ADD CONSTRAINT FK_LAUDO_2
FOREIGN KEY (fk_radiologista_codigo)
REFERENCES RADIOLOGISTA (codigo)
ON DELETE CASCADE;

ALTER TABLE LAUDO
ADD CONSTRAINT FK_LAUDO_3
FOREIGN KEY (fk_exame_codigo)
REFERENCES EXAME (codigo)
ON DELETE CASCADE;

ALTER TABLE IMAGEM_RECONHECIMENTO
ADD CONSTRAINT FK_IMAGEM_RECONHECIMENTO_2
FOREIGN KEY (fk_registro_exame_codigo)
REFERENCES REGISTRO_EXAME (codigo)
ON DELETE RESTRICT;

ALTER TABLE EXAME
ADD CONSTRAINT FK_EXAME_2
FOREIGN KEY (fk_paciente_codigo)
REFERENCES PACIENTE (codigo)
ON DELETE RESTRICT;

ALTER TABLE EXAME
ADD CONSTRAINT FK_EXAME_3
FOREIGN KEY (fk_aparelho_codigo)
REFERENCES APARELHO (codigo)
ON DELETE CASCADE;

ALTER TABLE PREDICAO
ADD CONSTRAINT FK_PREDICAO_1
FOREIGN KEY (fk_patologia_codigo)
REFERENCES PATOLOGIA (codigo)
ON DELETE SET NULL;

ALTER TABLE PREDICAO
ADD CONSTRAINT FK_PREDICAO_2
FOREIGN KEY (fk_registro_exame_codigo)
REFERENCES REGISTRO_EXAME (codigo)
ON DELETE SET NULL;

ALTER TABLE PATOLOGIA_LAUDO
ADD CONSTRAINT FK_PATOLOGIA_LAUDO_1
FOREIGN KEY (fk_laudo_codigo)
REFERENCES LAUDO (codigo)
ON DELETE SET NULL;

ALTER TABLE PATOLOGIA_LAUDO
ADD CONSTRAINT FK_PATOLOGIA_LAUDO_2
FOREIGN KEY (fk_patologia_codigo)
REFERENCES PATOLOGIA (codigo)
ON DELETE SET NULL;


INSERT INTO PACIENTE (codigo, cpf, nome, data_nasc, id) VALUES
(1, 12345678900, 'Joana Darc', '1412-06-01', 'ID6667'),
(2, 23456789100, 'Marcelo Rossi', '1967-03-20', 'ID6869'),
(3, 34567898700, 'Carlinhos Maia', '1991-05-12', 'ID7071'),
(4, 23434545600, 'Edgar Allan Poe', '1809-01-19', 'ID7273'),
(5, 07056912399, 'Franz Kafka', '1883-06-02', 'ID7475'),
(6, 98765432100, 'Bola de Neve', '1945-03-20', 'ID7677'),
(7, 87654321000, 'Garfield', '1978-06-19', 'ID7879'),
(8, 76543210900, 'Homer Simpson', '1956-05-12', 'ID8081'),
(9, 65432109800, 'Bart Simpson', '1979-04-01', 'ID8283'),
(10, 54321098700, 'Don Quixote', '1605-01-01', 'ID8485'),
(11, 43210987600, 'Winnie the Pooh', '1921-08-21', 'ID8687'),
(12, 32109876500, 'Shrek', '2001-03-18', 'ID8889'),
(13, 21098765400, 'Chewbacca', '0007-09-07', 'ID9091'),
(14, 10987654300, 'Pikachu', '1996-02-27', 'ID9293'),
(15, 09876543200, 'Smeagol', '2430-03-14', 'ID9495');


INSERT INTO APARELHO (codigo, marca, disponivel) VALUES
(1, 'Philips', true),
(2, 'Siemens', false),
(3, 'GE Healthcare', true),
(4, 'Toshiba', true),
(5, 'Canon', false),
(6, 'Fujifilm', true),
(7, 'Samsung', true),
(8, 'Hitachi', false),
(9, 'Agfa', true),
(10, 'Mindray', true),
(11, 'Carestream', false),
(12, 'Hologic', true),
(13, 'Biplane', true),
(14, 'Shimadzu', false),
(15, 'Medtronic', true);

INSERT INTO REGISTRO_EXAME (codigo, data_hora_geracao, condicaoEhPatologica, fk_exame_codigo) VALUES
(1, '2024-08-02 14:50:00', false, 1),
(2, '2024-08-02 15:20:00', true, 2),
(3, '2024-08-02 16:30:00', true, 3),
(4, '2024-08-02 18:00:00', false, 4),
(5, '2024-08-02 18:45:00', true, 5),
(6, '2024-08-03 09:15:00', false, 6),
(7, '2024-08-03 09:45:00', true, 7),
(8, '2024-08-03 10:15:00', false, 8),
(9, '2024-08-03 11:00:00', true, 9),
(10, '2024-08-03 11:30:00', true, 10),
(11, '2024-08-03 12:00:00', false, 11),
(12, '2024-08-03 12:45:00', true, 12),
(13, '2024-08-03 13:15:00', false, 13),
(14, '2024-08-03 14:00:00', true, 14),
(15, '2024-08-03 14:30:00', false, 15);

INSERT INTO RADIOLOGISTA (codigo, cpf, nome, disponivel) VALUES
(1, 12332123200, 'Beiçola', true),
(2, 98765432199, 'Dr. House', true),
(3, 87654321088, 'Dra. Grey', false),
(4, 76543210977, 'Dr. Cox', true),
(5, 65432109876, 'Dr. Watson', true),
(6, 54321098765, 'Dra. Wilson', false),
(7, 43210987654, 'Dr. Smith', true),
(8, 32109876543, 'Dra. Johnson', true),
(9, 21098765432, 'Dr. Brown', false),
(10, 10987654321, 'Dra. Davis', true),
(11, 09876543210, 'Dr. Martinez', true),
(12, 87654321987, 'Dra. Thompson', false),
(13, 76543219876, 'Dr. Lewis', true),
(14, 65432108765, 'Dra. Clark', true),
(15, 54321097654, 'Dr. Lee', false);


INSERT INTO PATOLOGIA (codigo, nome, nivel_gravidade) VALUES
(1, 'Saúde Normal', 1),
(2, 'Bronquite', 2),
(3, 'Pneumonia', 3),
(4, 'Fratura de Fêmur', 4),
(5, 'Apendicite', 4),
(6, 'Diabetes Tipo 1', 3),
(7, 'Diabetes Tipo 2', 4),
(8, 'Hipertensão Arterial', 3),
(9, 'Câncer de Pulmão', 5),
(10, 'Câncer de Mama', 4),
(11, 'Infecção Urinária', 2),
(12, 'Asma', 2),
(13, 'Tuberculose', 4),
(14, 'Doença Arterial Coronariana', 5),
(15, 'Hepatite Viral', 4);

INSERT INTO LAUDO (codigo, data_hora_geracao, fk_exame_codigo, fk_radiologista_codigo) VALUES
(1, '2024-08-01 15:00:00', 1, 8),
(2, '2024-08-02 16:00:00', 2, 14),
(3, '2024-08-03 17:00:00', 3, 5),
(4, '2024-08-04 10:00:00', 4, 11),
(5, '2024-08-05 11:00:00', 5, 2),
(6, '2024-08-06 12:00:00', 6, 13),
(7, '2024-08-07 13:00:00', 7, 7),
(8, '2024-08-08 14:00:00', 8, 10),
(9, '2024-08-09 15:00:00', 9, 1),
(10, '2024-08-10 16:00:00', 10, 15),
(11, '2024-08-11 17:00:00', 11, 6),
(12, '2024-08-12 10:00:00', 12, 4),
(13, '2024-08-13 11:00:00', 13, 9),
(14, '2024-08-14 12:00:00', 14, 12),
(15, '2024-08-15 13:00:00', 15, 3);

INSERT INTO IMAGEM_RECONHECIMENTO (codigo, img, fk_registro_exame_codigo) VALUES
(1, 'https://entai.png', 1),
(2, 'https://imgx.png', 15),
(3, 'https://rxx.png', 3),
(4, 'https://imgr.png', 8),
(5, 'https://ryx.png', 5),
(6, 'https://abc123.png', 10),
(7, 'https://def456.png', 7),
(8, 'https://ghi789.png', 2),
(9, 'https://jkl012.png', 12),
(10, 'https://mno345.png', 4),
(11, 'https://pqr678.png', 14),
(12, 'https://stu901.png', 9),
(13, 'https://vwx234.png', 11),
(14, 'https://yz567.png', 13),
(15, 'https://123abc.png', 6);


INSERT INTO EXAME (codigo, data_hora_realizacao, fk_paciente_codigo, fk_aparelho_codigo) VALUES
(1, '2024-08-01 08:30:00', 1, 3),
(2, '2024-08-02 09:00:00', 2, 5),
(3, '2024-08-03 10:15:00', 3, 7),
(4, '2024-08-04 11:45:00', 4, 2),
(5, '2024-08-05 12:00:00', 5, 4),
(6, '2024-08-06 13:30:00', 6, 1),
(7, '2024-08-07 14:00:00', 7, 6),
(8, '2024-08-08 15:30:00', 8, 8),
(9, '2024-08-09 16:00:00', 9, 3),
(10, '2024-08-10 08:45:00', 10, 5),
(11, '2024-08-11 09:30:00', 11, 7),
(12, '2024-08-12 10:00:00', 12, 2),
(13, '2024-08-13 11:30:00', 13, 4),
(14, '2024-08-14 12:15:00', 14, 6),
(15, '2024-08-15 13:00:00', 15, 8);

INSERT INTO PREDICAO (codigo, fk_patologia_codigo, fk_registro_exame_codigo, confiabilidade) VALUES
(1, 1, 1, 0.85),
(2, 2, 2, 0.75),
(3, 3, 3, 0.90),
(4, 1, 4, 0.80),
(5, 2, 5, 0.70),
(6, 3, 6, 0.88),
(7, 1, 7, 0.83),
(8, 2, 8, 0.77),
(9, 3, 9, 0.92),
(10, 1, 10, 0.81),
(11, 2, 11, 0.73),
(12, 3, 12, 0.89),
(13, 1, 13, 0.82),
(14, 2, 14, 0.76),
(15, 3, 15, 0.91),
(16, 1, 1, 0.84),
(17, 2, 2, 0.78),
(18, 3, 3, 0.93),
(19, 1, 4, 0.80),
(20, 2, 5, 0.72),
(21, 3, 6, 0.87),
(22, 1, 7, 0.79),
(23, 2, 8, 0.74),
(24, 3, 9, 0.90),
(25, 1, 10, 0.85),
(26, 2, 11, 0.71),
(27, 3, 12, 0.88),
(28, 1, 13, 0.80),
(29, 2, 14, 0.77),
(30, 3, 15, 0.91),
(31, 1, 1, 0.82),
(32, 2, 2, 0.72),
(33, 3, 3, 0.89),
(34, 1, 4, 0.83),
(35, 2, 5, 0.75),
(36, 3, 6, 0.90),
(37, 1, 7, 0.81),
(38, 2, 8, 0.78),
(39, 3, 9, 0.92),
(40, 1, 10, 0.84),
(41, 2, 11, 0.76),
(42, 3, 12, 0.89),
(43, 1, 13, 0.80),
(44, 2, 14, 0.73),
(45, 3, 15, 0.90),
(46, 1, 1, 0.82),
(47, 2, 2, 0.74),
(48, 3, 3, 0.88),
(49, 1, 4, 0.79),
(50, 2, 5, 0.76);

INSERT INTO PATOLOGIA_LAUDO (codigo, fk_laudo_codigo, fk_patologia_codigo) VALUES
(1, 13, 5),
(2, 4, 8),
(3, 7, 2),
(4, 15, 9),
(5, 10, 3),
(6, 1, 11),
(7, 6, 7),
(8, 14, 6),
(9, 8, 12),
(10, 2, 4),
(11, 11, 14),
(12, 5, 1),
(13, 3, 15),
(14, 12, 10),
(15, 9, 13),
(16, 7, 8),
(17, 13, 3),
(18, 4, 2),
(19, 15, 5),
(20, 8, 7),
(21, 10, 12),
(22, 6, 4),
(23, 14, 6),
(24, 1, 11),
(25, 11, 15),
(26, 2, 9),
(27, 12, 13),
(28, 15, 14),
(29, 3, 7),
(30, 13, 10),
(31, 5, 5),
(32, 14, 3),
(33, 11, 12),
(34, 8, 15),
(35, 6, 1),
(36, 4, 8),
(37, 13, 2),
(38, 7, 11),
(39, 9, 6),
(40, 1, 4),
(41, 12, 10),
(42, 15, 14),
(43, 2, 13),
(44, 11, 7),
(45, 14, 8),
(46, 13, 12),
(47, 6, 5),
(48, 8, 15),
(49, 10, 6),
(50, 15, 9);
