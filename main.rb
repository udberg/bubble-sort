
def bubble_sort(arr)
  bubble_loop(arr) do |x, i|
    swap_places(arr, i) if arr[i + 1] && x > arr[i + 1]
  end

  arr
end

def bubble_sort_by(arr)
  bubble_loop(arr) do |x, i|
    if arr[i + 1]
      count = yield(arr[i], arr[i + 1])
      swap_places(arr, i) if count.positive?
    end
  end

  arr
end

def bubble_loop(arr)
  arr.length.times do
    arr.each.with_index { |x, i| yield(x, i) }
  end
end

def swap_places(arr, i)
  arr[i], arr[i + 1] = arr[i + 1], arr[i]
end

p bubble_sort(%w[2  8 0 7 9])

p bubble_sort_by(%w[Hey hello amazing hi]) { |left, right| left.length - right.length }

