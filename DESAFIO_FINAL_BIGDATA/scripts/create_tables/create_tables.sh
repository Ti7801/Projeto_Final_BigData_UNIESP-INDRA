#!/bin/bash


HDFS_DIR="/dados/dados_saida"
TARGET_DATABASE="desafio_final_bigdata"
DT_FOTO="$(date "+%Y-%m-%d")" 



TARGET_TABLE_EXTERNAL="CLIENTES_STG"
TARGET_TABLE="CLIENTES"

echo "CRIACAO DA TABELA CLIENTES EXTERNA"

beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar HDFS_DIR="${HDFS_DIR}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE_EXTERNAL}"\
 -f ../../hqls/create-external-table-CLIENTES-stg.hql


echo " CRIACAO DA TABELA CLIENTES WORKED"

beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE}" \
 -f ../../hqls/create-managed-table-CLIENTES-wrk.hql 




TARGET_TABLE_EXTERNAL="DIVISAO_STG"
TARGET_TABLE="DIVISAO"

echo "CRIACAO DA TABELA DIVISAO EXTERNA"

beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar HDFS_DIR="${HDFS_DIR}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE_EXTERNAL}"\
 -f ../../hqls/create-external-table-DIVISAO-stg.hql


echo " CRIACAO DA TABELA DIVISAO WORKED"

beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE}" \
 -f ../../hqls/create-managed-table-DIVISAO-wrk.hql




TARGET_TABLE_EXTERNAL="ENDERECO_STG"
TARGET_TABLE="ENDERECO"

echo "CRIACAO DA TABELA ENDERECO EXTERNA"

beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar HDFS_DIR="${HDFS_DIR}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE_EXTERNAL}"\
 -f ../../hqls/create-external-table-ENDERECO-stg.hql


echo " CRIACAO DA TABELA ENDERECO WORKED"

beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE}" \
 -f ../../hqls/create-managed-table-ENDERECO-wrk.hql




TARGET_TABLE_EXTERNAL="REGIAO_STG"
TARGET_TABLE="REGIAO"

echo "CRIACAO DA TABELA REGIAO EXTERNA"

beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar HDFS_DIR="${HDFS_DIR}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE_EXTERNAL}"\
 -f ../../hqls/create-external-table-REGIAO-stg.hql


echo " CRIACAO DA TABELA REGIAO WORKED"

beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE}" \
 -f ../../hqls/create-managed-table-REGIAO-wrk.hql





TARGET_TABLE_EXTERNAL="VENDAS_STG"
TARGET_TABLE="VENDAS"

echo "CRIACAO DA TABELA VENDAS EXTERNA"

beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar HDFS_DIR="${HDFS_DIR}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE_EXTERNAL}"\
 -f ../../hqls/create-external-table-VENDAS-stg.hql


echo " CRIACAO DA TABELA VENDAS WORKED"

beeline -u jdbc:hive2://localhost:10000 \
 --hivevar TARGET_DATABASE="${TARGET_DATABASE}"\
 --hivevar TARGET_TABLE="${TARGET_TABLE}" \
 -f ../../hqls/create-managed-table-VENDAS-wrk.hql

















