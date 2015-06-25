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
  	context "single values" do
	  it "returns 0 for a string '0'" do
	    expect(StringCalculator.add("0")).to eql(0) 
	  end  		
	  it "returns 5 for string with '5'" do
	    expect(StringCalculator.add("5")).to eql(5) 
	  end	  
  	end

  	context "multiple values" do
	  it "returns 3 for a string '1,2'" do
	    expect(StringCalculator.add("1,2")).to eql(3) 
	  end  		
	  it "returns 16 for a string '7,9'" do
	    expect(StringCalculator.add("7,9")).to eql(16) 
	  end
	  it "returns 57 for a string '12,45'" do
	    expect(StringCalculator.add("12,45")).to eql(57) 
	  end  		
	  it "returns 201 for a string '42,159'" do
	    expect(StringCalculator.add("42,159")).to eql(201) 
	  end  			  
	  it "returns 2 for a string '1558,2,2442'" do
	    expect(StringCalculator.add("1558,2,2442")).to eql(2) 
	  end  			  	  
  	end
  	
  	context "check for delimeters that are not commas" do
  		it "returns 3 for '1\n\n\n\n\n2'" do
  			expect(StringCalculator.add("1\n\n\n\n\n2")).to eql(3) 
  		end
  		it "returns 7 for '//;\n2;5'" do
  			expect(StringCalculator.add("//;\n2;5")).to eql(7) 
  		end  	
  	end

  	context "check for negatives" do
  		it "returns RuntimeError with raise_error for '-1'" do
  			expect{ StringCalculator.add("-1") }.to raise_error(RuntimeError)
  		end
  		it "returns RuntimeError with raise_error and the negatives for '1,-1,-2'" do
  			expect{ StringCalculator.add("1,-1,-2") }.to raise_error(RuntimeError, '-1,-2')
  		end  		
  	end
  	context "numbers larger than 1000" do
  		it "ignores 1000 and lets 1 + 2 = 3 for '1000,1,2'" do
  			expect(StringCalculator.add("1000,1,2")).to eql(3)
  		end  		
  	end
end
