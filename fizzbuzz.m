dict = containers.Map({3, 5}, {'Fizz', 'Buzz'});
for inum = 1:100
  fizzbuzz = '';
  for key = keys(dict)
    if mod(inum,key{1}) == 0
	  fizzbuzz = [fizzbuzz dict(key{1})];
    end
  end
  if isempty(fizzbuzz)
  fizzbuzz = [fizzbuzz num2str([inum])];
  end
  disp(fizzbuzz)
end