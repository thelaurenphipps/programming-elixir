# Use the `&` notation to rewrite the following:
# - Enum.map [1, 2, 3, 4], fn x -> x + 2 end
# - Enum.each [1, 2, 3, 4], fn x -> IO.inspect x end

add_two = fn list -> &(&1 +2) end

IO.puts add_two.([1, 2, 3, 4])
