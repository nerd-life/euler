1.upto(999).inject(0) { |sum, i| (0 == i%3 || 0 ==  i%5) ? sum + i : sum }
