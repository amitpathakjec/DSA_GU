
# head recursion
function sum_to_n(n::Int64)
    if n==1
        
        return 1
    else
        return n+sum_to_n(n-1)
        
    end
end

sum_to_n(4)


# tail recursion 
function sum_to_n(n::Int64,acc=0)
    if n==0
        
        return acc
    else
        return sum_to_n(n-1,acc+n)
        
    end
end

sum_to_n(4)

