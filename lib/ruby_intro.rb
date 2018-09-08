
# Part 1

def sum arr
  arr.sum  # YOUR CODE HERE
end

def max_2_sum arr
  # YOUR CODE HERE
  @sum = 1
  if arr.length == 0
    @sum = 0
  elsif arr.length == 1
    @sum = arr[0]
  else
    @sum = arr.max + arr.sort[-2]
  end
  @sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  @out = false
  if arr.length > 1
    arr.each_index do |x|
      break if @out == true
      arr.each_index do |y|
	 break if @out == true
         if (x != y) && (arr[x]+arr[y] == n)
	   @out = true
	 end
      end   
    end
  end
  @out
end

# Part 2

def hello(name)
  "Hello, " + name# YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
  letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split(//)
  if s.length > 0 && letters.include?(s[0].upcase)
    set = ["A","E","I","O","U"]
    !set.include?(s[0].upcase)
  else
    false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length > 0
    is_binary = true
    binary_set = ["0","1"]
    s.split(//).each do |x|
      is_binary = binary_set.include?(x)  
      break if !is_binary
    end
    if is_binary
      s.to_i(2) % 4 == 0
    else
      false
    end
  else
    false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    unless price > 0 && isbn != ""
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn, :price

  def price_as_string
    split_price_str = @price.to_s.split('.')
    if @price.to_s.split(//).include?(".")
      if split_price_str[1].length >= 2
        decimal_str = split_price_str[1].slice(0,2)
      elsif split_price_str[1].length == 1
        decimal_str = split_price_str[1] + "0"
      else
        decimal_str = "00"
      end
      "$" + split_price_str[0] + "." + decimal_str
    else
      "$" + split_price_str[0] + ".00"
    end
  end


end
