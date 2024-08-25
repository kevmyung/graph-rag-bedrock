# graph-rag-bedrock

A Graph-based RAG System Implementation

## Project Overview

This project focuses on converting PDF documents into a graph-based knowledge base and implementing a Graph RAG system.

## Prerequisites

Before starting the project, ensure you have Docker installed on your system. Then, set up the Neo4j container:

1. Make sure you have execution permissions for the script:

```chmod +x neo4j-install.sh```

2. Run the Neo4j installation script:

```./neo4j-install.sh```

## Key Steps

### 1. Convert PDF to Markdown

- Utilize `1-raw-file-load.ipynb` notebook
- Leverage PyMuPDF4LLM library

### 2. Construct Graph Based on Document Components

- Utilize `2-data-transformation.ipynb` notebook
- Data cleansing: Remove unnecessary markdown components
- Separate document components based on markdown headers
- Chunking process:
  1. Primary chunking using delimiter '\n\n'
  2. Secondary chunking using delimiter '\n---\n'
  3. Tertiary chunking using delimiter '\n'
- (Optional) Convert text of each chunk to vector embeddings

### 3. Load Graph into Neo4j

- Utilize `3-graph-loading.ipynb` notebook
- Load the generated knowledge base into Neo4j graph database

### 4. Graph Traversal Logic Simulation (Dev)

- Utilize `4-graph-traversal.ipynb` notebook
- Develop and test graph-based search and inference logic

### 5. Workflow Configuration (LangGraph)

- Utilize `5-graph-rag-workflow.ipynb` notebook (TBU)
- Configure the overall RAG system workflow using LangGraph

## Dependencies

- PyMuPDF4LLM
- Neo4j
- LangGraph
