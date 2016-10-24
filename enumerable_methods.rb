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


