
players = load 'baseball' as (name:chararray, team:chararray,
			position:bag{t:(p:chararray)}, bat:map[]);

--Foreach element in players, flatten the position field
pos     = foreach players generate name, flatten(position) as position;
bypos   = group pos by position;
dump bypos;
