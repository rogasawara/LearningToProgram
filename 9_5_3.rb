# -*- encoding: utf-8 -*-
 
def ask_recursively question
  puts question
  reply = gets.chomp.downcase
  
  if reply == 'はい'
    true
  elsif reply == 'いいえ'
    false
  else 
   puts '「はい」または「いいえ」でお答えください。'
   ask_recursively question #ここがネタ
  end
end

ask_recursively 'あなたはおもらしをしますか？'
 
   