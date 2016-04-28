class Prime
  def self.nth(number)
    generate_primes[number - 1]
  end

  def self.is_prime?(n)
    range = Math.sqrt(n).floor.downto(2)
    range.select do |number|
      n % number == 0
    end
  end

  def self.generate_primes
    (2..200_000).to_a.select do |x|
      is_prime?(x).empty?
    end
  end
end
