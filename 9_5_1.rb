#encoding:utf-8

def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if( reply == 'はい' || reply == 'いいえ' )
			if reply == 'はい'
				return true
			else
				return false	
			end
			break
		else
			puts '「はい」または　「いいえ」でお答えください'
		end
	end
end

puts 'コニチハ。オイソガシイトコロ・・・'

puts

ask 'タコスは好きですか？'
ask 'ブリトーは？'
wets_deb = ask 'おもらししますか？'
ask 'そぱちあはすきですか？'
puts 'あとすこし'

ask 'おるちゃたーは？'
ask 'ふらうたすは？'
puts
puts 'でブリーフィング:'
puts 'この実験の為に・・・'
puts
puts wets_deb

