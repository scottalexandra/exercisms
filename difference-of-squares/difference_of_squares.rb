class Squares
  def initialize(number)
    @range = (0..number).to_a
  end

  def square_of_sums
    @range.reduce(:+) ** 2
  end

  def sum_of_squares
    @range.inject do |sum, num|
      sum = sum + num ** 2
    end
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
