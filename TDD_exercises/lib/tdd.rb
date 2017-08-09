def my_uniq(arr)
  arr.reduce([]) do |acc, el|
    acc << el if !acc.include?(el)
    acc
  end
end

class Array
  def two_sum
    return [] if length < 2
    result = []

    self.each_index do |idx|
      (idx+1...length).each do |idx2|
        result << [idx, idx2] if self[idx] + self[idx2] == 0
      end
    end
    result
  end
end


def my_transpose(arr)
  result = Array.new(arr.length) { [] }

  arr.length.times do |i|
    arr.each do |row|
      result[i] << row[i]
    end
  end

  result
end
