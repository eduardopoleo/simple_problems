#Source: Project Euler problem 2.
def fi(n)
    if n == 1
        return 0
    elsif n == 2
        return 1
    end
    grandparent = 0
    parent = 1
    for i in 2..(n-1)
        me =  parent + grandparent
        grandparent = parent
        parent = me
    end
    return me
end

def problem2(boundary)
    fib_number = 0
    n = 1
    suma =0
    while true
        fib_number = fi(n)
        if fib_number >= boundary
           break
        elsif fib_number%2 == 0
            suma += fib_number
        end
        n += 1
    end
    return suma
end

puts problem2 (4000000)

