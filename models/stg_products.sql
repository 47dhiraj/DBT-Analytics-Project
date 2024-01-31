With stg_products AS (

   SELECT
      product_id,
      product_name as product_name,
      price as price,
      category as product_category
   FROM raw.hitman_shop.products
   
)

Select * from stg_products