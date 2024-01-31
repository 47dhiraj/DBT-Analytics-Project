SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    {{get_year_month_day('Order_Date')}}

FROM raw.hitman_shop.orders o

JOIN {{ ref("stg_customers") }} c
ON o.Customer_ID = c.Customer_ID

JOIN raw.hitman_shop.products p
ON o.Product_ID = p.Product_ID