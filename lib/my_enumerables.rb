module Enumerable
  # Your code goes here

  def my_all?
    self.each do |el|
      return false unless yield(el)
    end
    true
  end

  def my_any
    self.each do |el|
      return true if yield(el)
    end
    false
  end

  def my_count
    count = 0
    self.each do |el|
      return count += 1 if yield(el)
    end
    nil    
  end

  def my_each_with_index
    index = 0
    self.each do |el|
      yield(el, index)
      index += 1
    end
    self
  end

  def my_inject(arg = nil)
    product = arg
    self.each do |el|
      if product.nil?
        product = el
      else
        product = yield(product, el)
      end
    end
    product
  end

  def my_map
    new_arr = []
    self.each do |el|
      new_arr << yield(el)
    end
    return new_arr
  end

  def my_none
    self.each do |el|
      return false if yield(el)
    end
    return true
  end

  def my_select
    new_arr = []
    self.each do |el|
      if yield(el)
        new_arr << el
      end
    end
    new_arr    
  end
end


class Array
  
  def my_each
    for el in self do
      yield(el)
    end
    return self
  end

end
