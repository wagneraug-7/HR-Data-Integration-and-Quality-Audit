📌 Resumo Executivo
Este projeto realiza uma auditoria completa na qualidade dos dados do setor de Recursos Humanos de uma empresa de tecnologia. O objetivo foi limpar, cruzar e analisar bases de dados desconexas (Sistema de Departamento Pessoal e Plataforma de Pesquisa de Clima) para identificar problemas de retenção de talentos. A análise revelou que os departamentos de Recursos Humanos e UI/UX apresentam os maiores volumes de horas extras, o que está diretamente correlacionado com os piores índices de retenção e erros de registro de desligamento.

🏢 O Problema de Negócio
A empresa enfrentava dificuldades para entender os motivos da alta rotatividade de funcionários (turnover). A raiz do problema era técnica e sistêmica: o sistema do Departamento Pessoal não possuía integração com a nova plataforma de Engajamento, gerando dados órfãos, registros de demissão inconsistentes e notas de satisfação fora da escala permitida.

Como Analista de Dados, minha missão foi:

Identificar e auditar as falhas de integração entre os sistemas.

Realizar a limpeza e padronização dos dados brutos (Data Cleaning).

Gerar insights cruzando as horas extras com a satisfação e retenção por departamento.

🛠️ Tecnologias e Técnicas Utilizadas
Banco de Dados: MySQL (DBeaver)

Técnicas de SQL: LEFT JOIN, INNER JOIN, CASE WHEN, CAST/NULLIF, Funções de Agregação (AVG, SUM, COUNT), Limpeza de Strings (TRIM, UPPER).

Estrutura de Arquivos:

01_setup_database.sql: Criação do banco de dados e das tabelas raw.

02_data_cleaning.sql: Consultas de auditoria para identificar erros lógicos, valores nulos e chaves órfãs.

03_data_cleaning.sql: Transformação dos dados brutos, padronização de nomenclatura e criação das tabelas limpas (_clean).

04_business_analysis.sql: Extração de métricas de negócios, avaliando o impacto das horas extras na retenção e satisfação por departamento.

📈 Principais Descobertas
Após o tratamento dos dados e o cruzamento das informações financeiras com as pesquisas de engajamento, os seguintes padrões foram identificados:

Inconsistência Sistêmica (DP): Diversos funcionários constavam com status inativo, mas sem data de demissão registrada, distorcendo os relatórios de headcount ativo da empresa.

Gargalos de Retenção: Os departamentos de Recursos Humanos e UI/UX apresentaram o pior índice de retenção da companhia.

Correlação com Horas Extras: Esses mesmos departamentos (RH e UI/UX) lideram o volume de horas extras mensais, indicando que a sobrecarga de trabalho é o principal fator impulsionador do turnover e da queda de satisfação.

💡 Recomendações Estratégicas
Com base nos dados estruturados, recomendo as seguintes ações para a diretoria:

Revisão de Escopo no time de Design: A alta carga de horas extras no departamento de UI/UX sugere gargalos no fluxo de prototipação e entrega de interfaces. A gestão precisa redistribuir a carga de projetos ou expandir a equipe de design para evitar a perda de talentos técnicos difíceis de repor.

Automação no RH: O próprio departamento de RH está sobrecarregado (com alto volume de horas extras) e cometendo erros de preenchimento (demissões sem data). É urgente automatizar a integração entre o sistema de folha de pagamento e a pesquisa de clima para reduzir o trabalho manual da equipe.

Auditoria Contínua: Implementar uma trava no sistema do formulário de engajamento para aceitar estritamente valores numéricos entre 1 e 5, prevenindo a entrada de dados sujos na origem.