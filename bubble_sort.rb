require 'benchmark'

def bubble_sort(array)
    sorted_array = array
    low_value = sorted_array.min
    high_value = sorted_array.max
    sorted = 1
    start_range = 0
    end_range = sorted_array.length - 1
    #p low_value, high_value
time = Benchmark.measure do
    until sorted == 0 do
        sorted = 0
        sorted_array.each_with_index do |v, i|
            break if i+1 >= sorted_array.length
                if v > sorted_array[i+1]
                    sorted_array[i], sorted_array[i+1] = sorted_array[i+1], sorted_array[i]
                    sorted += 1
                end
                if low_value == sorted_array[i] #sorted_array[start_range]
                    start_range += 1
                end
                if high_value == sorted_array[-1]
                    end_range -= 1
                end
                #low_value = sorted_array[start_range..end_range].min
                #high_value = sorted_array[start_range..end_range].max
            end
        end
        
    end
    return sorted_array, time.real
end
    

   

p bubble_sort([4,3,78,122,-2,0,2,5,6,6,474444,7,9,8,4,2,3,-5484,1,6,8,-5,9,10,11,54,61,32,25,8,2,45,-30,55,78,-54,12,35,54,66,88,9])

