CREATE DATABASE IF NOT EXISTS ${TARGET_DATABASE};

DROP TABLE IF EXISTS ${TARGET_DATABASE}.${TARGET_TABLE};

CREATE EXTERNAL TABLE IF NOT EXISTS ${TARGET_DATABASE}.${TARGET_TABLE}(
        `Actual Delivery` date,
        `CustomerKey` int,
        `DateKey` date,
        `Discount Amount` float,
        `Invoice Date` date,
        `Invoice Number` int,
        `Item Class` string,
        `Item Number` int,
        `Item` string,
        `Line Number` int,
        `List Price` float,
        `Oder Number` int,
        `Promised Delivery Date` date,
        `Sales Amount` float,
        `Sales Amount Based on Liste Price` float,
        `Sales Cust Amount` float,
        `Sales Margin Amount` float,
        `Sales Price` float,
        `Sales Quantity` int,
        `Sales Re` int,
        `U/M` string

)
COMMENT 'Tabela Externa de Vendas'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '${HDFS_DIR}'
tblproperties ('skip.header.line.count'='1', 'store.charset'='UTF-8', 'retrieve.charset'='UTF-8');
