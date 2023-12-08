r:read0`:sample.txt

f:{[i;r;g;b]
	dz:({(`$key d)!value d:"J"$(!). flip 2 cut first each","vs'reverse x}')each 1_''" "vs''";"vs'(s:":"vs'i)[;1];
	gid:"J"$last each" "vs's[;0];
	sum gid where(&/)(all')each(r>=dz@''`red;g>=dz@''`green;b>=dz@''`blue)
	}
i:read0`:input.txt
q)f[i;12;13;14]



f2:{[i]
	dz:({(`$key d)!value d:"J"$(!). flip 2 cut first each","vs'reverse x}')each 1_''" "vs''";"vs'(s:":"vs'i)[;1];
	gid:"J"$last each" "vs's[;0];
	sum prd each flip(max')each(dz@''`red;dz@''`green;dz@''`blue)
	}
q)f2 i
