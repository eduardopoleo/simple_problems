str = "3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982"
  
def longest_palindrome (str)
  #finds the longest possible palindrome for a given string.
  def palindrome (str)
    if str.length == 0
	# base case:  returns an empty string if no palindrome was found
      return ""
    elsif str[0..-1] == str[0..-1].reverse
	#the first palindrome found will always be the longest since the function will be constantly slicing the string.
      return str[0..-1]
    else
      return palindrome (str[0..-2])
    end
  end

  strlen = str.length
  maxstr = ""
 
  for i in 0..strlen
    palstr = str[i..-1]
    trystr = palindrome(palstr)
    if trystr.length >= maxstr.length
      maxstr=trystr 
    end
  end

  return maxstr
end

puts longest_palindrome str
