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

