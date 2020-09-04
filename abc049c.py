import re

m = re.match(r'^(dream|dreamer|erase|eraser)*$', input())
print('NO' if m is None else 'YES')
