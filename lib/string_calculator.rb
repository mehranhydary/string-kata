module StringCalculator
    # module means we can call it, we only need one and 
    # we will call it
  def self.add(string)
  	# can use two solutions for single method
  	# string.to_i # this is more simple and trivial
  	# removed if statements ; learn how to write reg exp
  	values = string.split(/[,\n]/)
  	values.map(&:to_i).reduce(:+) || 0
  	# values.inject(0){|s,v| s += v.to_i} # intuitive answer
  	
  end

  # ...and here when the above becomes too complex.

end
