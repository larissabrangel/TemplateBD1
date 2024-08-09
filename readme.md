# TRABALHO 01:  Bando de Dados para Simulação de Realização de Exames para Raio-X
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Ana Júlia Martins: anajcaetanom@gmail.com<br>
Jessica Nogueira Duque: jessiend3@gmail.com<br>
Larissa Rangel: larisb.rangel@gmail.com<br>
Matheus Caldas: ifesmatheus@gmail.com<br>
<br>


### 2. MINI-MUNDO<br>
> O sistema proposto para o hospital moderno conterá as informações aqui detalhadas. Dos pacientes serão armazenados dados pessoais, histórico médico e o motivo do exame. Cada paciente deve estar cadastrado no sistema antes de realizar exames. Os exames de raio X devem ser agendados previamente, incluindo a data, hora e a máquina específica a ser utilizada. Cada exame será realizado por um técnico qualificado, que registrará o ID da máquina. Após a captura das imagens, serão feitas análise automatizada por uma inteligência artificial, que avaliará preliminarmente a presença de diferentes tipos de patologias, registrando a confiabilidade de cada predição. Casos complexos ou com baixa confiabilidade na predição da IA serão revisados por especialistas médicos, que fornecerão o diagnóstico final. Todos os dados referentes aos exames, análises da IA e diagnósticos serão armazenados de forma segura e organizada. O sistema hospitalar armazenará as imagens de raio X, predições da IA, diagnósticos dos especialistas e logs de cada etapa do processo. Os pacientes devem ser informados dos resultados dos exames dentro de um prazo máximo estabelecido, e um timestamp será registrado em cada etapa do processo, desde o exame até a entrega do resultado final, garantindo a rastreabilidade. Os dados dos pacientes serão mantidos confidenciais e acessíveis apenas por pessoas autorizadas. O sistema será monitorado regularmente para identificar áreas de melhoria e garantir a eficiência e precisão do fluxo de atendimento. Análises periódicas do desempenho do sistema e da IA serão realizadas, feedback dos usuários será coletado e ações corretivas serão implementadas conforme necessário. Assim, o sistema do hospital moderno gerenciará o processo de exames de raio X, desde o cadastro do paciente até a entrega do resultado, assegurando precisão, eficiência e segurança em todas as etapas.

### 3. PERGUNTAS A SEREM RESPONDIDAS<br>
#### 3.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
> O hospital moderno precisa inicialmente dos seguintes relatórios:

* Relatório 1: Exames Realizados por Paciente. Objetivo: Obter um relatório que mostre o nome de cada paciente e a quantidade total de exames realizados por ele.

* Relatório 2: Frequência de cada patologia. Objetivo: Identificar a quantidade de ocorrências de cada patologia.

* Relatório 3: Radiologistas e Seus Exames Realizados. Objetivo: Listar cada radiologista e a quantidade total de exames realizados por ele.

* Relatório 4: Média de confiabilidade das predições por patologia. Objetivo: Calcular média de confiabilidade das predições para cada patologia.

* Relatório 5: Frequência de Exames por Aparelho. Objetivo: Determinar a quantidade de exames realizados por cada tipo de aparelho para avaliar a frequência de uso e identificar quais equipamentos são mais requisitados.

    
### 4. MODELO CONCEITUAL<br> 
        
![image](https://github.com/user-attachments/assets/10e24bad-b67c-48fc-90ff-5de4a7876789)



    
#### 4.1 Validação do Modelo Conceitual
    Grupo01: Thiago Borges, Caio Lessa, Marcos Vinicius, Davidson Santos
    Grupo02: Alex Rossoni, João Pedro Pagotto, Sofia de Alcantara, Thiago Carvalho e Wal Candeia

#### 4.2 Descrição dos dados
PACIENTE: Tabela que armazena as informações relativas ao paciente.
CODIGO (da tabela PACIENTE): Campo para indicar o código de identificação no banco de dados do paciente.
CPF (da tabela PACIENTE): Campo para indicar o cpf do paciente.
NOME (da tabela PACIENTE): Campo para indicar o nome do paciente.
DATA_NASC: Campo para indicar a data de nascimento do paciente.
ID: Identificador do paciente

EXAME: Tabela que armazena as informações sobre um exame realizado.
CODIGO (da tabela EXAME): Campo para indicar o código de identificação no banco de dados do exame.
DATA_HORA_REALIZACAO: Campo para indicar a data e o horário em que um exame foi realizado com um paciente.

APARELHO: Tabela que armazena as informações sobre um aparelho de raio X.
CODIGO (da tabela APARELHO): Campo para indicar o código de identificação no banco de dados do aparelho.
MARCA: Campo para indicar a marca origem de um aparelho.
DISPONIVEL (da tabela APARELHO): Campo para indicar se um aparelho está ou não disponível para o uso no momento.

REGISTRO_EXAME: Tabela que armazena as informações sobre um registro de exame gerado após o uso de um aparelho.
CODIGO (da tabela REGISTRO_EXAME): Campo para indicar o código de identificação no banco de dados do registro de exame.
DATA_HORA_GERACAO (da tabela REGISTRO_EXAME): Campo para indicar a data e o horário de geração de um relatório após a predição de patologias da inteligência artificial.
CONDICAOEHPATOLOGICA: Campo booleano para indicar se a condição reconhecida é de saúde, ou se é patológica.
FK_EXAME_CODIGO (da tabela REGISTRO_EXAME): Campo para indicar uma chave estrangeira apontando ao exame relacionado ao mesmo caso deste registro_exame.

IMAGEM_RECONHECIMENTO: Tabela que armazena as informações sobre as imagens proporcionadas para a predição da inteligência artificial sobre a condição ser ou não patológica.
CODIGO (da tabela IMAGEM_RECONHECIMENTO): Campo para indicar o código de identificação no banco de dados de uma imagem usada para o reconhecimento.
IMG: Campo para conter um link que lide à imagem utilizada em um registro para depois fazer uma predição.

PATOLOGIA: Tabela que armazena as informações sobre uma patologia possível.
CODIGO (da tabela PATOLOGIA): Campo para indicar o código de identificação no banco de dados de uma patologia.
NOME (da tabela PATOLOGIA): Campo para indicar o nome de uma patologia.
NIVEL_GRAVIDADE: Campo para indicar o nivel de gravidade pré-determinado de uma patologia.

PREDICAO: Tabela que armazena as informações sobre uma predição realizada.
CODIGO (da tabela PREDICAO): Campo para indicar o código de identificação no banco de dados de uma predição.
FK_PATOLOGIA_CODIGO (da tabela PREDICAO): Campo para indicar uma chave estrangeira apontando à patologia prevista pela inteligência artificial de uma predição.
FK_REGISTRO_EXAME_CODIGO (da tabela PREDICAO): Campo para indicar uma chave estrangeira apontando o registro_exame relacionado ao caso envolvida com a predição realizada.
CONFIABILIDADE: Campo para indicar a confiabilidade dada pela IA na predição de certa patologia.

LAUDO: Tabela que armazena as informações sobre um laudo.
CODIGO (da tabela LAUDO): Campo para indicar o código de identificação no banco de dados de um laudo.
DATA_HORA_GERACAO (da tabela LAUDO): Campo para indicar a data e o horário em que um laudo foi gerado por um radiologista para o paciente.
FK_EXAME_CODIGO (da tabela LAUDO): Campo para indicar uma chave estrangeira apontando ao exame relacionado ao mesmo caso deste laudo.

RADIOLOGISTA: Tabela que armazena as informações sobre um radiologista.
CODIGO (da tabela RADIOLOGISTA): Campo para indicar o código de identificação no banco de dados de um radiologista que trabalha no local.
CPF (da tabela RADIOLOGISTA): Campo para indicar o cpf do radiologista.
NOME (da tabela RADIOLOGISTA): Campo para indicar o nome do radiologista.
DISPONIVEL (da tabela RADIOLOGISTA): Campo para indicar se um radiologista está ou não disponível para atendimento no momento.



># Marco de Entrega 01: Do item 1 até o item 5.2 (5 PTS) <br>

### 5.	MODELO LÓGICO<br>
![BD_PACIENTES_LOGICO](https://github.com/user-attachments/assets/4b80143f-5b64-448d-a36c-67c71ad79e16)




### 6.	MODELO FÍSICO<br>
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
      
### 7.	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
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


### 8.	TABELAS E PRINCIPAIS CONSULTAS<br>
[***Link colab.***](https://colab.research.google.com/drive/19KaUKHYjk2WrfzGlfKl_lRcUl4wYqiIR?usp=sharing)     

#### 8.1	CONSULTAS DAS TABELAS COM FILTROS WHERE <br>
>Consulta 1: Filtrar aparelhos disponíveis:

    SELECT * FROM APARELHO
    WHERE disponivel = true;

![image](https://github.com/user-attachments/assets/68a47951-ea9f-42cf-92f0-05b98039b03f)

>Consulta 2: Filtrar exames onde há patologias:
    
    SELECT * FROM REGISTRO_EXAME
    WHERE condicaoEhPatologica = true;

![image](https://github.com/user-attachments/assets/0aef2e91-2ca4-43b9-a127-b8849c64a84a)


>Consulta 3: Filtrar exames feitos em certo intervalo de tempo:

    SELECT * FROM EXAME
    WHERE data_hora_realizacao BETWEEN '2024-08-01 00:00:00' AND '2024-08-05 23:59:59';

![image](https://github.com/user-attachments/assets/38fe0f13-0c65-4fc9-a806-c81100a534cb)

>Consulta 4: Filtrar radiologistas disponíveis:

    SELECT * FROM RADIOLOGISTA
    WHERE disponivel = true;

![image](https://github.com/user-attachments/assets/eac3598f-1d23-4cd5-9317-5b80a55ea877)

#### 8.2	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS 
    
>a) Marcas específicas disponíveis:

    SELECT *
    FROM aparelho
    WHERE (marca = 'philips'
           OR marca = 'siemens')
        AND disponivel = TRUE;

>a) Confiabilidade acima de 0,9 dos exames, exceto a patologia 2:

    SELECT *
    FROM predicao
    WHERE confiabilidade > 0.9
        AND NOT fk_patologia_codigo = 2;

>a) Exames realizados após data ou por algum aparelho específico:

    SELECT *
    FROM exame
    WHERE data_hora_realizacao > '2024-08-07'
        OR fk_aparelho_codigo = 7;

>a) Exames onde condições são patológicas depois de alguma data:

    SELECT *
    FROM registro_exame
    WHERE condicaoehpatologica = TRUE
        AND data_hora_geracao > '2024-08-02';

>a) Exames onde não possuem condições patológicas:

    SELECT *
    FROM registro_exame
    WHERE NOT condicaoehpatologica = TRUE;

>b) Calcular idade dos pacientes:

    SELECT nome,
           extract(YEAR
                   FROM age(CURRENT_DATE, data_nasc)) AS idade
    FROM paciente;

>b) Porcentagem da confiabilidade dos exames:
    
    SELECT codigo,
           fk_patologia_codigo,
           fk_registro_exame_codigo,
           confiabilidade,
           confiabilidade * 100 AS confiabilidade_porcentagem
    FROM predicao;

>b) Média da confiabilidade dos exames:
    
    SELECT avg(confiabilidade) AS media_confiabilidade
    FROM predicao;
        
>c) Renomear coluna de data_nasc para data_nascimento na tabela paciente:

    ALTER TABLE paciente 
    RENAME COLUMN data_nasc TO data_nascimento;

>c) Renomear tabela aparelho para equipamento:
    
    ALTER TABLE aparelho 
    RENAME TO equipamento;

>c) Renomear coluna de nome para nome_completo na tabela radiologista:
    
    ALTER TABLE radiologista 
    RENAME COLUMN nome TO nome_completo;


#### 8.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS <br>

    SELECT *
    FROM aparelho
    WHERE marca like 'S%';
    
    SELECT *
    FROM exame
    WHERE to_char(data_hora_realizacao, 'YYYY') like '2024%';
    
    SELECT *
    FROM exame
    WHERE data_hora_realizacao::text like '2024-07%';
    
    SELECT *
    FROM paciente
    WHERE nome like 'joão%';
    
    SELECT *
    FROM radiologista
    WHERE nome like 'dr.%';
    
    SELECT *
    FROM patologia
    WHERE nome like '%ite';
    
    SELECT *
    FROM paciente
    WHERE nome like '_____';
    
    SELECT *
    FROM exame
    WHERE data_hora_realizacao::text like '____-08-07%';
    
    SELECT *
    FROM patologia
    WHERE nome not like '%e%';
    
    SELECT *
    FROM exame
    WHERE data_hora_realizacao::text like '____-__-13%';
    
    SELECT *
    FROM exame
    WHERE data_hora_realizacao::text like '____-08-%';

    SELECT *
    FROM paciente
    WHERE data_nasc::text like '2001%';

    SELECT *
    FROM paciente
    WHERE nome ilike 'Ana%';
    
    SELECT *
    FROM exame
    WHERE to_char(data_hora_realizacao, 'MM') like '01';
    
    SELECT *
    FROM paciente
    WHERE id like 'ID__7%';
    
    SELECT *
    FROM radiologista
    WHERE nome ilike '% lee'
        OR nome ilike '% johnson';
    
    SELECT *
    FROM patologia
    WHERE nivel_gravidade::text like '3%'
        OR nivel_gravidade::text like '4%'
        OR nivel_gravidade::text like '5%';


># Marco de Entrega 02: Do item 6. até o item 9.1 (5 PTS) <br>

#### 8.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS <br>
a) Exclusão

    DELETE
    FROM paciente
    WHERE nome ilike 'joao%';
    
    DELETE
    FROM exame
    WHERE data_hora_realizacao::text like '2024-08-05%';
    
    DELETE
    FROM patologia
    WHERE nome like '%ite';

b) Atualização
    
    UPDATE radiologista
    SET nome = 'Dra. Lexie Grey'
    WHERE nome ilike 'dra. Grey%';
    
    UPDATE aparelho
    SET marca = 'Toyota'
    WHERE marca like 'Samsung%';
    
    UPDATE patologia
    SET nivel_gravidade = 5
    WHERE codigo = 9;


#### 8.6	CONSULTAS COM INNER JOIN E ORDER BY )<br>
    
    SELECT p.nome AS paciente_nome,
           e.data_hora_realizacao,
           a.marca AS aparelho_marca,
           r.data_hora_geracao AS registro_data,
           la.data_hora_geracao AS laudo_data,
           r.condicaoehpatologica,
           pr.confiabilidade,
           pa.nome AS patologia_nome
    FROM paciente p
    INNER JOIN exame e ON p.codigo = e.fk_paciente_codigo
    INNER JOIN aparelho a ON e.fk_aparelho_codigo = a.codigo
    INNER JOIN registro_exame r ON e.codigo = r.fk_exame_codigo
    INNER JOIN laudo la ON r.codigo = la.fk_exame_codigo
    INNER JOIN predicao pr ON r.codigo = pr.fk_registro_exame_codigo
    INNER JOIN patologia pa ON pr.fk_patologia_codigo = pa.codigo
    ORDER BY p.nome,
             e.data_hora_realizacao;

Consulta de exames e radiologistas

    SELECT e.codigo AS exame_codigo,
           e.data_hora_realizacao,
           r.nome AS radiologista_nome,
           la.data_hora_geracao AS laudo_data
    FROM exame e
    INNER JOIN laudo la ON e.codigo = la.fk_exame_codigo
    INNER JOIN radiologista r ON la.fk_radiologista_codigo = r.codigo
    ORDER BY r.nome,
             e.data_hora_realizacao;

Consulta de pacientes e suas patologias

    SELECT p.nome AS paciente_nome,
           e.data_hora_realizacao,
           pa.nome AS patologia_nome,
           pa.nivel_gravidade
    FROM paciente p
    INNER JOIN exame e ON p.codigo = e.fk_paciente_codigo
    INNER JOIN registro_exame r ON e.codigo = r.fk_exame_codigo
    INNER JOIN predicao pr ON r.codigo = pr.fk_registro_exame_codigo
    INNER JOIN patologia pa ON pr.fk_patologia_codigo = pa.codigo
    ORDER BY p.nome,
             pa.nivel_gravidade DESC;

Consulta de aparelhos, disponibilidade e exames realizados neles

    SELECT a.marca AS aparelho_marca,
           a.disponivel,
           e.data_hora_realizacao
    FROM aparelho a
    INNER JOIN exame e ON a.codigo = e.fk_aparelho_codigo
    ORDER BY a.marca,
             e.data_hora_realizacao;

Consulta de laudos e radiologistas que geraram

    SELECT la.codigo AS laudo_codigo,
           la.data_hora_geracao,
           r.nome AS radiologista_nome
    FROM laudo la
    INNER JOIN radiologista r ON la.fk_radiologista_codigo = r.codigo
    ORDER BY r.nome,
             la.data_hora_geracao;

Consulta de patologias diagnosticadas em laudos

    SELECT pa.nome AS patologia_nome,
           la.data_hora_geracao
    FROM patologia pa
    INNER JOIN patologia_laudo pl ON pa.codigo = pl.fk_patologia_codigo
    INNER JOIN laudo la ON pl.fk_laudo_codigo = la.codigo
    ORDER BY la.data_hora_geracao,
             pa.nome;

#### 8.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO <br>
    
Quantidade de exames por radiologista

    SELECT r.nome AS radiologista_nome,
           count(la.codigo) AS total_exames
    FROM radiologista r
    INNER JOIN laudo la ON r.codigo = la.fk_radiologista_codigo
    GROUP BY r.nome;

Número de exames realizados por mês

    SELECT to_char(e.data_hora_realizacao, 'YYYY-MM') AS mes,
           count(e.codigo) AS total_exames
    FROM exame e
    GROUP BY to_char(e.data_hora_realizacao, 'YYYY-MM')
    ORDER BY mes;

Número de pacientes por ano de nascimento

    SELECT extract(YEAR
                   FROM p.data_nasc) AS ano_nascimento,
           count(p.codigo) AS total_pacientes
    FROM paciente p
    GROUP BY extract(YEAR
                     FROM p.data_nasc)
    ORDER BY ano_nascimento;

Quantidade de predições por exame

    SELECT e.codigo AS exame_codigo,
           count(pr.codigo) AS total_predicoes
    FROM exame e
    LEFT JOIN predicao pr ON e.codigo = pr.fk_registro_exame_codigo
    GROUP BY e.codigo
    ORDER BY total_predicoes DESC;
    
Quantidade de laudos por patologia

    SELECT p.nome AS patologia,
           count(pl.codigo) AS total_laudos
    FROM patologia p
    JOIN patologia_laudo pl ON p.codigo = pl.fk_patologia_codigo
    GROUP BY p.nome
    ORDER BY total_laudos DESC;

#### 8.8	CONSULTA COM LEFT JOIN <br>

    SELECT
        e.codigo as IDExame,
        re.codigo as IDRegistroExame,
        l.codigo as IDLaudo
    FROM exame e
    LEFT JOIN registro_exame re
    ON e.codigo = re.fk_exame_codigo
    LEFT JOIN laudo l
    ON e.codigo = l.fk_exame_codigo

#### 8.9	SUBCONSULTA COM VIEW <br>

    CREATE VIEW ExameDetalhado AS
    SELECT
        e.codigo AS ExameCodigo,
        e.data_hora_realizacao AS DataRealizacao,
        pa.nome AS NomePaciente,
        a.marca AS MarcaAparelho,
        r.nome AS NomeRadiologista,
        (SELECT COUNT(*)
         FROM patologia_laudo pl
         JOIN patologia p ON pl.fk_patologia_codigo = p.codigo
         WHERE pl.fk_laudo_codigo = l.codigo) AS TotalPatologias
    FROM
        exame e
    LEFT JOIN
        paciente pa ON e.fk_paciente_codigo = pa.codigo
    LEFT JOIN
        aparelho a ON e.fk_aparelho_codigo = a.codigo
    LEFT JOIN
        laudo l ON l.fk_exame_codigo = e.codigo
    LEFT JOIN
        radiologista r ON l.fk_radiologista_codigo = r.codigo;
    
    SELECT * FROM ExameDetalhado;


># Marco de Entrega 03: Do item 9.2 até o ítem 9.10 (10 PTS)<br>

### 9. RELATÓRIOS E GRÁFICOS

[Link para o Colab contendo os relatórios e gráficos](
https://colab.research.google.com/drive/1K6RYt6ttdqUouDLNsyD8BWW2p1R9EshP?usp=sharing)
    

### 10. VÍDEO DE APRESENTAÇAO FINAL <br>

[Link para o vídeo de apresentação](https://drive.google.com/file/d/1fUFd2HWn6h-E7rNstmBKE6xCB3RZYz5k/view?usp=sharing)

