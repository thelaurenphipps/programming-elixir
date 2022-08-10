# An Elixir single-quoted string is actually a list of individual
# character codes. Write a caesar(list, n) function that adds 
# n to each list element, wrapping if the addition results
# in a character greater than z
# iex> MyList.caesar('ryvkve', 13)

defmodule MyList do
    @z 122

    def caesar([], _) do
        nil
    end

    def caesar([letterCode | restOfString], offset) do
        # TODO - apply transformation from letter code to alpha
        [applyOffset(letterCode, offset) | caesar(restOfString, offset)]
    end

    def applyOffset(letterCode, offset) when letterCode + offset <= @z do
        letterCode + offset
    end

    def applyOffset(letterCode, _) do
        @a + (@z - letterCode) # TODO this is incorrect :/
    end
end