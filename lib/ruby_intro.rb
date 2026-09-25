# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  return 0 if arr.empty?
  return arr.first if arr.length == 1
  arr.max(2).sum
end

def sum_to_n?(arr, n)
  return false if arr.length < 2
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  /^[bcdfghjklmnpqrstvwxyz]/i.match?(s)
end

def binary_multiple_of_4?(s)
  return false unless s =~ /^[01]+$/
  s == "0" || s.end_with?("00")
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, "ISBN cannot be empty" if isbn.to_s.empty?
    raise ArgumentError, "Price must be strictly greater than zero" if price <= 0
    
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
