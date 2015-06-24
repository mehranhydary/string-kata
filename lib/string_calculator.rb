module StringCalculator

  def self.add(string)
    # code to be tested goes here...
    # have to convert string into an array of numbers
    # after that check the array to see if there are one 
    # two or no numbers 
    # if it is no numbers, return 0, if there is one
    # return one number, if there are two numbers, return
    # the sum of the two numbers 
    
    if string.empty?
    	return 0
    elsif string.any?{|n| n.to_s.is_i?}
    	
    end	
  end

  # ...and here when the above becomes too complex.

end
