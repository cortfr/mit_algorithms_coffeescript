exports.InsertionSort = (array) ->
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
