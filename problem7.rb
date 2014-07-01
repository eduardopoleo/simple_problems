#Project Euler. Problem 7. By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#what is the 10 001st prime number?

def problem7(prime_number)
	primes =[]
	primes[0]=2
	p = 3
	
	while primes.length <prime_number
		add = true
		
		primes.each do |prime_iter|
			
			if p%prime_iter == 0
				p = p+2
				add = false
				break
			end
			if prime_iter > Math.sqrt(p)
				break
			end
		end
		
		if add == true
			primes[primes.length]=p
			p = p +2
		end
	end
	return primes[primes.length-1]
end
puts problem7(10001)



