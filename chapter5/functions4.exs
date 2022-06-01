# Write a function `prefix` that takes a string. It should return a new function
# that takes a second string. When that second function is called, it will return
# a string containing the fist string, a space, and the second string.
prefix = fn string1 -> fn string2 -> "#{string1} #{string2}" end end

mrs = prefix.("Mrs")

IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks")

