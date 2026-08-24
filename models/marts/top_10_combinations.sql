{{
  config(
    materialized='table'
  )
}}

select
  processor_brand,
  num_cores,
  processor_speed,
  battery_capacity,
  combination_count
from {{ ref('int__smartphones_combination') }}
order by combination_count desc
limit 10