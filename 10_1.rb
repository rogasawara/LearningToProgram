# -*- encoding: utf-8 -*-

#階乗プログラム
def factorial num
  if num  <= 0
    return '負数の階乗は計算できません' 
  end
  if num  <= 1
    1
  else 
    num * factorial(num - 1)
  end
end

puts factorial(3)
puts factorial(30)