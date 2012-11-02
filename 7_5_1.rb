#encoding:utf-8

wall_beer = 5
beer = 1
while wall_beer!=0
	puts "壁にビールが全部で" + wall_beer.to_s + "本、ビールが" + wall_beer.to_s + "本！"
wall_beer = wall_beer - 1
	if(wall_beer !=0 )
		puts "1本取ってこっちにおくれ、壁にビールが全部で" + wall_beer.to_s + "本"
	else
		puts "1本取ってこっちにおくれ、壁にビールがもうないよう"
	end	
end
