#Project Euler Problem 6. 
#"Find the difference between the sum of the squares of the first one hundred natural numbers
# and the square of the sum.

def squares_sum(n)
	sum = n*(n + 1)*(2*n + 1)/6
	return sum
end

def sum_squares(n)
	sum = (n*(n+1)/2)**2
end

def problem6(n)
	squareSum=squares_sum(n)
	sumSquares = sum_squares(n)

	result =sumSquares-squareSum
	return result
end

puts problem6(n)
