n = int(input())
steps = [list(map(int, input().split())) for i in range(n)]
start = [0, 0, 0]
result = True

for step in steps:
    duration = step[0] - start[0]
    distance = abs(start[1] - step[1]) + abs(start[2] - step[2])
    if distance > duration or (duration - distance) % 2 != 0:
        result = False
        break
    start = step

print('Yes' if result else 'No')
