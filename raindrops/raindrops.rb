class Raindrops
  RAIN_DROPS = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
  def self.convert(number)
    if rain(number).empty?
      number.to_s
    else
      rain(number)
    end
  end

  def self.rain(number)
    @rain_speak = ""
    RAIN_DROPS.each do |prime, drop|
      @rain_speak += drop if number % prime == 0
    end
    @rain_speak
  end
end
