class Series

  def initialize(string)
    string_to_arr(string)
  end

  def string_to_arr(string)
    @arr = []
    @arr = string.split(//).map(&:to_i)
  end

  def slices(num)

    new_arr = []
    original_input_num = num
    index = 0

    raise ArgumentError if @arr.length < num

    while index != @arr.length
      new_arr << @arr[index..num-1]
      num += 1
      index += 1
    end

    while new_arr.last.length != original_input_num do
      new_arr.pop
    end

    return new_arr
  end

end


