f=$1
t=$2
mkdir -p "$t"

while read p; do	
	echo "test $p"
	file=`echo "$p" | sed 's,https://,,g' | sed 's,http://,,g' | sed 's,:,_,g' | sed 's,/,_,g'`
	nscurl --ats-diagnostics -v $p > "./$t/$file.txt"
	c=`grep "Result : PASS" "./$t/$file.txt" | wc -l | sed 's,      ,,g'`
	c2=`grep "Result : " "./$t/$file.txt" | wc -l | sed 's,      ,,g'`
	mv "./$t/$file.txt" "./$t/$file ($c of $c2 tests).txt"
done < "$f"
