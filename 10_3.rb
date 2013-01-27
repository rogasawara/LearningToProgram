# -*- encoding: utf-8 -*-

def sort some_array # recursive_sortをラップします。
  recursive_sort some_array, []
end

def recursive_sort unsortd_array, sorted_array
  tmp = unsortd_array #未ソートの配列
  p 'tmp size is ' + tmp.size.to_s
  tmp_index = 0 #ソート済となったインデックス
  while(tmp.length != 0) 
    tmp_item = '' # 一時的に格納用
    tmp.each_with_index do |item, index|
    p item
      if (tmp_item == "")
       # p "first  "+ item.to_s
        tmp_item = item
        tmp_index = index
      else
        if(tmp_item > item )
          tmp_item = item
          tmp_index = index
        end
      end

  end   
    sorted_array.push(tmp_item)
    tmp.delete_at (tmp_index)
  end
  sorted_array
end  

p sort ['c','b','a','0']
  
                                                                                                                                                                                                                                                                                                          