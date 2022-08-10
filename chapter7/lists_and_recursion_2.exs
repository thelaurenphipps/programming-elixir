# Write a max(list) that returns the element with the maximum
# value in the list

defmodule MyList do
    def maximum([head | tail]) do
        maximum([head | tail], head)
    end

    def maximum([], biggest) do
        biggest
    end

    def maximum([head | tail], biggest) when head > biggest do
        maximum(tail, head)
    end

    def maximum([_ | tail], biggest) do
        maximum(tail, biggest)
    end
end