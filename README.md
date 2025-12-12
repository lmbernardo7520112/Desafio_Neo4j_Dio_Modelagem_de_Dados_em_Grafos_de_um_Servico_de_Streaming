![Python](https://img.shields.io/badge/Python-3.12-blue?style=for-the-badge&logo=python)
![Google Colab](https://img.shields.io/badge/Google_Colab-Notebook-orange?style=for-the-badge&logo=googlecolab)
![NetworkX](https://img.shields.io/badge/NetworkX-Graph_Models-darkgreen?style=for-the-badge&logo=networks)
![PyVis](https://img.shields.io/badge/PyVis-Interactive_Graphs-blue?style=for-the-badge&logo=visjs)
![Faker](https://img.shields.io/badge/Faker-Synthetic_Data-purple?style=for-the-badge)
![Neo4j](https://img.shields.io/badge/Neo4j-Cypher_Generation-008cc1?style=for-the-badge&logo=neo4j)

---

# 📘 Visão Geral

Este projeto gera **dados sintéticos complexos** conectando:

- **Usuários**
- **Itens**
- **Atores**
- **Diretores**
- **Gêneros**

O sistema produz:

1. **Um arquivo `.cypher` completo**, pronto para importação no Neo4j.  
2. **Uma visualização interativa PyVis (`.html`)**.  
3. **Uma imagem PNG do grafo** gerada via NetworkX + Matplotlib.

# 🧬 Estrutura dos Dados

### **Níveis de Entidade**
- **User** → `id`, `name`, `reputation`
- **Item** → `id`, `title`, `trendingScore`
- **Actor** → `id`, `name`, `popularity`
- **Director** → `id`, `name`, `qualityScore`
- **Genre** → `name` (ex.: Drama, Comedy, Sci-Fi, Action, Romance, Documentary)

### **Relacionamentos**
- `(User)-[:VIEWED {weight, rating, confidence}]->(Item)`
- `(Item)-[:FEATURES {relevance}]->(Actor)`
- `(Item)-[:DIRECTED_BY {importance}]->(Director)`
- `(Item)-[:IN_GENRE]->(Genre)`

---

# 📝 Exportação para Neo4j

O script gera automaticamente um arquivo Cypher (`multi_graph_with_genres.cypher`) que inclui:

- **Constraints** para unicidade (User.id, Item.id, Actor.id, Director.id, Genre.name)
- **MERGE / CREATE** para nós (com escape seguro de strings)
- **MATCH + CREATE / MERGE** para relacionamentos com propriedades

> Arquivo gerado pronto para executar manualmente no Neo4j (via `cypher-shell` ou Neo4j Browser).

---

# 📊 Visualização de Grafo

## HTML Interativo (PyVis)
- Visualização gerada em `multi_graph_with_genres.html`.
- Física aplicada (force layout), agrupamento por tipos de nó e tooltips com propriedades.
- Gerado em modo compatível com notebooks (cdn_resources=`in_line`) para evitar problemas de renderização.

## PNG Estático (NetworkX + Matplotlib)
- Geração de imagem estática do grafo (ex.: `multi_graph_with_genres.png`) via NetworkX.
- Útil para documentação, relatórios e inclusão em apresentações.

---

# ⚙️ Tecnologias Utilizadas

- **Python 3.12** — ambiente de execução
- **Faker** — geração de dados sintéticos
- **NetworkX** — modelagem do grafo em memória
- **PyVis** — visualização interativa (HTML)
- **Matplotlib** — geração de PNGs estáticos
- **Google Colab** — ambiente de execução recomendado
- **Neo4j** (opcional) — destino do `.cypher`

---

# 📂 Estrutura de Arquivos Gerados

```
multi_graph_with_genres.cypher   # script Cypher para Neo4j
multi_graph_with_genres.html     # visualização interativa (PyVis)
multi_graph_with_genres.png      # imagem PNG gerada via NetworkX/Matplotlib
```

---

# 🧪 Estado Atual

- ✅ Geração de dados sintéticos (Users, Items, Actors, Directors, Genres)
- ✅ Exportação completa para `.cypher`
- ✅ Visualização interativa `.html` funcionando no Colab
- ✅ Geração de PNG via NetworkX/Matplotlib (alternativa a Selenium)

---

# 🚀 Próximas Etapas

- Implementar exportação adicional para GraphML / GEXF
- Incluir cálculos de métricas de centralidade (PageRank, Betweenness)
- Adicionar pipeline para geração incremental (daily/weekly)
- Integrar importação direta para Neo4j via `neo4j` driver com variáveis de ambiente seguras
- Construir um pequeno dashboard (Plotly/Dash) com filtros e buscas

---

# 🧠 Histórico de Desenvolvimento (Resumo)

- **Fase 1:** implementação dos geradores (Faker) e definição do schema de nós e relações
- **Fase 2:** escrita do exportador `.cypher` com atenção a constraints e escape de strings
- **Fase 3:** visualização com PyVis e fallback via Matplotlib para PNGs

---

# ✍️ Autor

**Leonardo Maximino Bernardo**  
Python • Graph Data • Automação  
Ano: 2025

---

*Arquivo gerado automaticamente a partir do notebook do Colab que produz `multi_graph_with_genres.cypher` e `multi_graph_with_genres.html`.*

Executado inteiramente no **Google Colab**, sem dependências externas difíceis (sem Selenium, sem ChromeDriver).

---

# 🎯 Objetivo

Criar um dataset relacional multi-grafo com diversos tipos de nós e relacionamentos, adequado para:

- estudos de grafos  
- sistemas de recomendação  
- bancos de grafos (Neo4j, Memgraph)  
- análises estruturais  
- demonstrações de arquitetura grafo-centrada  

---

# 🧩 Arquitetura Geral

```text
┌─────────────────────────────────────────┐
│ Gerador de Dados (Faker)                │
│ → Users, Items, Actors, Directors       │
└───────────────────────────┬─────────────┘
                            │
                            ▼
┌─────────────────────────────────────────┐
│ Relacionamentos Sintéticos              │
│ → VIEWED, FEATURES, DIRECTED_BY, IN_GENRE│
└───────────────────────────┬─────────────┘
                            │
                            ▼
┌─────────────────────────────────────────┐
│ Exportação                              │
│ - Cypher (.cypher)                      │
│ - Vis (HTML interativo)                 │
│ - PNG (NetworkX + Matplotlib)           │
└─────────────────────────────────────────┘

