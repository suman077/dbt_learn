WITH src_listing AS (
    select * from {{ ref('src_listing') }}
)
select
listing_id,
listing_name,
room_type,
case
    when minimum_nights = 0 THEN 1
    else minimum_nights
END as minimum_nights,
host_id,
REPLACE(price_str,'$')::NUMBER(10,2) AS price,
created_at,
updated_at
from src_listing
