divs         = load 'NYSE_dividends' as (exchange:chararray, symbol:chararray,
           	       date:chararray, dividends:float);
           	       
--Filter using matches predicate           	       
startswithcm = filter divs by symbol matches 'CM.*';
dump startswithcm;
