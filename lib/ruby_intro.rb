# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  
  ans = 0
  for i in arr
    ans += i
  end
  return ans
end

def max_2_sum arr
  # YOUR CODE HERE
  
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    if arr[0] > arr[1]
      max1 = arr[0]
      max2 = arr[1]
    else
      max1 = arr[1]
      max2 = arr[0]
    end
    
    for i in 2...arr.length
      if arr[i] >= max1
        max2 = max1
        max1 = arr[i]
      elsif arr[i] > max2
        max2 = arr[i]
      end
    end
    
    return max1 + max2
        
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  if arr.length < 2
    return false
  end
  
  for i in 0...arr.length
    for j in (i+1)...arr.length
      if arr[i] + arr[j] == n
        return true
      end
    end
  end 
  
  return false
    
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  if s.length == 0
    return false
  end 
  
  letter = /[BCDFGHJKLMNPQRSTVWXYZ]/i
  
  if s[0].upcase =~ letter
    return true
  else
    return false
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if s.length == 0
    return false
  end
  
  for i in 0...s.length
    if s[i] != "0" and s[i] != "1"
      return false
    end
  end
  
  return (s.to_i(2) % 4 == 0)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
	attr_accessor :price
	
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return format("$%0.2f", @price)
  end
  
end
