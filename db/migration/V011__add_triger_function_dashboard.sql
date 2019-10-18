CREATE OR REPLACE FUNCTION totalVendas(de TIMESTAMP, ate TIMESTAMP) 
RETURNS vendas AS $
BEGIN
    RETURN QUERY SELECT v.* 
                    FROM sales AS v
                 WHERE v.data_venda >= $1 AND v.data_venda <= $2;
END;
             
$ LANGUAGE plpgsql;
