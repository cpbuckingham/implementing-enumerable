module GschoolEnumerable

  def g_each
    for item in self
      yield item
    end
    return self
  end

  def g_select
    arr = []
    self.g_each do |item|
      arr << item if yield (item)
    end
    arr
  end

  def g_reject(&block)
    arr= []
    self.g_select do {|item| block}
      arr
    end

    def g_map
      arry=[]
      self.g_each do {|yield| [yield,-yield]}
      arry
        end

    end

    def g_find
      
    end
  end
end
