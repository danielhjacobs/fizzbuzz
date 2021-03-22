library(collections) 
dict <- ordered_dict(keys=list(3, 5), items=list("Fizz", "Buzz"))
output <- ''
for(i in 1:100) {
  output <- ''
  for (key in dict$keys()) {
    if (i %% key == 0) {
      output <- paste(output, dict$get(key, ''), sep = "")
    }
  }
  if (output == "") {
    output <- toString(i)
  }
  print(output)
}