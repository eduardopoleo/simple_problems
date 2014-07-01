# Source: Euler_Project Problem 1

def problem1(boundary)
	suma = 0
	for i in 0..boundary-1
		if i%3 ==0 or i%5==0
			suma = suma + i
		end
	end	
	return suma
end	

puts problem1(1000)
