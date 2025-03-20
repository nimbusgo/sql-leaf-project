WITH aggregate_orders AS (

  SELECT * 
  
  FROM {{ ref('aggregate_orders')}}

),

Reformat_1 AS (

  {#Converts total order prices into micro-dollars for precise financial analysis.#}
  SELECT CAST(CAST(o_totalprice AS DECIMAL (38, 2)) * 1000000 AS LONG) AS total_price_micro_dollars
  
  FROM aggregate_orders AS in0

)

SELECT *

FROM Reformat_1
