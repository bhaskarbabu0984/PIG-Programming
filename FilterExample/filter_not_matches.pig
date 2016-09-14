divs           = load 'NYSE_dividends' as (exchange:chararray, symbol:chararray,
             	    date:chararray, dividends:float);

--Filter with not predicate
notstartswithcm = filter divs by not symbol matches 'CM.*';
dump notstartswithcm;
