require 'test_helper'

class OpeningTest < ActiveSupport::TestCase

	test "should verify start_at, end_at presence" do
	  opening_zero = openings(:zero)
	  assert_not opening_zero.valid? 

	  opening_one = openings(:one)
	  assert opening_one.valid? 
	end

	test "should verify start_at in day boundaries" do
	  opening_out = openings(:out_begin_boundary)
	  assert_not opening_out.valid? 
	end

	test "should verify end_at in day boundaries" do
	  opening_out = openings(:out_end_boundary)
	  assert_not opening_out.valid? 
	end

	test "should verify start_at after end_at" do
	  opening_end = openings(:end_before_start)
	  assert_not opening_end.valid? 
	end

	test "should not allow 2 openings ovelapping" do
	  opening_two = openings(:two)
	  opening_three = openings(:three)
	  assert_not opening_three.isnt_overlapping?
	end
	
	test "should allow new opening if no ovelapping" do
	  opening_two = openings(:two)
	  opening_one = openings(:one)
	  assert opening_three.isnt_overlapping?
	end

end
