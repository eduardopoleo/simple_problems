#Project Euler Problem 5


def searchprimes(number)
	p=2
	n=number
	
	primes = {}
	
	while n >= p
		#if the residual is equal to 0
		if n%p == 0
			#n=n/p
			n  = n/p
			#if the prime[p] nil
			if primes[p.to_s] == nil
				primes.store(p.to_s, 1)
			else
				primes.store(p.to_s, 1+primes[p.to_s])	
			end
		else
			p = p+1
		end	
	end
	
	return primes
end


def maxPrimes(number)
	
	maxPrimes = {}
	maxNumber = number
	
	maxNumber.downto(1) { |i| 
		
		tempPrimes = searchprimes(i)
		# tempPrimes each do |prime, times |
		tempPrimes.each do |prime, times|

			if maxPrimes[prime] == nil
				maxPrimes.store(prime, 1)
			end

			if tempPrimes[prime] > maxPrimes[prime]
			 	maxPrimes[prime] = tempPrimes[prime]
			end
		end
	}
		
	return maxPrimes
end
 last_number =1000

 
def problem5(last_number)
	maxP=maxPrimes(last_number)
	multiple = 1
	maxP.each do |prime, times| 
		multiple = multiple*(prime.delete(",").to_i)**times
	end
	return multiple
end
	
puts problem5(last_number)	
