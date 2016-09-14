
daily   = load 'NYSE_daily' as (exchange:chararray, symbol:chararray,
			date:chararray, open:float, high:float, low:float, close:float,
			volume:int, adj_close:float);
			
--since Date is chararray, it is sorted lexically using character values 
--(If ByteArray, its sorted lexically using byte values). 
bydate  = order daily by date;
dump bydate;
