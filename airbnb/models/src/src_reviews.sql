{{ config(materialized='ephemeral') }}
with 
    src_reviews as (
Select *
From {{ source('airbnb','reviews')}}
    )
Select 
date as review_date,
comments as review_text,
sentiment as review_sentiment
From src_reviews