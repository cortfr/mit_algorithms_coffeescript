Helpers = require "./Helpers.coffee"
MergeSort = (require "./MergeSort.coffee").MergeSort
InsertionSort = (require "./InsertionSort.coffee").InsertionSort


test_array = Helpers.CreateRandomArray 100
console.log test_array

MergeSort test_array
console.log test_array