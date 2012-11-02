#encoding:utf-8

hit = false
until(hit)
	message = gets.chomp
	if(message != "BYE")
		if(message == message.upcase)
			year = rand(20)
			puts "NO,NOT SINCE" + (1930 + year).to_s + "!"
		else
			puts "HUH! SPEAK UP, SONNY!"
		end
	else
		hit = true
	end
end
