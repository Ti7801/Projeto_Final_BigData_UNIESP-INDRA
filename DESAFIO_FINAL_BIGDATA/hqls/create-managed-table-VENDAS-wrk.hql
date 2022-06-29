
CREATE DATABASE IF NOT EXISTS ${TARGET_DATABASE};

DROP TABLE IF EXISTS ${TARGET_DATABASE}.${TARGET_TABLE};

CREATE TABLE ${TARGET_DATABASE}.${TARGET_TABLE} (
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

PARTITIONED BY (DT_FOTO STRING)

ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.orc.OrcSerde' 
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' 
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat' 
TBLPROPERTIES ( 'orc.compress'='SNAPPY')
;
