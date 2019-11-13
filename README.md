# test08
####

Python:

reverse_invert([1 , 12 , 'a' , 3.4 , 87 , 99.9 , -42 , 50 , 5.6]) = [-1 , -21 , -78 , 24 , -5]

Ignore all other types than integer.

64 To square(root) or not to square(root)
Write a method, that will get an integer array as parameter and will process every number from this array. Return a new array with processing every number of the input-array like this:

If the number has an integer square root, take this, otherwise square the number.

[ 4 , 3 , 9 , 7 , 2 , 1 ] -> [ 2 , 9 , 3 , 49 , 4 , 1 ] The input array will always contain only positive numbers and will never be empty or null.

The input array should not be modified!

Have fun coding it and please don't forget to vote and rank this kata! :-)

I have created other katas. Have a look if you like coding and challenges.

65 Given a number, say prod (for product), we search two Fibonacci numbers F(n) and F(n+1) verifying
F(n) * F(n+1) = prod. Your function productFib takes an integer (prod) and returns an array:

[F(n), F(n+1), true] depending on the language if F(n) * F(n+1) = prod.

If you don't find two consecutive F(m) verifying F(m) * F(m+1) = prod you will return

[F(m), F(m+1), false] F(m) being the smallest one such as F(m) * F(m+1) > prod.

66 Create function that takes one positive three digit integer and rearranges its digits to get maximum possible number. Assume that argument is integer. Return null (nil for ruby) if argument is not valid.

67 You have to search all numbers from inclusive 1 to inclusive a given number x, that have the given digit d in it. The value of d will always be 0 - 9. The value of x will always be greater than 0.

You have to return as an array

the count of these numbers, their sum, and their product.

x = 11 d = 1 Numbers: 1, 10, 11 Return: [3, 22, 110]

68 Write a function which removes from string all non-digit characters and parse the remaining to number. E.g: "hell5o wor6ld" -> 56

69 Given a string containing a list of integers separated by commas, write the function string_to_int_list(s) that takes said string and returns a new list containing all integers present in the string, preserving the order.

70 Find the last element of a list.

71 A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward or forward. Allowances may be made for adjustments to capital letters, punctuation, and word dividers.

72 You are going to be given a string. Your job is to return that string in a certain order that I will explain below:

Let's say you start with this: 012345

The first thing you do is reverse it: 543210 Then you will take the string from the 1st position and reverse it again: 501234 Then you will take the string from the 2nd position and reverse it again: 504321 Then you will take the string from the 3rd position and reverse it again: 504123

Continue this pattern until you have done every single position, and then you will return the string you have created. For this particular number, you would return: 504132

73 We need a function that can transform a string into a number. (Thought I'd knock this out for some easy points)

74 You start at the first number. If this number x is smaller than 3, take this number x direct for the new array and continue with the next number. If this number x is greater than 2, take the next x numbers (inclusive this number) as a sub-array in the new array. Continue with the next number AFTER this taken numbers. If there are too few numbers to take by number, take the last available numbers.

75 (from CodeFights last month) Write a function that returns the century for the given year (round up if necessary).

76 (from CodeFights last month) Write a function that checks whether input is a palindrome.

77 You will be given two dimensions, imagine a rectangle, write an algorithm that returns in an array a list of
SQUARES that == the area of the rectangle

a positive integer length (parameter named lng) a positive integer width (parameter named wdth) You will return an array with the size of each of the squares.

sqInRect(5, 3) should return [3, 2, 1, 1] sqInRect(3, 5) should return [3, 2, 1, 1]

78 Given array with False/True in every index, count the number of True cases in the array.

79 Timmy & Sarah think they are in love, but around where they live, they will only know once they pick a flower each. If one of the flowers has an even number of petals and the other has an odd number of petals it means they are in love.

Write a function that will take the number of petals of each flower and return true if they are in love and false if they aren't.

80 Positive integers that are divisible exactly by the sum of their digits are called Harshad numbers, see Wikipedia for further details. Write a function numberJoy() which tests if a positive integer n is Harshad and returns True if the product of its digit sum, and its digit sum reversed, equals n. Otherwise return False.

81 "Identical Elements" - compare arrays, return boolean depending whether or not they contain any same values.

82 "Plural" - We need a simple function that determines if a plural is needed or not. It should take a number, and return true if a plural should be used with that number or false if not. This would be useful when printing out a string such as 5 minutes, 14 apples, or 1 sun.

83 "Sort and Star" - You will be given an vector of string(s). You must sort it alphabetically (case-sensitive!!)
and then return the first value. The returned value must be a string, and have '*** ' between each of its letters.

84 "Get list sum recursively" - Write function sumR which returns the sum of values in a given list. Try no to cheat and provide recursive solution.

85 "Rearrange Number to Get its Maximum" - Create function that takes one positive three digit integer and rearranges its digits to get maximum possible number. Assume that argument is integer. Return null (nil for ruby) if argument is not valid.

86 "Circle area inside square" - Turn an area of a square in to an area of a circle that fits perfectly inside the square.

87 "The Mean of Two Means" - Write a function getMean that takes as parameters an array (arr) and 2 integers (x and y). The function should return the mean between the mean of the the first x elements of the array and the mean of the last y elements of the array.

The mean should be computed if both x and y have values higher than 1 but less or equal to the array's length. Otherwise the function should return -1.

getMean([1,3,2,4], 2, 3) should return 2.5 because: the mean of the the first 2 elements of the array is (1+3)/2=2 and the mean of the last 3 elements of the array is (4+2+3)/3=3 so the mean of those 2 means is (2+3)/2=2.5.

getMean([1,3,2,4], 1, 2) should return -1 because x is not higher than 1.

getMean([1,3,2,4], 2, 8) should return -1 because 8 is higher than the array's length.

88 (LVL 8) "Is Upcase" - Create a method is_uppercase() to see whether the string is ALL CAPS.

89 (LVL 8) "Remove exclamation marks" - Write function RemoveExclamationMarks which removes all exclamation marks from a given string.

90 (LVL 8) "Square(n) Sum" - Complete the squareSum method so that it squares each number passed into it and then sums the results together.

91 (LVL 8) "Grasshopper - Basic Function Fixer" - I created this function to add five to any number that was passed in to it and return the new value. It doesn't throw any errors but it returns the wrong number.

Can you help me fix the function? 

=end