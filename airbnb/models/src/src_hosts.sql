{{ config(materialized='ephemeral') }}
with raw_hosts as (
Select *
From airbnb.raw.raw_hosts
)

Select 
    id as host_id,
    name as host_name,
     is_superhost, created_at, updated_at
From raw_hosts