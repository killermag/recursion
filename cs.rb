def fibs(n) 
  a,b = 0,1  
  puts a , b    
  i,c = 0
  while i < n 
    c = a + b   
    a,b = b,c      
    i += 1  
    puts c   
  end 
end 

def merge_sort (array) 
  return array if array.length < 2 
  a = merge_sort(array.slice!(0..array.length/2-1))
  b = merge_sort(array)
  barray = []
  ab,ba = 0,0
  while ab != a.length && ba != b.length 
    if a[ab] > b[ba] 
      barray << b[ba]
      ba += 1
    else 
      barray << a[ab] 
      ab +=1 
    end 
  end 
  if ab == a.length 
    barray << b[ba..-1]
  else 
    barray << a[ab..-1]
  end 
  return barray.flatten! 
end 




