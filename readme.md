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

* Relatório de Eficiência de Máquinas de Raio X: Mostra o ID da máquina, marca, número de exames realizados por dia, semana ou mês, e taxa de utilização. Ajuda a identificar quais máquinas são mais utilizadas e se precisam de manutenção.

* Relatório de Diagnósticos da IA e Revisões Médicas:
Contém a lista de exames analisados pela IA, tipo de patologias detectadas, grau de confiabilidade das predições, e número de casos revisados pelos especialistas.Permite monitorar a eficácia da IA e a quantidade de casos complexos que necessitam de revisão humana

* Relatório de Timestamps do Processo de Atendimento:
Detalha cada etapa do processo, desde o agendamento até a entrega do resultado final, com os respectivos timestamps.

* Relatório de Resultados dos Exames e Diagnósticos:
Apresenta os resultados dos exames de todos os pacientes, incluindo detalhes pessoais, histórico médico, diagnósticos da IA, revisões dos especialistas e laudos entregues

* Relatório ??

    
### 4. MODELO CONCEITUAL<br> 
        
![BD_PACIENTES_CONCEITUAL](https://github.com/user-attachments/assets/50ccfcae-8973-48e8-b376-941dc293a127)

    
#### 4.1 Validação do Modelo Conceitual
    Grupo01: Thiago Borges, Caio Lessa, Marcos Vinicius, Davidson Santos
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 4.2 Descrição dos dados
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>

># Marco de Entrega 01: Do item 1 até o item 5.2 (5 PTS) <br>

### 5.	MODELO LÓGICO<br>
![BD_PACIENTES_LOGICO](https://github.com/user-attachments/assets/c670b0ba-d7c8-46d0-8249-e761d05452e4)



### 6.	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL
        (criação de tabelas, alterações, etc..)

      
### 7.	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) Script das instruções relativas a inclusão de dados
	Requisito mínimo: (Script dev conter: Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        OBS
	1) Criar um novo banco de dados para testar a restauracao (em caso de falha na restauração o grupo não pontuará neste quesito)
        2) script deve ser incluso no template em um arquivo no formato .SQL


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

