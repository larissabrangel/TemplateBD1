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

* Relatório de Eficiência de Máquinas de Raio X: Mostra o ID da máquina, marca, número de exames realizados por mês.
  
* Relatório de Diagnósticos da IA e Revisões Médicas:
Contém a lista de exames analisados pela IA, tipo de patologias detectadas, grau de confiabilidade das predições, e número de casos revisados pelos especialistas.

* Relatório de Timestamps do Processo de Atendimento:
Detalha cada etapa do processo, desde o agendamento até a entrega do resultado final, com os respectivos timestamps.

* Relatório de Resultados dos Exames e Diagnósticos:
Apresenta os resultados dos exames de todos os pacientes, incluindo detalhes pessoais, histórico médico, diagnósticos da IA, revisões dos especialistas e laudos entregues

* Relatório ??

    
### 4. MODELO CONCEITUAL<br> 
        
![BD_PACIENTES_CONCEITUAL](https://github.com/user-attachments/assets/d87b6dde-fbf2-40aa-b569-c9f37886fc47)


    
#### 4.1 Validação do Modelo Conceitual
    Grupo01: Thiago Borges, Caio Lessa, Marcos Vinicius, Davidson Santos
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 4.2 Descrição dos dados
    PACIENTE: Tabela que armazena as informações relativas ao paciente.
    CODIGO (da tabela PACIENTE): Campo para indicar o código de identificação no banco de dados do paciente.
    CPF (da tabela PACIENTE): Campo para indicar o cpf do paciente.
    NOME (da tabela PACIENTE): Campo para indicar o nome do paciente.
    DATA_NASC: Campo para indicar a data de nascimento do paciente.
    ID: ???
    
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
    id VARHCHAR(30)
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
    cpf DOUBLE,
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
    fk_exame_codigo INTEGER,
    fk_exame_codigo INTEGER
);

CREATE TABLE IMAGEM_RECONHECIMENTO (
    codigo serial PRIMARY KEY,
    img VARCHAR(150)
    fk_registro_exame_codigo INTEGER
);

CREATE TABLE EXAME (
    codigo serial PRIMARY KEY,
    data_hora_realizacao TIMESTAMP
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
insert into PACIENTE (codigo, cpf, nome, data_nasc, id) values
	(001, , '123.456.789-00', '', '', ''),
	(002, , '', '', '', '');

insert into EXAME (codigo, data_hora_realizacao) values 
	(001, ''),
	(002, '');

insert into EXAME_PACIENTE (codigo, fk_paciente_codigo, fk_exame_codigo) values 
	(001, , ),
	(002, , );

insert into APARELHO (codigo, marca, disponivel) values 
	(001, '', ),
	(002, '', );

insert into USO_APARELHO (codigo, fk_exame_codigo, fk_aparelho_codigo) values 
	(001, , ),
	(002, , );

insert into LAUDO (codigo, data_hora_geracao, fk_exame_codigo) values 
	(001, '', ),
	(002, '', );

insert into RADIOLOGISTA (codigo, cpf, nome, disponivel) values 
	(001, , '', ),
	(002, , '', );

insert into RADIOLOGISTA_LAUDO (codigo, fk_radiologista_codigo, fk_laudo_codigo) values 
	(001, , ),
	(002, , );

insert into PATOLOGIA (codigo, nome, nivel_gravidade) values 
	(001, '', ),
	(002, '', );

insert into PATOLOGIA_LAUDO (codigo, fk_laudo_codigo, fk_patologia_codigo) values 
	(001, , ),
	(002, , );

insert into REGISTRO_EXAME (codigo, data_hora_geracao, condicaoehPatologica, fk_exame_codigo) values 
	(001, '', , ),
	(002, '', , );

insert into PREDICAO (codigo, fk_patologia_codigo, fk_registro_exame_codigo, confiabilidade) values 
	(001, , , ),
	(002, , , );

insert into IMAGEM_RECONHECIMENTO (codigo, fk_registro_exame_codigo, fk_imagem_reconhecimento_codigo) values 
	(001, , ),
	(002, , );

insert into IMAGEM_REGISTRO (codigo, img) values 
	(001, ''),
	(002, '');


### 8.	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Usa template da disciplina disponibilizado no Colab.<br>
#### 8.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

#### 8.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

#### 8.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 8.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

># Marco de Entrega 02: Do item 6. até o item 9.1 (5 PTS) <br>

#### 8.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 8.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 8.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 8.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 8.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 8.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 03: Do item 9.2 até o ítem 9.10 (10 PTS)<br>

### 9. RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 10.	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40


># Marco de Entrega 04: Itens 10 e 11 (20 PTS) <br>

### 11. FORMATACAO NO GIT:<br>
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")

