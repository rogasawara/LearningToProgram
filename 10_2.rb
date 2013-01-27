# -*- encoding: utf-8 -*-

#マップは読みやすくするための工夫です。
#M は　O　より黒っぽい

M = '陸'
o = '海'

world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,M,M,M,o],
         [o,o,M,o,o,o,o,o,o,M,o],
         [o,o,M,o,M,M,o,o,o,o,o],
         [o,o,o,o,M,M,M,o,o,o,o],
         [o,o,M,o,M,o,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]
         
def contimemt_size world, x, y
  if world[y][x] != '陸'
    #ここは海かすでに数えた陸です
    #いずれにしても数にいれたくありません
    return 0
  end
  
  #まずこのタイルを数えます
  
  size = 1
  world[y][x] = 'すでに数えた陸'
  
  #次に、離接する8個のタイルをかぞえます
  #もちろん　それらの近くのタイルも再帰によって
  
  size = size + contimemt_size(world, x-1, y-1)
  size = size + contimemt_size(world, x, y-1)
  size = size + contimemt_size(world, x+1, y-1)
  size = size + contimemt_size(world, x-1, y)
  size = size + contimemt_size(world, x, y)
  size = size + contimemt_size(world, x, y+1)
  size = size + contimemt_size(world, x, y-1)
  size = size + contimemt_size(world, x+1, y+1)

  size
end

puts contimemt_size(world, 5, 5)
