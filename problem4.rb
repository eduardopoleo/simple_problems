
def problem4()
	multiplier=999
	product = 0
	maxPal= ''
	maxProd=0
	while multiplier >= 100
		multiplier.downto(100) { |i|
			
    			product = multiplier*i
    			
    			numb2str = product.to_s

    			if numb2str == numb2str.reverse && product >maxProd
    				maxProd = product
    				maxPal=numb2str
    
    			end
		}
		multiplier = multiplier -1
	end 
	return maxPal
end

puts problem4()
