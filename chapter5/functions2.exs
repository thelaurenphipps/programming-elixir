# Write a function that takes three arguments. 
# If the first two are zero, return "Fizbuzz"
# If the first is zero, return "Fizz". If the second is zero, return "Buzz".
# Otherwise, return the third argument.
fizzbuzz = fn 
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, third -> third
end

# The operator `rem(a,b)` returns the remainder after dividing a by b.
# Write a function that takes a single integer (`n`) and calls the function in the previous exercise,
# passing it `rem(n, 3)`, `rem(n, 5)`, and `n`.
# Call it seven times with the arguments 10, 11, 12, and so on.
call_fizzbuzz = fn
   n -> fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

IO.puts call_fizzbuzz.(10)
IO.puts call_fizzbuzz.(11)
IO.puts call_fizzbuzz.(12)
IO.puts call_fizzbuzz.(13)
IO.puts call_fizzbuzz.(14)
IO.puts call_fizzbuzz.(15)
IO.puts call_fizzbuzz.(16)

