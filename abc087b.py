a, b, c, x = [int(input()) for i in range(4)]
count = 0

for i in range(a + 1):
  rest = x - 500 * i
  if rest < 0:
    break
  for j in range(b + 1):
    rest2 = rest - 100 * j
    if rest2 < 0:
      break
    if rest2 // 50 <= c:
      count += 1
print(count)
