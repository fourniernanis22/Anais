SELECT
id_client,
nom_client,
prenom_client,
email_client,
id_segment
FROM {{ source('vtc', 'Clients') }}
WHERE email_client IS NOT NULL