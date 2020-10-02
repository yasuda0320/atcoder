# a^n mod を計算
def modpow(a, n, mod)
  res = 1
  while n > 0
    res = res * a % mod if n & 1 != 0
    a = a * a % mod
    n >>= 1
  end
  res
end

# a^(-1) mod を計算
def modinv(a, mod)
  modpow(a, mod - 2, mod)
end
