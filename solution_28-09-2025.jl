# QUESTION ------------------------> 1 || Q.1. Write a Program to insert and delete an element in 1-D arrays.
arr=[12,34,53,32,353]



#deletion 
# deleted_array--->arr=[12,34,53,353,2,1,643,32,43]
# deleted element at 4th index


function deletion(arr,x)
    
    new_arr=[]
    for element in arr
        if element!=x
            push!(new_arr,element)
        end
    end
    
    return new_arr

end
deletion(arr,12)



function insertion(arr, position,element)
    new_arr=[]
    for element in 1:position-1

        push!(new_arr,arr[element])
    end
    push!(new_arr,element)
    for element in position:length(arr)

        push!(new_arr,arr[element])
    end
    return new_arr 
end
arr
insertion(arr,3,45)

# QUESTION ------------------------> 2 || Q.2. Write a Program to  reverse an arrays.

arr=[12,34,53,32,353]

function rev(arr)
    
    new_arr=[]

    for i in length(arr):-1:1
        push!(new_arr,arr[i])
    end

    return new_arr
    
end


rev(arr)
# QUESTION ------------------------> 3 || Q.3. Q.3. Write a Program to implement addition and multiplication of two 2D arrays.
arr1_2D=[1 2 3;
        3 4 5;
        4 5 6]
size(arr1_2D,1)

 arr2_2D=[12 45 65;
        51 14 15;
        34 21 42]



# addition
function addition(arr1_2D,arr2_2D)
    rows,col=size(arr1_2D)
    new_arr=Array{Int}(undef,rows,col)
    for i in 1:size(arr1_2D,1)
        for j in 1:size(arr1_2D,2)
            new_arr[i, j]=arr1_2D[i, j]+arr2_2D[i, j]
        end
    end
    return new_arr
end
addition(arr1_2D,arr2_2D)

#multiplication---> matrix multiplication----------------> It was bit tricky so took the help of chartGpt   
function multiplication(arr1_2D,arr2_2D)
    rows,col=size(arr1_2D)
    new_arr=Array{Int}(undef,rows,col)
    for i in 1:size(arr1_2D,1)
        for j in 1:size(arr2_2D,2)
            sum=0
            for k in 1:size(arr1_2D,2)
                sum=sum+arr1_2D[i, k]*arr2_2D[k,j]
                new_arr[i, j]=sum
            end
        end
    end
    return new_arr
end
multiplication(arr1_2D,arr2_2D)
        
# QUESTION-4 ------------------------------->  Write a Program to implement max and min in arrays.

# max
 function max(arr)
    max=arr[1]
    for element in arr
        if element>max
            max=element
        end
    end
    return max
    
 end
 max(arr)


#min
arr=[12,34,53,32,353]
function min(arr)
    min=arr[1]
    for element in arr
        if element<min
            min=element
        end
    end
    return min
    
 end
 min(arr)

#  QUESTION - 5 ----------------------------->  Write a program to find factorial of any number using iteration and recursion.

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

# using iteration
function factor(n)
    fac=1
    for i in n:-1:1
        
        fac=fac*i

    end
    return fac
end

factor(3)


# Q.6. Write a program to find fibonacci series till a number using iteration and recursion.


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


function fab(n)
    first=0
    second=1
    temp=0
    for i in 1:n

        println(first)
        temp=first
        first=second
        second=temp+second

    end
    return temp
    
end

fab(5)
# Q.7. Write a program to implement Tower of Hanoi problem.
# function tower(disk,source,helper,destination)
#     if n==1
#         return ("the disk $n move from $source to $destination")
    
# end
# tower(disk,source,helper,destination)
#  --------------> Did not understand





# Q.8. You are given an integer n. You have to print all numbers from 1 to n using recursion only.
function one_n(n,acc=1)
    if n==1
        return acc
    else
        
        println(acc)
        return one_n(n-1,acc+1)
    end
end
one_n(5)

# Q.9. Sum of first N natural numbers.

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
# USING FOR FORMULA (N*(N=1))/2
function summ(n)
    n=(n*(n+1))/2
    return n
end
summ(4)


# Q.10. Binary to Decimal and vice versa.----------------------------------------------------------------


# x=100
# y=string(x)
# println(parse(Int,y))

function binary_to_decimal(x::Int64)

    string_x=string(x)
    b=0
    sum=0
    for i in length(string_x):-1:1
        sum=sum+(parse(Int,string_x[i]))*2^b
        b+=1
    end
    return sum
end
binary_to_decimal(1101)


# ----> taking the help of ChartGpt
        
function decimal_to_binary(x::Int64)
    binary_number=""

    while x>0
        remainder=x%2

        
        binary_number=string(remainder)*binary_number
        x=x÷2
    end
        
    return parse(Int, binary_number)
        
end
decimal_to_binary(13)
        
# Q.11. Find all divisors of a number.====================================================
function divisorss(n::Int)
    divisor=Int[]
    for i in 1:n/2
        if n % i==0
            push!(divisor, i)
        end
    end
    return divisor

    
end
divisorss(8)




