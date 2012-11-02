# encoding: utf-8
def old_roman_numeral num
	if (0 < num  && num < 3001)
	#
		remainder_1000 = num % 1000
		remainder_500  = remainder_1000 % 500
		remainder_100  = remainder_500  % 100
		remainder_50   = remainder_100  % 50
		remainder_10   = remainder_100  % 10
		remainder_5    = remainder_10   % 5 	

		if (remainder_1000 == 0)
			return "M" * (num / 1000)
		elsif (remainder_500 == 0)
			return "M" * (num / 1000) + "D" * (remainder_1000 / 500)
		elsif (remainder_100 == 0)
			return 	"M" * (num / 1000) + "D" * (remainder_1000 / 500) + "C" * (remainder_500 / 100)
		elsif (remainder_50 == 0)
			 return 	"M" * (num / 1000) + "D" * (remainder_1000 / 500) + "C" * (remainder_500 / 100) + "L" * (remainder_100 / 50)
		elsif (remainder_10 == 0)
			 return 	"M" * (num / 1000) + "D" * (remainder_1000 / 500) + "C" * (remainder_500 / 100) + "L" * (remainder_100 / 50) + "X" * (remainder_50 / 10)
		elsif (remainder_5 == 0)
		   return 	"M" * (num / 1000) + "D" * (remainder_1000 / 500) + "C" * (remainder_500 / 100) + "L" * (remainder_100 / 50) + "X" * (remainder_50 / 10) + "V" * (remainder_10 / 5)
		else
			 return 	"M" * (num / 1000) + "D" * (remainder_1000 / 500) + "C" * (remainder_500 / 100) + "L" * (remainder_100 / 50) + "X" * (remainder_50 / 10) + "V" * (remainder_10 / 5) + "I" * remainder_5
		end
	else
		return "範囲外です"
	end
end

num = gets.chomp
puts old_roman_numeral num.to_i
