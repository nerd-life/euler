def fibonacci
  
  f = [1,2]
  s = 0
  
  while f[-1] + f[-2] < 4000000
    f << f[-1] + f[-2]
  end
  
  f.each do |x|
    s += x if x.even?
  end
  
  p s
end
