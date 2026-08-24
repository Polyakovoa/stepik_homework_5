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
  count(*) as combination_count
from {{ ref('stg__smartphones') }}
where processor_brand is not null
  and num_cores is not null
  and processor_speed is not null
  and battery_capacity is not null
group by
  processor_brand,
  num_cores,
  processor_speed,
  battery_capacity