// Maps keep insertion order
const dict = new Map([
  [3, "Fizz"],
  [5, "Buzz"],
]);
for (let i = 1; i <= 100; ++i) {
  let output = "";
  dict.forEach((value, key) => output += i % key === 0 ? value : "")
  if (output === "") output = i;
  console.log(output);
}
