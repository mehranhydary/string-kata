module StringCalculator
    # module means we can call it, we only need one and 
    # we will call it
  def self.add(string)
  	# can use two solutions for single method
  	delimiter = extract_delimiter(string)	
  	values = string.split(/[#{delimiter},\n]/) 
  	values.map(&:to_i).reduce(:+) || 0
  	# values.inject(0){|s,v| s += v.to_i} # intuitive answer
  	
  end

  def self.extract_delimiter(string)
  	string =~ /^\/\// ?  string[2] : ','
  end 
  # ...and here when the above becomes too complex.
end
