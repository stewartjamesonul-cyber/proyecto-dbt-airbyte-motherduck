-- Este test falla si la consulta devuelve al menos una fila
select
    id_cliente,
    saldo_actual
from {{ ref('stg_clientes') }}
where saldo_actual < 0