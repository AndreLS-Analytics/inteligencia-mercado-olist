# Inteligência de Mercado: Análise de Desempenho e Logística E-commerce (Olist)

Este projeto aplica conceitos de Inteligência de Mercado e Data Analytics utilizando **SQL** e o banco de dados **PostgreSQL** para extrair insights estratégicos de uma operação real de e-commerce brasileiro.

---

## 🎯 Objetivo do Projeto
O objetivo principal é responder a perguntas críticas de negócio relacionadas ao faturamento regional, ticket médio por estado e gargalos logísticos (custo de frete), auxiliando na tomada de decisões estratégicas de expansão e eficiência operacional.

## 🛠️ Tecnologias e Ferramentas Utilizadas
* **Banco de Dados:** PostgreSQL
* **Ferramenta de Query:** DBeaver
* **Origem dos Dados:** Dataset Público da Olist (Kaggle)

## 📊 Principais Análises Realizadas

### 1. Concentração de Mercado e Faturamento por Estado
Análise do volume de pedidos únicos, faturamento bruto em dinheiro e cálculo do Ticket Médio para identificar os principais polos consumidores.
* **Conceitos SQL Aplicados:** `JOIN` múltiplo, `COUNT(DISTINCT)`, `SUM`, expressões de divisão e funções de arredondamento (`ROUND`).

### 2. Inteligência Logística e Impacto do Frete por Região
Investigação profunda sobre o custo do frete, preço médio do produto e o peso financeiro do envio dependendo da distância geográfica do cliente.
* **Conceitos SQL Aplicados:** Agrupamentos com `GROUP BY`, ordenação complexa com `ORDER BY ... DESC`, e funções de média analítica (`AVG`).

---

## 💡 Insights Estratégicos de Negócio

* **O Motor do Sudeste:** Os estados de **SP**, **RJ** e **MG** lideram de forma disparada o volume de faturamento e densidade de pedidos, confirmando a necessidade de campanhas de marketing focadas e estoques locais para atender à altíssima demanda da região.
* **O Gargalo Logístico do Norte/Nordeste:** A análise revelou que estados como **Roraima (RR)** e **Paraíba (PB)** possuem os fretes médios mais caros do país (na casa dos **R$ 42,00** por item). Em estados como RR, o valor do frete chega a representar quase **30% do valor do produto**, criando uma barreira invisível para a conversão de novos clientes.
* **Decisão Estratégica Sugerida:** Para expandir a marca nas regiões Norte e Nordeste sem assustar o consumidor com o frete, o negócio exige estudos de viabilidade para a criação de Centros de Distribuição (CDs) regionais ou parcerias com transportadoras locais para baratear o envio.

---

## 📁 Estrutura do Repositório
* `analise_inicial_olist.sql`: Script contendo as consultas estruturadas de faturamento e análise logística.
