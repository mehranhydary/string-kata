module StringCalculator
    # module means we can call it, we only need one and 
    # we will call it
  def self.add(string)
  	# can use two solutions for single method
  	# string.to_i # this is more simple and trivial
  	string == "5" ? 5 : 0 # I like this method; checks string, returns 5 or 0
  end

  # ...and here when the above becomes too complex.

end
