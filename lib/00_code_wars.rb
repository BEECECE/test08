
  #63  Reverse and invert integers in array, throw out all other elements
def reverse_invert(array)
  i = 0
    ints = []
    while i < array.count
      ints << array[i] if array[i].is_a? Integer
      i += 1
    end
  
    ints = ints.map do |x|
      if x.to_s.length > 1 && x < 0
        x.to_s.reverse.to_i
      elsif x.to_s.length > 1 && x > 0
        x.to_s.reverse.to_i * -1
      else
        x * -1
      end
    end
  end
end


def reverse_invert array
    array.select{|n|n.is_a? Integer }.map{|i| (-i).to_s.sub(/\d+/,&:reverse).to_i }
  end
    
    #64  If the number has an integer square root, take this, otherwise square the number. / Alternate Solutions
  def square_or_square_root(arr)
    new_arr = Array.new
    arr.each do |i|
      Math.sqrt(i) % 1 == 0 ? new_arr << Math.sqrt(i).to_i : new_arr << i ** 2
    end
      new_arr
  end
    
  def square_or_square_root(arr)
    arr.map { |number| Math.sqrt(number) % 1 == 0 ? Math.sqrt(number) : number ** 2}
  end
    
  def square_or_square_root(arr)
    arr.map do |n|
      sqrt = Math.sqrt(n)
      sqrt % 1 == 0 ? sqrt : n**2
    end
  end
    
    #65 Determines whether object (prod) is the product of two consecutive Fibonacci numbers, returns array
    # containing the two numbers that are == (prod) or first that are >= (prod),
    # as well as (true) or (false) in arr[2] - And refactored alternate solution
  def productFib(prod)
    new = []
    arr = [0 ,1]
      while arr[-1] * arr[-2] < prod
        arr << arr[-1] + arr[-2]
      end
    new << arr[-2]
    new << arr[-1]
      arr[-1] * arr[-2] == prod ? new << true : new << false
  end
    
  def productFib(prod)
    a, b = [0, 1]
      while prod > a * b
        a, b = [b, a + b]
      end
       [a, b, prod == a * b]
  end
    
    #66 Create function that takes one positive three digit integer and rearanges its
    #digits to get maximum possible number. Assume that argument is integer. Return null
    #(nil for ruby) if argument is not valid.
  def max_redigit(num)
    return nil if num.to_s.length != 3
    num.to_s.chars.sort.reverse.join.to_i
  end
    
    #67You have to search all numbers from inclusive 1 to inclusive a given number x,
    #that have the given digit d in it.
    # The value of d will always be 0 - 9.
    # The value of x will always be greater than 0.
    #
    # You have to return as an array
    #
    # the count of these numbers,
    #
    # their sum
    #
    # and their product.
  def numbers_with_digit_inside(x, d)
    d = d.to_s
    vals = []
      (1..x).each do |i|
        vals << i if i.to_s.include?(d)
    end
      return [0,0,0] unless vals.size > 0
    [vals.size,
      vals.inject(0) { |s,v| s += v },
      vals.inject(1) { |p,v| p *= v }
    ]
  end
    
  def numbers_with_digit_inside(x, d)
    nums = ('1'..x.to_s).select { |num| num.include?(d.to_s) }.map(&:to_i)
    [nums.size, nums.reduce(0, :+), nums.reduce(:*) || 0]
  end
    
    #68 Write a function which removes from string all non-digit
    #   characters and parse the remaining to number. E.g: "hell5o wor6ld" -> 56
  def get_number_from_string(s)
    s.scan(/\d/).join('').to_i
  end
    
    #69 Given a string containing a list of integers separated by commas,
    #   write the function string_to_int_list(s) that takes said string and returns
    #   a new list containing all integers present in the string, preserving the order.
  def string_to_int_list(s)
    s.split(',').map { |i| i == '' ? nil : i.to_i }.compact
  end
    
  def string_to_int_list(s)
    s.scan(/-?\d+/).map(&:to_i)
  end
    
    #70 Find the last element of a list.
  def last(*args)
    args[-1].is_a?(Integer) ? args.flatten[-1] : args[-1][-1]
  end
    
    # 71 A palindrome is a word, phrase, number, or other sequence of characters
    # which reads the same backward or forward. Allowances may be made for adjustments to
    # capital letters, punctuation, and word dividers.
  def is_palindrome(str)
    str.to_s == str.to_s.reverse ? true : false
  end
    
    # 72 You are going to be given a string.
    # Your job is to return that string in a certain order that I will explain in  (README DESCRIPTION):
  def reverse_fun(string)
    reversed = ''
    str = string.chars
    string.length.times { reversed.concat str.reverse!.delete_at 0 }
      reversed
  end
    
    # 73 We need a function that can transform a string into a number.
  def string_to_number(s)
    s.to_i
  end
    
    # 74  You start at the first number.
    #  If this number x is smaller than 3, take this number x direct
    #   for the new array and continue with the next number.
    #  If this number x is greater than 2, take the next x numbers (inclusive this number) as a
    #   sub-array in the new array. Continue with the next number AFTER this taken numbers.
    #  If there are too few numbers to take by number, take the last available numbers.
  def unflatten(flat_array)
    new_array = []
      until flat_array.empty?
        num = flat_array.shift
        num < 3 ? new_array << num : new_array << [num].push(flat_array.shift(num-1)).flatten
      end
    new_array
  end
    
    
    #75   (from CodeFights last month) Write a function that returns the century for the given year (round up if necessary).
  def centuryFromYear(year)
    year % 10 == 0 ? year / 100 : year / 100 + 1
  end
    
    #76   (from CodeFights last month) Write a function that checks whether input is a palindrome.
  def checkPalindrome(inputString)
    if inputString.split('').reverse == inputString.split('')
      return true
    else
      false
    end
  end
    
    #77 You will be given two dimensions, imagine a rectangle, write an algorithm that returns in an array a list of
    #   SQUARES that == the area of the rectangle
  def sqInRect(lng, wdth)
    answer = []
      if lng == wdth
        return nil
      end
      while lng > 0 && wdth > 0
        answer.push([lng, wdth].min)
        if lng >= wdth
          lng -= wdth
        else
          wdth -= lng
        end
      end
    return answer
  end
    
    # 78 Given array with False/True in every index, count the number of True cases in the array. Simple.
  def countSheeps array
    count = 0
    for x in array do
      x == true ? count +=1 : count + 0
    end
    return count
  end
    
    # 79 One flowers petals are even and one flowers petals are odd == true, else false
  def lovefunc( flower1, flower2 ) 
    (flower1 + flower2).odd?
  end
    
    # 80 Write a function numberJoy() which tests if a positive integer n is Harshad,
    # and returns True if the product of its digit sum, and its digit sum reversed, equals n. Otherwise return False.
  def number_joy(n)
    dig = n.to_s.split('').map(&:to_i)
    sum = dig.inject(:+)
    sum * sum.to_s.reverse.to_i == n ? true : false
  end
    
    #  81 "Identical Elements" - compare arrays, return boolean depending whether or not they contain any same values.
  def duplicate_elements(m, n)
    !(n & m).empty?
  end
    
    #  82 "Plural" - We need a simple function that determines if a plural is needed or not.
    #     It should take a number, and return true if a plural should be used with that number or false if not.
    #     This would be useful when printing out a string such as 5 minutes, 14 apples, or 1 sun.
  def plural(n)
    n == 1 ? false : true
  end
    
    #  83 "Sort and Star" - You will be given an vector of string(s).
    #     You must sort it alphabetically (case-sensitive!!) and then return the first value.
    #     The returned value must be a string, and have '***' between each of its letters.
  def two_sort(s)
    s.sort[0].split('').flat_map { |x| [x, "***" ] }.tap(&:pop).join()
  end
    #  HAHA - thats a good refactor
  def two_sort(s)
    s.sort[0].chars.join("***")
  end
    
    #  84 "Get list sum recursively" - Write function sumR which returns the sum of values in a given list.
    #     Try no to cheat and provide recursive solution.
  def sum_r(x)
    return 0 if x.empty?
    x[0] + sum_r(x[1..-1])
  end
    
    #  85 "Rearange Number to Get its Maximum" - Create function that takes one positive three digit integer
    #     and rearranges its digits to get maximum possible number. Assume that argument is integer.
    #     Return null (nil for ruby) if argument is not valid.
  def max_redigit(num)
    if num > 99 && num.to_s != num.to_s.reverse && num < 1000
      num.to_s.split('').sort.reverse.map(&:to_i).join.to_i
    else
      nil
    end
  end
    
    #  86 "Circle area inside square" - Turn an area of a square in to an area of a circle that fits perfectly inside the square.
  def square_area_to_circle(size)
    return size * Math::PI / 4
  end
    
    #  87 "The Mean of Two Means" - . The function should return the mean between the mean of the the first
    #   x elements of the array and the mean of the last y elements of the array.
  def get_mean(arr, x, y)
    return -1 if x < 2 || y > arr.size || (y <= 1)
    ((arr[0..(x - 1)].inject(:+) / x.to_f + arr[-y..-1].inject(:+) / y.to_f) / 2.0)
  end
    
    #  88 (LVL 8) "Is Upcase" - Create a method is_uppercase() to see whether the string is ALL CAPS.
  class String
    def is_upcase?
      self.upcase == self
    end
  end
    
    #  89 (LVL 8) "Remove exclamation marks" - Write function RemoveExclamationMarks which removes all exclamation marks from a given string.
  def remove_exclamation_marks(s)
    s.delete("!")
  end
    
    #  90 (LVL 8) "Square(n) Sum" - Complete the squareSum method so that it squares each number passed into it and then sums the results together.
  def squareSum(numbers)
    number.map { |i| i ** 2 }.reduce(0, :+)
  end
    
    #  91 (LVL 8) "Grasshopper - Basic Function Fixer" - I created this function to add five to any number
    # that was passed in to it and return the new value. It doesn't throw any errors but it returns the wrong number.
    
    # Can you help me fix the function?
    
  def addFive(num)
    num += 5
  end
  
  =begin
    #15   Finding the new value in an array of integers, when provided the average of integers that needs to be attained
    def new_avg(arr, newavg)
      if (arr == []) then sm = 0  else sm = arr.inject{ |sum,x| sum + x } end
        add = (arr.length + 1) * newavg - sm
          if (add > 0) then
              return add.ceil
          end
        raise ArgumentError, "Expected New Average is too low"
      end
    end
  =end