// Maps keep insertion order
const dict = new Map([
  [3, "Fizz"],
  [5, "Buzz"],
]);
for (let i = 1; i <= 100; i++) {
  let output = "";
  dict.forEach(function(value, key) {
    if ( i % key === 0) { output += value; }
  });
  if (output === "") { output = i; }
  console.log(output);
}