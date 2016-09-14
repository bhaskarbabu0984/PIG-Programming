daily          = load 'NYSE_daily' as (exchange:chararray, symbol:chararray,
			   		date:chararray, open:float, high:float, low:float,
					close:float, volume:int, adj_close:float);
--order by multiple values					
bydatensymbol  = order daily by date, symbol;
dump bydatensymbol;
