DROP FUNCTION IF EXISTS total_vendas();

CREATE OR REPLACE FUNCTION total_vendas()
RETURNS table (data_venda date, total bigint) AS $$
    SELECT v.data_venda::date as data_venda, count(*) 
	FROM vendas AS v
	WHERE v.data_venda between (now() - '30 days'::interval) and now()
	GROUP BY v.data_venda::date
	ORDER BY v.data_venda::date ASC
$$ LANGUAGE SQL;