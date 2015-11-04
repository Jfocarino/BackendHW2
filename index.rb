class String
  def frequency
    self.scan(/[a-zA-Z]+/).each.with_object(Hash.new(0)) do |word, hash|
      hash[word.downcase] += 1
  end

 #remove below method to geth the full hash of word frequency
  
  counts = Hash.new 0
 downcase.tr(",.?!",'').split(' ').each{|word| counts[word] += 1}

  max_value = counts.values.max
  
  return counts.select{|key , value| value == counts.values.max}
  
end
end


puts "Donald J. Trump is the very definition of the American success story, continually setting the standards of excellence while expanding his interests in real estate, sports and entertainment. He is a graduate of the Wharton School of Finance. An accomplished author, Mr. Trump has authored over fifteen bestsellers, and his first book, The Art of the Deal, is considered a business classic and one of the most successful business books of all time."

puts "Donald J. Trump is the very definition of the American success story, continually setting the standards of excellence while expanding his interests in real estate, sports and entertainment. He is a graduate of the Wharton School of Finance. An accomplished author, Mr. Trump has authored over fifteen bestsellers, and his first book, The Art of the Deal, is considered a business classic and one of the most successful business books of all time.".frequency


 

