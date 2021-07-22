def bubble_sort(array)
    sorted = false
    until sorted
        sorted = true
        (0...array.length - 1).each do |idx|
            if (array[idx] <=> array[idx + 1]) == 1
                sorted = false
                array[idx], array[idx + 1] = array[idx + 1], array[idx]
            end
        end
    end
    array
end

bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]