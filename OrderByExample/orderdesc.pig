daily    = load 'NYSE_daily' as (exchange:chararray, symbol:chararray,
			date:chararray, open:float, high:float, low:float, close:float,
			volume:int, adj_close:float);
--order one field in desc order
byclose  = order daily by close desc, open;
dump byclose;
