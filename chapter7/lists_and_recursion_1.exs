# Write a mapsum function that taskes a list and a function. 
# It applies the function to each element of the list
# and then sums the result, so:
# iex> MyList.mapsum [1, 2, 3] &(&1 * &1)
# 14

defmodule MyList do
    def mapsum([], _) do 
        0
    end

    def mapsum([head | tail], func) do
        func.(head) + mapsum(tail, func)
    end
end 