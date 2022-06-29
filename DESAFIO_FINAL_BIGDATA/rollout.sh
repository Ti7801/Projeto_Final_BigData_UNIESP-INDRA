#!/bin/bash

echo "Criando pasta dados/dados_saida no HDFS"

hdfs dfs -mkdir -p /dados/dados_saida/



echo "Criando as Tabelas de Alunos"

cd scripts/create_tables

bash create_tables.sh
