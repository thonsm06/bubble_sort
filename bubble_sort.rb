require 'benchmark'

def bubble_sort_optimized(array)
    sorted_array = array
    sorted = 1
    completed = 1
    count = 0
time = Benchmark.measure do
    until sorted == 0 do
        sorted = 0
        sorted_array.each_with_index do |v, i|
            break if i+completed >= sorted_array.length
                if v > sorted_array[i+1]
                    sorted_array[i], sorted_array[i+1] = sorted_array[i+1], sorted_array[i]
                    array = sorted_array
                    sorted += 1
                    count += 1
                end
                if i+completed == sorted_array.length - 1
                   completed += 1
                end
            end
        end
        
    end
    return "optimized", sorted_array, count, time.real, sorted_array.length
end
p bubble_sort_optimized([4,3,78,2,0,2,1,2,-3.0,0.340,0.4,5,12,34,1.23,42,341,24,21,342,-3.4,12,34.12,2,65])
p bubble_sort_optimized([4,3,78,2,0,2,1,2,-3.0,0.340,0.4,5,12,34,1.23,42,341,24,21,342,-3.4,12,34.12,2,65,
    34,321,-123,-33.02,3434,-1233,-34.321,-34.320,1223,33,67,55,-65,-45,-445,4,5,8,3,99,87,0,9,10,0,1223,33,67,55,-65])
p bubble_sort_optimized([4,3,78,2,0,2,1,2,-3.0,0.340,0.4,5,12,34,1.23,42,341,24,21,342,-3.4,12,34.12,2,65,
    65,-64,64,345,35,4,5,7,31,-3,3,2,0.7,9,-67,32,12,4344,21,22,54.1,1,3,2,1,76,0.6,-5.1,15,4.03,
    34,321,-123,-33.02,3434,-1233,-34.321,-34.320,1223,33,67,55,-65,-45,-445,4,5,8,3,99,87,0,9,10,0])

def bubble_sort_unoptimized(array)
    sorted_array = array
    sorted = 1
    count = 0
time = Benchmark.measure do
    until sorted == 0 do
        sorted = 0
        sorted_array.each_with_index do |v, i|
            break if i+1 >= sorted_array.length
                if v > sorted_array[i+1]
                    sorted_array[i], sorted_array[i+1] = sorted_array[i+1], sorted_array[i]
                    array = sorted_array
                    sorted += 1
                    count += 1
                end
            end
        end
        
    end
    return "unoptimized", sorted_array, count, time.real, sorted_array.length
end
p bubble_sort_unoptimized([4,3,78,2,0,2,1,2,-3.0,0.340,0.4,5,12,34,1.23,42,341,24,21,342,-3.4,12,34.12,2,65])
p bubble_sort_unoptimized([4,3,78,2,0,2,1,2,-3.0,0.340,0.4,5,12,34,1.23,42,341,24,21,342,-3.4,12,34.12,2,65,
    34,321,-123,-33.02,3434,-1233,-34.321,-34.320,1223,33,67,55,-65,-45,-445,4,5,8,3,99,87,0,9,10,0,1223,33,67,55,-65])
p bubble_sort_unoptimized([4,3,78,2,0,2,1,2,-3.0,0.340,0.4,5,12,34,1.23,42,341,24,21,342,-3.4,12,34.12,2,65,
    65,-64,64,345,35,4,5,7,31,-3,3,2,0.7,9,-67,32,12,4344,21,22,54.1,1,3,2,1,76,0.6,-5.1,15,4.03,
    34,321,-123,-33.02,3434,-1233,-34.321,-34.320,1223,33,67,55,-65,-45,-445,4,5,8,3,99,87,0,9,10,0])


