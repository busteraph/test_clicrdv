require 'test_helper'

class OpeningTest < ActiveSupport::TestCase

	test "should verify start_date, end_date presence" do
	  opening_zero = openings(:zero)
	  assert_not opening_zero.valid? 

	  opening_one = openings(:one)
	  assert opening_one.valid? 
	end

	# test "should start after day begining boundary" do
	#   opening_one = openings(:one)
	#   assert opening_one.valid? 
	# end

	# test "should not allow openings ovelapping" do
	#   opening_two = openings(:two)
	#   opening_three = openings(:three)
	#   assert_not opening_three.valid?
	#   assert_equal 
	# end


end
