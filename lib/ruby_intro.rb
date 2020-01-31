# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0;
  arr.each { |i| sum += i}
  return sum
end

def max_2_sum arr
  #edge cases: array has 0 elements, array has 1 element
  if (arr.length() == 0)
    return 0
  elsif (arr.length() == 1)
    return arr[0]
  end

  #standard
  temp = arr.max(2)
  return temp[0] + temp[1]

  return int1 + int2
end

def sum_to_n?(arr, n)
  return false if arr.length() <= 1 #god I missed single-line ifs

  #if the array includes n - arr[num], then arr[num] + that = n
  arr.each_with_index do |num, i|
    sub = n - num
    #&& to protect against, say, [6, 1, 2], 12
    return true if (arr.include?(sub) && arr.index(sub) != i)
  end

  return false #if nothing above worked, then just stop
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.length == 0

  letter = s[0].downcase
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  return false if s == ""
  return false unless s =~ /^[01]*$/i

  num = s.to_i(2)
  return (num % 4 == 0)
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  @isbn = ""
  @price = 0

  def initialize(isbnIn, priceIn)
    raise ArgumentError if isbnIn == ""
    raise ArgumentError if priceIn <= 0

    @isbn = isbnIn
    @price = priceIn
  end

  def price_as_string
    #to_i rounds to a whole number, so... I won't complain, I suppose.
    #kinda ugly. 
    cents = (@price % 1) * 100
    return "$" + (@price - cents/100).to_i.to_s + "." + cents.to_i.to_s.ljust(2, "0")
  end
end
