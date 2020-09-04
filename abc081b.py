size = int(input())
array = map(int, input().split())
min = 1000000000

for i in array:
  count = 0
  while i % 2 == 0:
    count += 1
    if count >= min:
      break
    i >>= 1
  if count < min:
    min = count
print(min)
