def bubble_sort(arr)
  bubble_loop(arr) do |x, ind|
    swap_places(arr, i) if arr[i + 1] && x > arr[ind + 1]
  end

  arr
end

def bubble_sort_by(arr)
  bubble_loop(arr) do |_x, ind|
    if arr[i + 1]
      count = yield(arr[ind], arr[ind + 1])
      swap_places(arr, ind) if count.positive?
    end
  end

  arr
end

def bubble_loop(arr)
  arr.length.times do
    arr.each.with_index { |x, i| yield(x, ind) }
  end
end

def swap_places(arr, i)
  arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind]
end

p bubble_sort(%w[2 8 0 7 9])

p bubble_sort_by(%w[Hey hello amazing hi]) { |left, right| left.length - right.length }
