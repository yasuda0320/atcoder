n = int(input())
array = list(map(int, input().split()))
array.sort(reverse=True)
print(sum(array[0::2]) - sum(array[1::2]))
