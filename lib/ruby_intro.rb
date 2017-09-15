# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # YOUR CODE HERE
  i=0
  sum=0
  while i<array.size
    sum = sum+array[i]
    i +=1
  end
  return sum
end

def max_2_sum(array)
  # YOUR CODE HERE
  max1=0 # biggest
  max2=0 # second biggest
  i=0
  while i<array.size
    if i==0
      max1=array[i]
    elsif i==1
      if max1<array[i]
        max2=max1
        max1=array[i]
      else
        max2=array[i]
      end
    else
      if array[i]>max1
        max2=max1;
        max1=array[i]
      elsif array[i]==max1
        max2=array[i]
      elsif array[i]>max2
        max2=array[i]
      end

    end
    i += 1
  end
  return max1+max2
end

def sum_to_n?(array, n)
  # YOUR CODE HERE
  i=0
  arr=Hash.new
  jud=false
  for i in 0..array.size-1 do
    if arr.value?(n-array[i])
      jud=true
      break
    else
      arr.store(i,array[i])
    end
  end
  return jud
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if(s=~/^[bcdfghjhlmnpqrstvwxyz]/i)
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  sum=0;
  i=0;
  if(s=~/^[01]+/)
    for i in 0..s.size-1 do
      if(s[i]=='1')
        sum=sum*2+1
      else
        sum=sum*2
      end
    end
    if(sum%4==0)
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if(isbn.empty?)
      raise ArgumentError
    else
      @isbn=isbn
    end
    if(price<=0)
      raise ArgumentError
    else
    @price=price
    end
  end

  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(value)
    @isbn= value
  end
  def price=(value)
    @price = value
  end

  def price_as_string

    str1=sprintf("%.2f",price)
    return "$#{str1}"
  end
end
