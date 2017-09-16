# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for i in arr
    sum =sum + i
  end
  return sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  
  if arr.length == 1
   return arr[0]
  end
  l_arr = arr 
  return l_arr.sort.reverse[0]+l_arr.sort.reverse[1]
  
end

def sum_to_n? arr, n
    dict = Hash.new
    if arr.length==0 || arr.length==1
      return false
    end
    
    for i in arr
      dict[i] = n-i
    end
    
    for i in arr
    
      if dict.key(i) != nil
      
        if dict.key(i) == i
          next 
          
        else
          return true
        end
        
      end
      
    end
    
    return false
      
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  local_s=s.downcase
  if local_s.length ==0
    return false
  end
  test= "bcdfghijklmnpqrstvwxyz"
  i=0
  while i < test.length
    if local_s[0]==test[i]
      return true
    end
    i=i+1
  end
  return false
end

def binary_multiple_of_4? s
  if s.length ==0
    return false
  end
  test = ["0","1"]
  i=0
  while i<s.length
    if test.include?(s[i])
      i=i+1
    else
      return false
    end
  end
  
  if s[s.length-1].to_i==1 or s[s.length-2].to_i==1
    return false
  else 
    return true
  end   
  
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    if isbn.length == 0
      raise ArgumentError
    end
    if price<=0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  def isbn=(isbn)
    @isbn=isbn
  end
  
  def price=(price)
    @price=price
  end
  
  
  
  
  def price_as_string
    price_L ='%.2f' % @price.to_f
    
    return "$#{price_L}"
  end
  
end