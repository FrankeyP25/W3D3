require "byebug"
# def range(min, max)
#     r = []
#     (min...max).each { |ele| r << ele }
#     r
# end

def range(min, max)
    return [] if max == min  
    
    range(min,max - 1) + [max - 1]
end

# p range(1,5)


# Exponentiation
# Write two versions of exponent that use two different recursions:

# # this is math, not Ruby methods.

# def exp(b, n)
#     return 1 if n == 0

#     b * exp(b, n - 1)
# end


# # recursion 1
# exp(b, 0) = 1
# exp(b, n) = b * exp(b, n - 1)

# p exp(2, 1) #=> 32

# def exp(b, n)
#    return 1 if n == 0
#    return b if n == 1

# #    if n.even?
# #     (exp(b, n / 2) ** 2)
# #    else
# #     b * (exp(b, (n - 1) / 2) ** 2)
# #    end
#     ((exp(b, n / 2) ** 2)) * (b * (exp(b, (n - 1) / 2) ** 2))
# end
# #   return 1 if n == 0

# #   b * exp(b, n - 1)
# # end

# p exp(2,256) #=> 32


# # recursion 2
# exp(b, 0) = 1
# exp(b, 1) = b
# exp(b, n) = exp(b, n / 2) ** 2             [for even n]
# exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2) [for odd n]
# Note that for recursion 2, you will need to square the results of exp(b, n / 2) and (exp(b, (n - 1) / 2). Remember that you don't need to do anything special to square a number, just calculate the value and multiply it by itself. So don't cheat and use exponentiation in your solution.

# Suggestion: Break the methods down into parts..

# Suggestion 2: Try walking through your code with Simple Examples.

# If the n == 256, about how many nested recursive steps will we run in the first case?

# How deep will we need to recurse for the second? Keep in mind that the first reduces the exponent by one for each recursion, while the second reduces it by half.

# In addition to testing your methods by running the code, try the following exercise:

# On paper, write out the value of each variable for every line in the code:

# Write out what happens with base 0 and power 0 as inputs (should be easy). e.g., if you had run exp(0,0).
# Write out what happens for base 0 and power 1. e.g., if you had run exp(0,1).
# Write out what happens for base 1 and power 0.
# Write out what happens for base 1 and power 1.
# Write out what happens for base 1 and power 2.
# Write out what happens for base 2 and power 0.
# Write out what happens for base 2 and power 1.
# Write out what happens for base 2 and power 2.
# Make sure you can trace from the very beginning to the very end in these examples.

# How many examples do you need to walk through to be confident that it works?

# def deep_dup(arrays)
#     return [] if arrays.empty?
#     dup = []
    
#     arrays.each do |subarr|
#         if !subarr.is_a?(Array)
#             dup << subarr
#         else
#             dup << deep_dup(subarr)
#         end
#     end
#     dup
# end

# p deep_dup [[1,2,3],[4,5,6],[7]]

# robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]

# Using recursion and the is_a? method, write an Array#deep_dup method that will
# perform a "deep" duplication of the interior arrays.


# Fibonacci
# Write a recursive and an iterative Fibonacci method. The method should 
# take in an integer n and return the first n Fibonacci numbers in an array.

# You shouldn't have to pass any arrays between methods; you should be able
#  to do this just passing a single argument for the number of Fibonacci numbers requested.

# 0, 1, 1, 2, 3, 5, 8, 13

# def fib(n)
#     return [] if n == 0
#     return [0] if n == 1
#     return [0, 1] if n == 2
#     arr = [0, 1]
#     # (0...arr.length - 1).each do |i|
#     while arr.length < n
#         arr << arr[-1] + arr[-2]
#     end
#     # n -= 1
#     arr
# end

# def fib(n)
#     return nil if n < 0
#     return [] if n == 0
#     return [0] if n == 1
#     return [0, 1] if n == 2

#     arr = [0, 1]
#     # fib(n - 1)[-1] + fib(n - 1)[-2]
#     fib(n - 1) << fib(n - 1)[-1] + fib(n - 1)[-2]
#     # arr
# end

# p fib(-8)

def bsearch(array, value)
    return nil if array.empty?
    # return nil if !array.include?(value)

    # debugger
    indeces = array.dup.freeze  #[1, 2, 3]
    
    middle = (array.length) / 2
    left = array[(0...middle)]
    right = array[(middle..-1)]

    # debugger
    if array[middle] == value
      return indeces.index(value) 
    elsif value < array[middle]
        bsearch(left, value)
    else
        middle + bsearch(right, value)
    end
    #somewhere bsearch(array[(0..-2)]
end



puts bsearch([1, 2, 3], 1) # => 0
puts bsearch([2, 3, 4, 5], 3) # => 1
puts bsearch([2, 4, 6, 8, 10], 6) # => 2
puts bsearch([1, 3, 4, 5, 9], 5) # => 3
puts bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
puts bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
puts bsearch([1, 2, 3, 4, 5, 7], 6) # => nil