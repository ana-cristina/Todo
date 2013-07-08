class String
  def my_reverse
    (0... (self.length/2)).each {|i| self[i], self[self.length - i- 1] = self[self.length - i - 1], self[i]}
    self
  end
end

class Array
  def my_collect
    a = []
    i=0
    self.each { |n|
      a[i] = yield(n)
      i +=1
    }
    a
  end

  def my_inject
    m = 0
    self.each{ |n|
      m = yield(m,n)
    }
    m
  end
end