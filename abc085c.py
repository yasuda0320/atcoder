n, y = map(int, input().split())
result = [-1, -1, -1]

for i in range(n + 1):
  rest = y - 10000 * i
  if rest < 0:
    break
  for j in range(n - i + 1):
    rest2 = rest - 5000 * j
    if rest2 // 1000 == n - i - j:
      result = [i, j , n - i - j]
      break
  else:
      continue
  break

print(*result)
