declare -a dict
dict[3]=Fizz
dict[5]=Buzz
for i in {1..100}; do
    output=""
	for key in ${!dict[@]}; do
	    if (($i % $key == 0 )); then output+=${dict[$key]}; fi
	done
	if [ -z $output ]; then output=$i; fi
	echo $output
done