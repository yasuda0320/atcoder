# a^n mod を計算
def modpow(a, n, mod):
  res = 1
  while n > 0:
    if n & 1 != 0:
      res = res * a % mod
    a = a * a % mod
    n >>= 1
  return res

# a^(-1) mod を計算
def modinv(a, mod):
  return modpow(a, mod - 2, mod)
