def problem10()
	primes =[]
	primes[0]=2
	p = 3
	prime_sum =2
	while p < 2000000
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
			prime_sum += p
			p = p +2
			
		end

	end

	return prime_sum
end
puts problem10()
