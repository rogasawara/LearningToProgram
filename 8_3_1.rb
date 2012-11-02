#coding:utf-8

puts "なんか文字入力して下さい"

str = gets.chomp
continue = true
arry = []
while continue
arry << str
	if str.size == 0
		arry.sort.each do |str|
			if(str.size != 0)
				p str
			end
		end
		continue = false
	end	
str = gets.chomp
end	

