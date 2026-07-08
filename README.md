# 📦 Solução de Inteligência de Mercado e Análise Logística: Case Olist

📌 Sobre o Projeto

Este projeto consiste no desenvolvimento de uma solução completa de Inteligência de Mercado, Inteligência Logística e Análise de Dados, utilizando a base de dados públicos de e-commerce da Olist. O objetivo principal foi transformar dados brutos armazenados em um banco de dados relacional em insights estratégicos para a tomada de decisão da diretoria. 

A solução abrange desde a extração e tratamento de dados via SQL até a visualização executiva em duas visões complementares no Power BI: Performance Comercial e Performance Logística. O projeto foi construído do zero, passando pelas etapas de consultas estruturadas para cruzamentos de dados, modelagem de dados (Star Schema), criação de métricas de negócio com linguagem DAX e design de interface focado na experiência do usuário (UX).

---

❓ Perguntas-Chave de Negócio (Key Business Questions)

O ecossistema analítico deste projeto foi desenhado para responder de forma direta às seguintes dores da diretoria executiva:
* **Performance Comercial:** Como está a distribuição do faturamento e volumetria de vendas? Quais categorias dominam a receita e onde estão nossos principais polos de clientes?
* **Eficiência Logística & SLA:** Qual o tempo médio real de entrega? Como os atrasos estão distribuídos geograficamente e quais estados representam os maiores gargalos operacionais?

---

📐 Regras de Negócio e Premissas de Limpeza

Para garantir a integridade dos KPIs financeiros e operacionais apresentados, as seguintes premissas foram aplicadas na camada de dados:
* **Período Histórico:** Análise consolidada compreendendo todo o histórico disponível na base bruta (99 mil pedidos totais).
* **Tratamento de Volumetria:** Utilização de contagens distintas para mitigar duplicidades geradas por pedidos com múltiplos itens, garantindo a acurácia do Ticket Médio (R$ 136,68).

---

📊 Painéis Executivos (Visualização Rápida)

### 1. Painel de Desempenho Comercial
![Performance Comercial](dashboard_performance_comercial.jpg)

### 2. Dashboard de Performance Logística
![Performance Logística](Relatorio_Performance_Logistica.jpg)

---

📈 1. Detalhes da Visão Comercial

Esta visão foca na saúde financeira do e-commerce, trazendo volumetria de vendas, faturamento e comportamento de categorias de produtos.

* **Faturamento Total de R$ 13,59 Milhões:** Uma visão macro e clara do faturamento bruto gerado no período histórico analisado.
* **Volume de 99 Mil Pedidos:** Indicador volumétrico essencial para entender a escala de operação do e-commerce.
* **Ticket Médio Preciso de R$ 136,68:** Identificação do gasto médio por transação através de funções agregadas.
* **Concentração Geográfica:** Análise regional revelou que São Paulo (SP) liderou as receitas de forma isolada, acompanhado por Rio de Janeiro (RJ) e Minas Gerais (MG).
* **Curva ABC de Produtos (Top 5):** A categoria de Beleza & Saúde liderou o topo histórico de faturamento, seguido por Relógios & Presentes e Cama, Mesa & Banho.

---

🚚 2. Detalhes da Visão Logística

Esta visão foi desenvolvida especificamente para monitorar a eficiência de entrega por estado e identificar gargalos críticos operacionais que impactam o SLA e a jornada do cliente.

* **Tempo Médio de Entrega:** Métrica central de acompanhamento de desempenho (18,32 dias).
* **Total de Pedidos Atrasados & Taxa de Atraso (%):** Indicadores de risco e fricção na operação (8 Mil pedidos em atraso, representando uma taxa de 8,11%).
* **Pedidos no Prazo:** Indicador de sucesso e estabilidade operacional (89 Mil pedidos).
* **Antecipação Média (Dias):** Métrica de eficiência das transportadoras parceiras (12,44 dias médios de entrega antes do prazo máximo estipulado).

#### Análise de Extremos (Gargalos x Eficiência)
Para evitar a poluição visual, o painel adota uma abordagem de análise de extremos (Top 5) utilizando gráficos de área sóbrios:
* **Top 5 Estados com Maior Tempo de Entrega (Gargalos):** Identificação imediata das 5 regiões com pior SLA (lideradas por Roraima - RR, com 29 dias médios). Foco direto para renegociação de frete ou troca de operadores logísticos.
* **Top 5 Estados Mais Rápidos na Entrega (Eficácia):** Mapeamento das regiões de alta performance logística (lideradas por Santa Catarina - SC, com 14,5 dias médios), operando como benchmark para a operação.

---

💡 Recomendações Estratégicas baseadas em Dados (Actionable Insights)

Com base nos cenários diagnosticados nos painéis, as seguintes ações comerciais e logísticas são recomendadas para a diretoria:
1. **Descentralização Logística:** O estado de Roraima (RR) apresenta o maior gargalo (29 dias médios). Recomenda-se a revisão de contratos de frete ou estabelecimento de novos parceiros e hubs logísticos para as regiões Norte e Nordeste.
2. **Mitigação do Risco de Concentração:** O faturamento está altamente concentrado no Sudeste (liderado por SP com R$ 5,2M). Campanhas de marketing direcionadas e incentivos de frete grátis podem ajudar na expansão de mercado em estados com menor penetração.
3. **Foco na Curva ABC Comercial:** As categorias de *Beleza & Saúde* e *Relógios & Presentes* geram o maior volume financeiro. Estratégias de cross-selling e kits de produtos combinando essas categorias no e-commerce podem impulsionar ainda mais o Ticket Médio.

---

🛠️ Tecnologias e Competências Técnicas

* **SQL / PostgreSQL:** Cruzamento avançado de tabelas de pedidos, clientes e itens (JOINs) para consolidação de indicadores financeiros e logísticos, utilização de `COUNT(DISTINCT)`, funções de arredondamento e agrupamento estratégico (`GROUP BY`).
* **Power BI / Power Query:** Extração, transformação e carregamento (ETL) de dados estruturados.
* **Linguagem DAX:** Criação de medidas calculadas customizadas e otimizadas para os KPIs de negócio (Tempo médio, volumetria e taxas de atraso).
* **Modelagem de Dados:** Relacionamento estruturado (Star Schema) entre tabelas de clientes, pedidos e produtos para garantir integridade analítica.
* **Data Storytelling & UX Design:** Estruturação de layouts limpos, paleta de cores sóbria baseada em tons escuros e cinzas, gráficos focados em apresentações executivas.

---

💼 Nota de Portfólio

Para consultar meus projetos práticos focados em automação, engenharia de recursos e análise estatística avançada utilizando Python, Pandas, NumPy, Matplotlib e Seaborn (incluindo as competências da minha formação pela Data Science Academy), acesse o repositório principal no meu perfil: [projeto-analytics-churn](../projeto-analytics-churn).

---

📁 Como Analisar os Arquivos Técnicos

* Para analisar os scripts de extração e consultas: Consulte o arquivo `analise_inicial_olist.sql`
* Para interagir com os filtros e fórmulas DAX: Faça o download do arquivo `.pbix` atualizado.
