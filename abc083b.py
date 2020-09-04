n, a, b = map(int, input().split())
sum = 0

for i in range(1, n + 1):
  n1, mod = divmod(i, 10000)
  n2, mod = divmod(mod, 1000)
  n3, mod = divmod(mod, 100)
  n4, mod = divmod(mod, 10)
  it = n1 + n2 + n3 + n4 + mod
  if it >= a and it <= b:
    sum += i

print(sum)
