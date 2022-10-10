# frozen_string_literal: true

require_relative 'lab6_p1_func'

puts 'Выберите точность eps=0.01 или eps=0.001'
in_eps = gets.to_f
puts in_eps
# while in_eps != 0.01 #|| in_eps != 0.001
#   puts 'More'
#   in_eps = gets.to_f
# end


puts "Длина кривой с точность #{in_eps} #{Line.dlin(in_eps)}"
