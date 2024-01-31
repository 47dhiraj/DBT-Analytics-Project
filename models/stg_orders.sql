
-- using the `ref` function to select data from pre created model

SELECT

    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    o.Order_Date

FROM raw.hitman_shop.orders o

JOIN {{ ref("stg_customers") }} c                       -- INNER JOIN
ON o.Customer_ID = c.Customer_ID                        -- Customer_ID is join matching condition/column

JOIN raw.hitman_shop.products p                                     -- INNER JOIN
ON o.Product_ID = p.Product_ID