# nまでの数について約数のうち最小の素数を見つける
def smallest_prime_factors(n)
  spf = []
  (n+1).times {|i| spf[i] = i}
  i = 2
  while i * i <= n
    if spf[i] == i
      j = i * i
      while j <= n
        spf[j] = i if spf[j] == j
        j += i
      end
    end
    i += 1
  end
  spf
end

# 因数分解する
def factolization(x, spf)
  ret = []
  while x != 1
    ret << spf[x]
    x /= spf[x]
  end
  ret
end

# 約数の個数を数える
def count_divisor(primes)
  primes.empty? ? 0 : primes.group_by(&:itself).map {|k, v| v.size + 1}.inject(:*)
end

