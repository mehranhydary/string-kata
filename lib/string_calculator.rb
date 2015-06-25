module StringCalculator
  def self.add(string)
  	values = extract_values(string)	

  	raise RuntimeError if values.detect { |v| v < 0 }
  	values.reduce(:+) || 0
  	# values.inject(0){|s,v| s += v.to_i} # intuitive answer
  end

  def self.extract_values(string)
  	delimiter = extract_delimiter(string)
  	string.split(/[#{delimiter},\n]/).map(&:to_i)   	
  end

  def self.extract_delimiter(string)
  	string =~ /^\/\// ?  string[2] : ','
  end 
end
