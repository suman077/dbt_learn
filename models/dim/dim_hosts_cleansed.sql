WITH src_host AS (
    SELECT * FROM {{ ref('src_host')}}
)
select
    host_id,
    NVL(host_name,'Anonymous') as host_name,
    is_superhost,
    created_date,
    updated_date
FROM src_host
