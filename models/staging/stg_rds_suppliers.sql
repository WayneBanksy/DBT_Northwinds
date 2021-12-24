WITH source as (
    SELECT
        SPLIT_PART(CONTACT_NAME, ' ', 1) as contact_first_name,
        SPLIT_PART(CONTACT_NAME, ' ', -1) as contact_last_name,
        supplier_id,
        contact_title,
        address,
        city,
        region,
        postal_code,
        country,
        phone,
        fax,
        homepage
    FROM {{ source('rds', 'suppliers')}}
)
SELECT * from source

