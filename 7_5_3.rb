#encoding:utf-8i

#初期化
hit = false
count = 0

until(hit)
#3回BYEが入力されるまで繰り返す
	message = gets.chomp
	if(message != "BYE")
		#BYE以外が入力された場合
		#カウントリセット
		count = 0
		if(message == message.upcase)
			year = rand(20)
			puts "NO,NOT SINCE" + (1930 + year).to_s + "!"
		else
			puts "HUH! SPEAK UP, SONNY!"
		end
	else
		#BYEが入力された場合
		count = count + 1
		 if(count == 3)
			hit = true
		 end
	end
end
