# frozen_string_literal: true

class Line
  def self.function(x)
    Math.sqrt(1 + (1 / x))
  end

  def self.integral(zn_a, zn_b, zn_n)
    raz_h = (zn_b - zn_a) / zn_n
    i_s = 0
    (0..zn_n).each do |i|
      i_s += Line.function(zn_a + i * raz_h)
      print i_s
    end

    i_s*raz_h
  end

  def self.dlin(eps)
    a = 1
    b = 2
    ps = 0
    n = 100
    s = Line.integral(a, b, n)
    loop do
      ps = s
      print n
      print "\n"
      n *= 2
      s = Line.integral(a, b, n)
      print s
      #print s
      break if (s-ps).abs <= eps
    end
    s
  end
end
