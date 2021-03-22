package main

import (
	"strconv"
	"sort"
)

func main() {
	var output string;
	dict := map[int]string{
		3: "Fizz",
		5: "Buzz",
	};
	var keys []int;
	for key := range dict {
		keys = append(keys, key);
	}
	sort.Ints(keys);
	for i := 1; i <= 100; i++ {
		output = "";
		for _, key := range keys {
			if i % key == 0 { output += dict[key]; }
		}
		if (output == "") { output = strconv.Itoa(i); }
		print(output + "\n");
	}
}