
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