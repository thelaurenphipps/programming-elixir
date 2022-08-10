# The variable a is bound to the value 2. Which of the following will match?

a = 2

[a, b, a] = [1, 2, 3] # does not match
[a, b, a] = [1, 1, 2] # does not match
a = 1 # matches
^a = 2 # does not match
^a = 1 # matches
^a = 2 - a # matches
