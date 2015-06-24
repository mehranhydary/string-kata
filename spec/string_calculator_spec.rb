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
	    expect(StringCalculator.add("")).to eql(0)
	  end
	end

  # more tests go here
  	context "single value" do
	  it "returns 0 for the string '0'" do
	    expect(StringCalculator.add("0")).to eql(0)
	  end
	  it "returns 5 for the string '5'" do
	    expect(StringCalculator.add("5")).to eql(5)
	  end
	  
  	end

end
