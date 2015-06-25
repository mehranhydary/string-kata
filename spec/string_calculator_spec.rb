#Advanced developers: Uncomment the following understand more about the RSpec "focus" filter
#require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'string_calculator' # this is the code we are testing

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
# These tests are usually long so the contexts give some information for
# each type of test 

# You can pass a certain argument to only run tests for some contexts
RSpec.describe StringCalculator, "#add" do
  # this is where we write tests to see if our code is working
  	context "null value" do # gives the coder some context; can be anything (e.g. tests that my manager gave me)
	  it "returns 0 for empty string" do
	    expect(StringCalculator.add("")).to eql(0) # "" is an empty string
	  end
	end

  # more tests go here
  	context "single value" do # can refactor code if necessary (reduce code)
	  it "returns 0 for the string '0'" do
	    expect(StringCalculator.add("0")).to eql(0)
	  end
	  it "returns 5 for the string '5'" do
	    expect(StringCalculator.add("5")).to eql(5)
	  end
  	end

  	context "multiple values" do
	  it "returns 3 for the string '1,2'" do
	    expect(StringCalculator.add("1,2")).to eql(3)
	  end
	  it "returns 16 for the string '7,9'" do
	    expect(StringCalculator.add("7,9")).to eql(16) #this is for requirement 4
	  end	  
	  it "returns the sum of two digits separated by a comma" do
	  	expect(StringCalculator.add("12,45")).to eql(57) # this is for requirement 5
	  end
	  it "returns the sum of two digits separated by a comma or a new line" do
	  	expect(StringCalculator.add("7,\n\n\n 9")).to eql(16) # this is requirement 4
	  end
  	end

  	context "to handle various delimeters" do
	 	it "returns the sum by ignoring strings with delimeters e.g. '//;\n2;5' gives 7" do
	 		expect(StringCalculator.add("//;\n2;5")).to eql(7)
	 	end
	end

 	context "throw an exception at negative numbers" do
	  it "Throws a raise error when negative is put here" do
	    expect{ StringCalculator.add("-1") }.to raise_error(RuntimeError)
	  end		
	  it "Raise an error if there are multiple negative numbers" do
	   expect{ StringCalculator.add("1, -1, -2") }.to raise_error(RuntimeError, "-1,-2")
	  end			 	
 	end

end
