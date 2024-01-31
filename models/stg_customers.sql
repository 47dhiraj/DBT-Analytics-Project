With stg_customers AS (

   SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address,
      cc_type as payment_method
   FROM raw.hitman_shop.customers
   
)

Select * from stg_customers