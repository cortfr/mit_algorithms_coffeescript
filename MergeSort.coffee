MergeInPlace = (A, p, q, r) ->
  L = A[p..q]
  R = A[q+1..r]
  for x in [p..r]
    if L.length == 0 and R.length == 0
      console.log("ERROR")
    else if L.length == 0
      A[x] = R.shift()
    else if R.length == 0
      A[x] = L.shift()
    else if R[0] <= L[0]
      A[x] = R.shift()
    else
      A[x] = L.shift()


MergeSort = (A, q = 0, r = A.length-1) ->
  if q < r
    pivot = q + (Math.floor((r - q) / 2))
    MergeSort(A, q, pivot)
    MergeSort(A, pivot + 1, r)
    MergeInPlace(A, q, pivot, r)

exports.MergeSort = MergeSort