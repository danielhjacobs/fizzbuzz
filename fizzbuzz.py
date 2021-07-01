dict = {
  3: "Fizz",
  5: "Buzz",
}
for i in range(1, 101):
  output = ""
  # sorted needed in Python version below 3.7
  # For Python 3.7+, insertion order is preserved:
  # "the insertion-order preservation nature of dict objects has been declared to be an official part of the Python language spec."
  # https://docs.python.org/3/whatsnew/3.7.html
  for key in dict:
    if i % key == 0:
      output += dict[key]
  if output == "":
    output = i
  print(output)
