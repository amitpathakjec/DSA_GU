# Question --> 1
# ----------------------------------------------------------------------------------------------
# head recursion
function sum_to_n1(n::Int64)
    if n==1
        
        return 1
    else
        return n+sum_to_n1(n-1)
        
    end
end

sum_to_n1(4)


# tail recursion 
function sum_to_n2(n::Int64,acc=0)
    if n==0
        
        return acc
    else
        return sum_to_n2(n-1,acc+n)
        
    end
end

sum_to_n2(4)

# --------------------------------------------------------------------------------------------------

# Question---> 2
# head recursion



function fac1(n)
    if n==1
        return 1
    
    else
        return n * fac(n-1)
    end

    
end

fac1(5)

# Tail recursion

function fac2!(n, acc=1)
    if n==0
        return acc
    else
        return fac2!(n-1,n*acc)
    end
end
fac2!(5)

# ----------------------------------------------------------------

# Question --> 3

function Fibonacci(n)
    if n==0
        return 0
    elseif n==1
        return 1
    else 
        return Fibonacci(n-1)+Fibonacci(n-2)
    end

    
end
Fibonacci(6)
