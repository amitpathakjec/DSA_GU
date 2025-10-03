
#  Binary Search code:---simple method

# public static int bS(int[] arr, int target){
#     int l = 0;
#     int r = arr.length - 1;
#     int mid;
    
#     while (l<=r){
#       mid = (l+r)/2;
    
#       if(arr[mid] == target){ return mid; }
#       if(arr[mid] < target){ l = mid+1; }
#       if(arr[mid] > target){ r = mid-1; }
#     }
#     return -1;
#   }
# ------------------------------------------------------------------------------------------
#  Binary Search code:--- Recussive method

# num=[1,2,3,5,6,7,8,9,10]
# target=15
# l=num[1]
# r=num[length(num)]
# flag=false

# function binary_search(l,r,target)
#     if l==r
#         return flag=true
#     else
#         if target < (l+r/2)
#             r=(l+r/2)-1
#         else
#             l=(l+r/2)-1
#         end
    
#     binary_search(l,r,target)
#     end
# end
# binary_search(l,r,target)
# ------------------------------------------------- Practice Problems-----------------------



#  Practice problem 1:
 arr = [1,1,1,2,2,3,4,5,6]
 target = 1
#  return true if target present in the array, else false
l=arr[1]
r=arr[length(arr)]
flag=false
function binary_search(l,r,target)
    if l==r
        return flag=true
    else
        if target < (l+r/2)
            r=(l+r/2)-1
        else
            l=(l+r/2)-1
        end
    
    binary_search(l,r,target)
    end
end
binary_search(l,r,target)

# ----> Question - 2

    #  Practice problem 2:
    #  Given sorted array arr with possibly some duplicates, the task is to find the first and last occurrences of an element x in the given array.
      arr = [1,1,2,2,2,2,3,3,4,4,4,5,5,6,6,6,7,7,7]
     target = 2

     function duplicates(arr,target)
        target_arr=Int[]
        for index in eachindex(arr)
            if arr[index]==target
                push!(target_arr, index)
            end
        end
        return target_arr
 
    end
    targetarr = duplicates(arr,target)
    targetarr[1]
    targetarr[2]
    println("the first occurrences is : $(targetarr[1]) and the second occurrences is :  $(targetarr[2]) ")
# --------------- another way to solve---------

