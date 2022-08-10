# Which of the following will match?

a = [1, 2, 3] # matches: a is [1, 2, 3]
a = 4 # matches: a is 4
4 = a # matches: a is 4
[a, b] = [1, 2, 3] # does not match
a = [[1, 2, 3]] # matches: a is [[1, 2, 3]]
[a] = [[1, 2, 3]] # matches: a is [1, 2, 3]
[[a]] = [[1, 2, 3]] # does not match