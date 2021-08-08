# my_list = [1,2,3,5,6,9] ## Remmber => list must be sorted.

# low_index = 0 ; ## low index is always equal 0
# high_index = len(my_list) - 1 ## last item in list

# mid = (low_index + high_index) / 2  ## middle index
# guess = my_list[mid] ## the item you searched about it



def binary_search(list,item):
    low = 0
    high = len(list) -1

    while low <= high:
        mid = (low + high)
        guess = list[mid]
        if guess == item:
            return mid
        if guess > item:
            high = mid -1
        else:
         low = mid +1 
    return None

my_list = [1,2,3,5,6,9,11]   ## Remmber => list must be sorted.

print(binary_search(my_list , 3)) ## output => 2
print(binary_search(my_list , 1)) ## output => 0
print(binary_search(my_list , 10)) ## output => None