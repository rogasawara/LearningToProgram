#encoding:utf-8i

#�����
hit = false
count = 0

until(hit)
#3��BYE�����Ϥ����ޤǷ����֤�
	message = gets.chomp
	if(message != "BYE")
		#BYE�ʳ������Ϥ��줿���
		#������ȥꥻ�å�
		count = 0
		if(message == message.upcase)
			year = rand(20)
			puts "NO,NOT SINCE" + (1930 + year).to_s + "!"
		else
			puts "HUH! SPEAK UP, SONNY!"
		end
	else
		#BYE�����Ϥ��줿���
		count = count + 1
		 if(count == 3)
			hit = true
		 end
	end
end
