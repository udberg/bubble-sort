
def bubble_sort(arr)
  bubble_loop(arr) do |el, idx|
    swap_places(arr, idx) if arr[idx + 1] && el > arr[idx + 1]
  end
