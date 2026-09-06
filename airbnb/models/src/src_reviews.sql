with 
    src_reviews as (
Select *
From airbnb.raw.raw_reviews
    )
Select 
date as review_date,
comments as review_text,
sentiment as review_sentiment
From src_reviews