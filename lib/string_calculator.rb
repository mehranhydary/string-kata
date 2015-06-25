module StringCalculator
  def self.add(string)
  	values = extract_values(string)	
  	negatives = extract_negatives(values)
  	if negatives.length >= 1
  		throw_negative_errors(negatives)
  	else
  		values.reduce(:+) || 0
  	end
  end
  def self.extract_values(string)
  	delimiter = extract_delimiter(string)
  	string.split(/[#{delimiter},\n]/).map(&:to_i)   	
  end
  def self.extract_delimiter(string)
  	string =~ /^\/\// ?  string[2] : ','
  end 
  def self.extract_negatives(values)
  	values.select {|v| v < 0}
  end
  def self.throw_negative_errors(negatives)
	  if negatives.length == 1
	   raise RuntimeError
	  elsif negatives.length > 1
	   raise "#{(negatives.join(","))}"
	  end
  end
end
