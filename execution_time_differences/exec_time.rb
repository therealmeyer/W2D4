require 'byebug'

# my_min
def my_min1(list)
  min = list.first
  list.each do |el1|
    list.each do |el2|
      min = el1 if el1 < el2 && el1 < min
    end
  end
  min
end

def my_min2(list)
  min = list.first
  list.each do |el|
    min = el if el < min
  end
  min
end

def largest_contigous_subsum1(list)
  sub_arrs = []
  list.each_index do |i|
    list.each_index do |j|
      next if j < i
      sub_arrs << list[i..j]
    end
  end
  sub_arrs.map { |arr| arr.reduce(:+) }.max
end

def largest_contigous_subsum2(list)
  max_sum = list.first
  current = 0

  list.each do |el|
    current += el
    max_sum = current if current > max_sum
    current = 0 if current < 0
  end

  max_sum
end
