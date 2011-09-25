Helpers = require "./Helpers.coffee"

InsertionSort = (array) ->
  for i in [1..array.length-1]
    current = array[i]
    target_spot = i
    for j in [i-1..0]
      if j >= 0 and array[j] > current 
        array[j+1] = array[j]
        target_spot--
      else 
        break
    array[target_spot] = current

console.log("Starting")

test_array = Helpers.CreateRandomArray 5

console.log(test_array)

InsertionSort test_array

console.log(test_array)

