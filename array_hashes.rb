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
p x.flat_map(&:keys)
p x.collect { |p| p.keys }.flatten

# 2. another containing all values
p x.collect { |p| p.values }.flatten
p x.flat_map(&:values)

# 3. the sum of all the values
p x.flat_map(&:values).sum
p x.collect { |p| p.values }.flatten.sum

