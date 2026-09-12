# Guia: Publicando o Projeto no Portfólio (GitHub) e no Currículo

---

## PARTE 1 — Corrigir o README com os números reais do dashboard

Copie e cole os trechos abaixo no lugar das seções correspondentes do seu `README.md` atual (substituindo "Principais Descobertas" e "Recomendações Estratégicas").

### Substitua "📈 Principais Descobertas" por:

```markdown
## 📈 Principais Descobertas

Após o tratamento dos dados e o cruzamento das informações de horas trabalhadas com as pesquisas de engajamento, foram identificados os seguintes padrões:

**🔸 Inconsistência sistêmica no DP**
27,3% dos funcionários inativos constavam sem data de demissão registrada (marcados como "Dado Ausente - Erro DP"), distorcendo os relatórios de headcount ativo da empresa.

**🔸 Turnover concentrado em áreas técnicas**
O departamento de **Dados** apresentou a taxa de turnover mais crítica da empresa (80%), seguido por **Engenharia** e **Suporte Técnico** (40% cada) — muito acima da média geral de 22%.

**🔸 Correlação entre horas extras e satisfação**
A análise de dispersão entre horas extras mensais e nota de satisfação revelou uma tendência de correlação negativa: funcionários com maior carga de horas extras tendem a reportar notas de satisfação mais baixas.

**🔸 Lacunas de preenchimento no cadastro**
10% dos registros de salário estavam nulos, e parte das respostas de satisfação da pesquisa de clima ficou em branco — reforçando a necessidade de validação obrigatória nos formulários de origem.
```

### Substitua "💡 Recomendações Estratégicas" por:

```markdown
## 💡 Recomendações Estratégicas

Com base nos dados estruturados, seguem as ações recomendadas à diretoria:

1. **Investigação prioritária no time de Dados**
   O departamento de Dados apresenta a taxa de turnover mais alta da empresa (80%). Recomenda-se uma pesquisa de saída (exit interview) estruturada com os últimos desligados desse time para identificar causas específicas (carga de trabalho, remuneração, gestão).

2. **Redução de horas extras nas áreas técnicas**
   Dados, Engenharia e Suporte Técnico concentram as maiores taxas de turnover e também aparecem entre os grupos com mais horas extras. Recomenda-se revisar o dimensionamento de equipe e a distribuição de demandas nessas áreas.

3. **Automação no Departamento Pessoal**
   O alto índice de registros com erro de preenchimento (27,3% dos desligamentos sem data) indica falha de processo, não apenas erro humano pontual. É recomendável implementar validação obrigatória de campos no sistema de desligamento.

4. **Auditoria contínua na origem**
   Implementar uma trava no formulário de engajamento para aceitar estritamente valores numéricos entre 1 e 5, prevenindo a entrada de dados sujos desde a origem.
```

### Adicione uma nova seção (depois de "Principais Descobertas"), com o link/imagem do dashboard:

```markdown
## 📊 Dashboard Interativo (Power BI)

O projeto foi consolidado em um dashboard de 2 páginas no Power BI, permitindo exploração interativa dos dados:

**Página 1 — Visão Geral:** KPIs executivos, dispersão Horas Extras x Satisfação, e Turnover por Departamento.

![Visão Geral do Dashboard](images/dashboard_visao_geral.png)

**Página 2 — Tendências e Auditoria:** Evolução da satisfação ao longo do tempo e matriz de calor cruzando Departamento x Faixa de Horas Extras.

![Tendências e Auditoria](images/dashboard_tendencias.png)

> 📁 O arquivo `.pbix` completo está disponível em [`/dashboard/HR_Analytics_Dashboard.pbix`](dashboard/HR_Analytics_Dashboard.pbix).
```

---

## PARTE 2 — Como subir os arquivos para o GitHub

### Passo 1 — Exportar as imagens do dashboard
1. No Power BI Desktop, com a Página 1 aberta, vá em **Arquivo → Exportar → Exportar como imagem** (ou tire um print de tela em alta resolução, com Win+Shift+S).
2. Salve como `dashboard_visao_geral.png`.
3. Repita na Página 2, salvando como `dashboard_tendencias.png`.

### Passo 2 — Organizar as pastas localmente
No seu computador, dentro da pasta local do repositório clonado:
```
HR-Data-Integration-and-Quality-Audit/
├── images/
│   ├── dashboard_visao_geral.png
│   └── dashboard_tendencias.png
├── dashboard/
│   └── HR_Analytics_Dashboard.pbix
├── 01_setup_database.sql
├── 02_data_cleaning.sql
├── 03_data_cleaning.sql
├── 04_business_analysis.sql
├── README.md
├── engajamento.csv
└── funcionarios.csv
```

### Passo 3 — Subir para o GitHub
Se você usa o GitHub Desktop ou a interface web:
1. Crie as pastas `images/` e `dashboard/` dentro do repositório (pelo site do GitHub: **Add file → Create new file**, digite `images/dashboard_visao_geral.png` no nome para criar a pasta junto — ou arraste os arquivos direto pela interface de upload em **Add file → Upload files**).
2. Faça upload do `.pbix` e das duas imagens.
3. Edite o `README.md` (pelo botão de lápis ✏️ no GitHub, ou localmente) colando os trechos da Parte 1.
4. Faça commit com uma mensagem clara, como: `Adiciona dashboard Power BI e corrige achados do README`.

**Atenção ao tamanho do arquivo:** arquivos `.pbix` geralmente pesam poucos MB, mas o GitHub tem limite de 100MB por arquivo — não deve ser problema aqui, mas confira antes de subir.

---

## PARTE 3 — Como colocar no currículo

### Seção de Projetos (formato sugerido)

```
Auditoria de Qualidade e Integração de Dados de RH | Projeto Pessoal
GitHub: github.com/wagneraug-7/HR-Data-Integration-and-Quality-Audit

- Integrei e tratei dados de 2 sistemas desconexos de RH (50 funcionários, 
  69 avaliações de engajamento) usando SQL (MySQL), identificando falhas 
  sistêmicas de preenchimento no Departamento Pessoal (27,3% dos 
  desligamentos sem data registrada).
- Desenvolvi um dashboard interativo em Power BI (DAX, Power Query) 
  cruzando turnover, horas extras e satisfação, revelando correlação 
  negativa entre sobrecarga de trabalho e retenção de talentos.
- Identificei o departamento de Dados como prioridade crítica de retenção 
  (80% de turnover), sustentando recomendações estratégicas para a 
  liderança de RH.
```

### Seção de Habilidades Técnicas — adicione/reforce:
```
SQL (MySQL) · Power BI (DAX, Power Query, Modelagem de Dados) · 
Data Cleaning · Análise Exploratória de Dados · Storytelling de Dados
```

### Dica para o LinkedIn
Vale postar um resumo do projeto como publicação (não só deixar parado no GitHub):
- 1 imagem do dashboard (a Página 1 costuma ser mais visualmente impactante)
- Um parágrafo curto contando o "problema de negócio → o que você fez → o achado principal"
- Link para o repositório no primeiro comentário (o LinkedIn penaliza levemente posts com link direto no corpo do texto)

---

## Checklist Final antes de enviar para a Kinix

- [ ] README atualizado com os números reais do dashboard
- [ ] Imagens do dashboard visíveis no README (teste abrindo o link em aba anônima para confirmar que carrega)
- [ ] Arquivo .pbix disponível para download no repositório
- [ ] Link do GitHub testado e funcionando (sem "Sign in" bloqueando o conteúdo)
- [ ] Currículo atualizado com o projeto na seção de Projetos
- [ ] (Opcional) Post no LinkedIn publicado
