WITH raw_reviews AS (
    SELECT * FROM RAW.RAW_REVIEWS
)
select
    listing_id,
    date::date AS review_date,
    reviewer_name as reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
from raw_reviews