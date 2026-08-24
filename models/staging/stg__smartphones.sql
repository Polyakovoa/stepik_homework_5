{{
  config(
    materialized='view'
  )
}}

select
  brand_name,
  model,
  price,
  processor_brand,
  num_cores,
  processor_speed,
  battery_capacity
from {{ source('smartphones_source', 'smartphone_cleaned_v5') }}