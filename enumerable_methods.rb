# PROJECT 2: ENUMERABLE METHODS
# Rebuilding enumerable methods to work for arrays and hashes (when applicable)

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
    for elem in self
      yield(elem, index)
      index += 1
    end
  end

end


