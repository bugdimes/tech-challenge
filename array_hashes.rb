=begin

Problem Statement:

x = [{"a" => 10},{"b" => 20},{"c" => 30}]

How can you obtain the following from the above inputs ?

1. one array containing all keys
2. another containing all values
3. the sum of all the values

=end

x = [{"a" => 10},{"b" => 20},{"c" => 30}]

# Note: There are many ways to operate, I am going with One-liners

# 1. one array containing all keys
p x.flat_map(&:keys) # solution 1
p x.collect { |p| p.keys }.flatten # solution 2

# 2. another containing all values
p x.collect { |p| p.values }.flatten # solution 1
p x.flat_map(&:values) # solution 2

# 3. the sum of all the values
p x.flat_map(&:values).sum # solution 1
p x.collect { |p| p.values }.flatten.sum # solution 2

