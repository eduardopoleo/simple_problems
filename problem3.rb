
#Source Project Euler Problem 3

def problem3(bigNum)
	
	p=2
	# if the prime is bigger than bignumber then it will stop
	while bigNum>p
		if bigNum%p ==0
			bigNum = bigNum/p
			puts bigNum
		else
			#finally eventually p and bigNum will converge
			p=p+1
		end
	end	
	return bigNum
end
puts problem3(600851475143)


