# PROJECT 2: ENUMERABLE METHODS
# Rebuilding enumerable methods to work for both arrays and hashes

module Enumerable

  def my_each
    return to_enum(:my_each) unless block_given?

    if self.is_a? Hash
      for key in self.keys
        yield(key, self[key])
      end
    else # self is array
      for elem in self
        yield(elem)
      end
    end
  end

  def my_each_with_index
    return to_enum(:my_each_with_index) unless block_given?
    index = 0
    if self.is_a? Hash
      for key in self.keys
        yield([key, self[key]], index)
        index += 1
      end
    else # self is array
      for elem in self
        yield(elem, index)
        index += 1
      end
    end
  end

  def my_select
    return to_enum(:my_select) unless block_given?

    if self.is_a? Hash
      new_collection = {}
      my_each { |k, v| new_collection[k] = v if yield(k,v) }
    else # self is array
      new_collection = []
      my_each { |elem| new_collection << elem if yield(elem) }
    end

    new_collection
  end

  def my_all?
    if self.is_a?(Hash) && block_given?
      my_each { |k,v| return false unless yield(k, v) }
    else # self is array
      if block_given?
        my_each { |elem| return false unless yield(elem) }
      else
        my_each { |elem| return false if elem == false || elem.nil? }
      end
    end
    true
  end

  def my_any?
    if self.is_a? Hash
      if block_given?
        my_each { |k,v| return true if yield(k, v) }
      else
        return true unless self.empty? 
      end
    else # self is array
      if block_given?
        my_each { |elem| return true if yield(elem) }
      else
        my_each { |elem| return true unless elem == false || elem.nil? }
      end
    end
    false
  end

  def my_none?
    if self.is_a? Hash
      if block_given?
        my_each { |k,v| return false if yield(k, v) }
      else
        return false unless self.empty? 
      end
    else # self is array
      if block_given?
        my_each { |elem| return false if yield(elem) }
      else
        my_each { |elem| return false unless elem == false || elem.nil? }
      end
    end
    true
  end

  def my_count(item = nil, &block)
    if self.empty?
      0
    elsif item
      if self.is_a? Hash
        0
      else # self is array
        (my_select { |elem| elem == item }).size
      end
    elsif block_given?
      (my_select &block).size
    else
      self.size
    end
  end

end
