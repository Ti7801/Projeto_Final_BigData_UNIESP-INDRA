
SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;

INSERT OVERWRITE TABLE
    ${TARGET_DATABASE}.${TARGET_TABLE}

PARTITION(DT_FOTO) 
SELECT
        `Actual Delivery`,
        `CustomerKey`,
        `DateKey`,
        `Discount Amount`,
        `Invoice Date`,
        `Invoice Number`,
        `Item Class`,
        `Item Number`,
        `Item` string`,
        `Line Number`,
        `List Price`,
        `Oder Number`,
        `Promised Delivery Date`,
        `Sales Amount`,
        `Sales Amount Based on Liste Price`,
        `Sales Cust Amount`,
        `Sales Margin Amount`,
        `Sales Price`,
        `Sales Quantity`,
        `Sales Re`,
        `U/M`,
	'${DT_FOTO}' as DT_FOTO
FROM ${STAGE_DATABASE}.${STAGE_TABLE};
