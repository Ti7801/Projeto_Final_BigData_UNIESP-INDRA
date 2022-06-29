#!/bin/bash

echo "Ingestao de dados!"

bash ../scripts/update_data_external_table.sh dados_entrada
bash ../scripts/insert_data_worked_table.sh



echo "verificar a particoes"
echo "Listando Particoes"

beeline -u jdbc:hive2://localhost:10000 -e "SHOW PARTITIONS desafio_final_bigdata.CLIENTES;"
beeline -u jdbc:hive2://localhost:10000 -e "SHOW PARTITIONS desafio_final_bigdata.DIVISAO;"
beeline -u jdbc:hive2://localhost:10000 -e "SHOW PARTITIONS desafio_final_bigdata.ENDERECO;"
beeline -u jdbc:hive2://localhost:10000 -e "SHOW PARTITIONS desafio_final_bigdata.REGIAO;"
beeline -u jdbc:hive2://localhost:10000 -e "SHOW PARTITIONS desafio_final_bigdata.VENDAS;"


echo "VISUALIZANDO AS 10 PRIMEIRAS LINHAS DE CADA TABELA!"

echo "Visualizar as 10 primeiras linhas tabela CLIENTES"


beeline -u jdbc:hive2://localhost:10000 -e "select * from CLIENTES LIMIT 10;"


echo "Visualizar as 10 primeiras linhas tabela DIVISAO"


beeline -u jdbc:hive2://localhost:10000 -e "select * from DIVISAO LIMIT 10;"


echo "Visualizar as 10 primeiras linhas tabela ENDERECO"


beeline -u jdbc:hive2://localhost:10000 -e "select * from ENDERECO LIMIT 10;"


echo "Visualizar as 10 primeiras linhas tabela REGIAO"


beeline -u jdbc:hive2://localhost:10000 -e "select * from REGIAO LIMIT 10;"


echo "Visualizar as 10 primeiras linhas tabela VENDAS"


beeline -u jdbc:hive2://localhost:10000 -e "select * from VENDAS LIMIT 10;"




echo "QUANTIDADE DE LINHAS DE CADA TABELA"


echo "Quantidade de linhas da tabela CLIENTES"


beeline -u jdbc:hive2://localhost:10000 -e "select count(*) from CLIENTES;"



echo "Quantidade de linhas da tabela DIVISAO"


beeline -u jdbc:hive2://localhost:10000 -e "select count(*) from DIVISAO;"



echo "Quantidade de linhas da tabela ENDERECO"


beeline -u jdbc:hive2://localhost:10000 -e "select count(*) from ENDERECO;"



echo "Quantidade de linhas da tabela REGIAO"


beeline -u jdbc:hive2://localhost:10000 -e "select count(*) from REGIAO;"


echo "Quantidade de linhas da tabela VENDAS"


beeline -u jdbc:hive2://localhost:10000 -e "select count(*) from VENDAS;"








