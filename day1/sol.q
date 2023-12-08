enl:enlist
r:read0`:sample.txt
i:read0`:input.txt
/ Part 1
sum"J"$flip(first;last)@/:\:i@'where each i within\:48 57

/ Part 2

nt:("one";"two";"three";"four";"five";"six";"seven";"eight";"nine")
ns:string n:1+til 9
nn:raze 2#enl n
f:{[x]	
	t:([]num:();pos:());
	w:where 0<count each p:ss[x]each nt,ns; / Text
	t:t upsert flip(nn w;p w);
	"J"$raze string value exec num@pos?min pos,num@pos?max pos from ungroup t
	}
sum f each i