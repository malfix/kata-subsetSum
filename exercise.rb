class Exercise
  def initialize(k)
    @k = k
  end

  def calc_sum(*stream)
    @stream = stream.select{|el| el <= @k }.sort
    return find_match([], 0)
  end

  def find_match(corrent_array, start_index)

    if corrent_array.sum == @k
      return corrent_array
    end
    if corrent_array.sum < @k
      @stream.each_with_index do |el, index|
        next if start_index > index # optimize O(n^2) -> O(n!)
        temporary_solutions = corrent_array.dup << el
        result_to_check = find_match(temporary_solutions, index + 1)
        return result_to_check.sort if result_to_check.size > 0
      end
    end
    return []
  end
end
