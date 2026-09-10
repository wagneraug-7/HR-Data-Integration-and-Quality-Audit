# 🔍 Auditoria de Dados de RH: Turnover, Horas Extras e Falhas de Integração

> Auditoria e limpeza de dados de RH que cruzou sistemas desconexos para revelar a causa raiz do turnover em uma empresa de tecnologia.

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=flat-square&logo=mysql)
![Tool](https://img.shields.io/badge/Tool-DBeaver-orange?style=flat-square)
![Status](https://img.shields.io/badge/Status-Concluído-brightgreen?style=flat-square)

---

## 📌 Resumo Executivo

Este projeto realiza uma **auditoria completa na qualidade dos dados** do setor de Recursos Humanos de uma empresa de tecnologia. O objetivo foi limpar, cruzar e analisar bases de dados desconexas — o **Sistema de Departamento Pessoal** e a **Plataforma de Pesquisa de Clima** — para identificar as causas por trás da baixa retenção de talentos.

A análise revelou que os departamentos de **Recursos Humanos** e **UI/UX** apresentam os maiores volumes de horas extras, o que está diretamente correlacionado com os piores índices de retenção e com erros recorrentes de registro de desligamento.

---

## 🏢 O Problema de Negócio

A empresa enfrentava dificuldades para entender os motivos da alta rotatividade de funcionários (*turnover*). A raiz do problema era técnica e sistêmica: o sistema do Departamento Pessoal não possuía integração com a nova plataforma de Engajamento, o que gerava dados órfãos, registros de demissão inconsistentes e notas de satisfação fora da escala permitida.

**Como Analista de Dados, minha missão foi:**

- ✅ Identificar e auditar as falhas de integração entre os sistemas
- ✅ Realizar a limpeza e padronização dos dados brutos (*Data Cleaning*)
- ✅ Gerar insights cruzando horas extras, satisfação e retenção por departamento

---

## 🛠️ Tecnologias e Técnicas Utilizadas

**Banco de Dados:** MySQL (DBeaver)

**Técnicas de SQL:**
`LEFT JOIN` · `INNER JOIN` · `CASE WHEN` · `CAST` / `NULLIF` · Funções de agregação (`AVG`, `SUM`, `COUNT`) · Limpeza de strings (`TRIM`, `UPPER`)

### 📁 Estrutura de Arquivos

| Arquivo | Descrição |
|---|---|
| `01_setup_database.sql` | Criação do banco de dados e das tabelas raw |
| `02_data_cleaning.sql` | Consultas de auditoria para identificar erros lógicos, valores nulos e chaves órfãs |
| `03_data_cleaning.sql` | Transformação dos dados brutos, padronização de nomenclatura e criação das tabelas limpas (`_clean`) |
| `04_business_analysis.sql` | Extração de métricas de negócio, avaliando o impacto das horas extras na retenção e satisfação por departamento |

---

## 📈 Principais Descobertas

Após o tratamento dos dados e o cruzamento das informações de horas trabalhadas com as pesquisas de engajamento, foram identificados os seguintes padrões:

**🔸 Inconsistência sistêmica no DP**
Diversos funcionários constavam com status inativo, mas sem data de demissão registrada — distorcendo os relatórios de headcount ativo da empresa.

**🔸 Gargalos de retenção**
Os departamentos de **Recursos Humanos** e **UI/UX** apresentaram os piores índices de retenção da companhia.

**🔸 Correlação com horas extras**
Esses mesmos departamentos (RH e UI/UX) lideram o volume de horas extras mensais — um forte indício de que a sobrecarga de trabalho é o principal fator por trás do turnover e da queda de satisfação.

---

## 💡 Recomendações Estratégicas

Com base nos dados estruturados, seguem as ações recomendadas à diretoria:

1. **Revisão de escopo no time de Design**
   A alta carga de horas extras em UI/UX sugere gargalos no fluxo de prototipação e entrega de interfaces. É recomendável redistribuir a carga de projetos ou expandir a equipe, evitando a perda de talentos técnicos difíceis de repor.

2. **Automação no RH**
   O próprio departamento de RH está sobrecarregado — com alto volume de horas extras e erros de preenchimento (demissões sem data). É urgente automatizar a integração entre o sistema de folha de pagamento e a pesquisa de clima, reduzindo o trabalho manual da equipe.

3. **Auditoria contínua na origem**
   Implementar uma trava no formulário de engajamento para aceitar estritamente valores numéricos entre 1 e 5, prevenindo a entrada de dados sujos desde a origem.

---

<p align="center">
  <sub>Projeto desenvolvido como parte do portfólio de Análise de Dados</sub>
</p>
