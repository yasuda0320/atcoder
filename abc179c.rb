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

def factolization(x, spf)
  ret = []
  while x != 1
    ret << spf[x]
    x /= spf[x]
  end
  ret
end

def count_divisor(primes)
  primes.empty? ? 1 : primes.group_by(&:itself).map {|k, v| v.size + 1}.inject(:*)
end

spf = smallest_prime_factors(1000000)
n = gets.chomp.to_i
count = 0
(1..(n-1)).each {|i| count += count_divisor(factolization(i, spf))}
p count

