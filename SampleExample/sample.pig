/* 
	sample offers a simple way to get a sample of your data. It reads through all of your data but 
	returns only a percentage of rows. What percentage it returns is expressed as a double value, between 0 and 1. 
	So, in the following example, 0.1 indicates 10%
*/


divs = load 'NYSE_dividends';
some = sample divs 0.1;

dump some;