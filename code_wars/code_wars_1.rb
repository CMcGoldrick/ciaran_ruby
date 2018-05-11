# def find_outlier(integers)
#   count_odds = 0

#   integers.each do |number|
#     count_odds += 1 if number % 2 == 1
#   end



#   integers.each do |number|
#     if count_odds > 1
#       return number if number % 2 == 0
#     else
#       return number if number % 2 == 1
#     end
#   end

# end

# p find_outlier([160, 3, 1719, 19, 11, 13, -21]) # 160
# p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) # 11

# --------------------------------------

# def remove_smallest(numbers)

#   if numbers == []
#     return []
#   end

#   x = numbers.min
#   min_index = numbers.index(x)
#   numbers.delete_at(min_index)

#   return numbers
# end

# p remove_smallest([1,2,3,4,5]) # [2,3,4,5]
# p remove_smallest([5,3,2,1,4]) # [5,3,2,4]
# p remove_smallest([2,2,1,2,1]) # [2,2,2,1]
# p remove_smallest([]) 

# --------------------------------------

# def binary_array_to_number(arr)
#   arr.map! { |x| x.to_s }.join("").to_i(2)
# end 

# binary_array_to_number([0, 0, 0, 1]) # 1
# binary_array_to_number([1, 1, 1, 1]) # 15
# binary_array_to_number([1, 0, 0, 1]) # 9
# binary_array_to_number([1, 0, 0, 1, 1, 0, 0, 1]) # 153

# --------------------------------------

# def sum_two_smallest_numbers(numbers)
#   x = numbers.min
#   x_index = numbers.index(x)
#   numbers.delete_at(x_index)
#   y = numbers.min
#   return x + y  
# end

# p sum_two_smallest_numbers([5, 8, 12, 18, 22]) # 13 
# p sum_two_smallest_numbers([7, 15, 12, 18, 22]) # 19 
# p sum_two_smallest_numbers([25, 42, 12, 18, 22]) # 30

# --------------------------------------

# def accum(s)
#   a = s.split("")
#   array = []
#   index = 0

#   a.length.times do 
#     array << a[index].upcase
#     index += 1
#   end

#   n = 1

#   (a.length-1).times do
#     array[n] << a[n].downcase * n
#     n += 1
#   end

#   result = array.join("-")

#   return result
# end

# p accum("abcd")    # "A-Bb-Ccc-Dddd"
# p accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# p accum("cwAt")    # "C-Ww-Aaa-Tttt"

# --------------------------------------

# def get_sum(a,b)
#   array = []
#   array << a << b
#   array.sort!
#   sum_array = [*array[0]..array[1]]
#   sum_array.reduce(:+)
# end

# p get_sum(1, 0)  # 1 + 0 = 1
# p get_sum(1, 2)  # 1 + 2 = 3
# p get_sum(0, 1)  # 0 + 1 = 1
# p get_sum(1, 1)  # 1 Since both are same
# p get_sum(-1, 0)  # -1 + 0 = -1
# p get_sum(14, 14) # -1 + 0 + 1 + 2 = 2

# --------------------------------------

# def extraLongFactorials(n)
  
#   (1..n).inject(:*)
 
# end

# p extraLongFactorials(12)


# --------------------------------------

















