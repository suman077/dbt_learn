WITH raw_host AS (
SELECT * FROM raw.raw_hosts
)
select
id AS host_id,
name AS host_name,
CASE WHEN lower(is_superhost)='t' THEN TRUE
    WHEN lower(is_superhost) = 'f' THEN FALSE
    ELSE NULL END AS is_superhost,
created_at  AS created_date,
updated_at AS updated_date
from raw_host