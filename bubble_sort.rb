# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]


numbers = [4,3,78,2,0,2.3]


def dubble_sort(numbers)

  all_elements_are_number = true
  #checking if all the element of array is a number
  numbers.each {|number| all_elements_are_number = false if number.class != Integer && number.class != Float}

  
  if all_elements_are_number
    
      iterations = numbers.size - 1
      
      iterations.times do |ele|
      
        iterations.times do |index| 
          next_num = index + 1
          
          #swapping numbers if number on the left is bigger than right
          if numbers[index] > numbers[next_num]
            temp = numbers[next_num]
            numbers[next_num] = numbers[index]
            numbers[index] = temp
          end
      
        end
      
      end
      return numbers
  
    else
      "All the element of input array has to be numbers"
  end
end

p dubble_sort(numbers)
 