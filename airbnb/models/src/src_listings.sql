{{ config(materialized='ephemeral') }}
with  raw_listings as (Select 
*
From {{ source('airbnb','listings')}})

Select 
    id as listing_id,
    name as listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price as price_str,
    created_at,
    updated_at
From raw_listings