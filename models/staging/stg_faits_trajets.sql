with
    ft as (select * from {{ source("vtc", "Trajets") }}),
    d as (
        select id_date, date(2024, mois, jour) as date_trajet
        from {{ source("vtc", "Dates") }}
    )
select ft.*, d.date_trajet
from ft
left join d on ft.id_date = d.id_date
