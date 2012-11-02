#coding:utf-8

puts "先頭の年と終わりの年をおしえてください"
year_s = gets.chomp
year_e = gets.chomp

year_begin = year_s.to_i
year_end = year_e.to_i
def isLeap_year? year
	if year % 400 == 0
		return true
	elsif year % 100 == 0
		return false
	elsif year % 4 == 0
	 return true
	else
		return false
	end
end
while year_begin <=year_end
	if isLeap_year?(year_begin)
		puts year_begin
	end
		year_begin = year_begin + 1
end

