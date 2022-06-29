#!/bin/bash

HDFS_DIR="/dados/dados_saida"
NOME_PASTA=$1


cd ../dados/${NOME_PASTA}

echo "Efetuando ingestão na tabela CLIENTES"

hdfs dfs -copyFromLocal CLIENTES.csv ${HDFS_DIR}


echo "Efetuando ingestão na tabela DIVISAO"

hdfs dfs -copyFromLocal DIVISAO.csv ${HDFS_DIR}


echo "Efetuando ingestão na tabela ENDERECO"

hdfs dfs -copyFromLocal ENDERECO.csv ${HDFS_DIR}


echo "Efetuando ingestão na tabela REGIAO"

hdfs dfs -copyFromLocal REGIAO.csv ${HDFS_DIR}


echo "Efetuando ingestão na tabela VENDAS"

hdfs dfs -copyFromLocal VENDAS.csv ${HDFS_DIR}


