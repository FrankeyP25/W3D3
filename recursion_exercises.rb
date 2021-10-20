
# def range(min, max)
#     r = []
#     (min...max).each { |ele| r << ele }
#     r
# end

def range(min, max)
    return [] if max == min  
    
    range(min,max - 1) + [max - 1]
end

p range(1,5)
