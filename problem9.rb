#Project Euler, Problem9 There exists exactly one Pythagorean triplet for which a + b + c = 1000.

# This is the objective function that we have to equalize to zero
def obj_func(b,c)
	obj = (1000-b-c)**2+b**2-c**2
	return obj
end

def bisect(b)
	mini =b
	maxi= 1000
	objtemp =0
	obj = 4
	while obj.abs>0
		med= (maxi+mini)/2
		obj = obj_func(b,med)
		
		if obj < 0
			maxi = med
		elsif obj>0
			mini =med
		end
		
		if (objtemp-obj).abs ==0
			break
		end

		objtemp =obj
		
	end
	return obj,med
end

def problem9()
	obj=0
	c=1
	for b in 1..1000
		obj,c=bisect(b)
		a = 1000-b-c
		
		if a ==0
			next
		end
		
		if obj ==0
			return a*b*c
		end

	end
end

puts problem9


