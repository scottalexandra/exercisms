class Hamming
  def self.compute(strand1, strand2)
    if strand1.length == strand2.length
      compare(strand1, strand2)
    else
      raise ArgumentError
    end
  end

  def self.compare(s1, s2)
    counter = 0
      s1.length.times do |index|
        if s1[index] != s2[index]
          counter += 1
        end
      end
    counter
  end
end
