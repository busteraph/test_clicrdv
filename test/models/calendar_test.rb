require 'test_helper'

class CalendarTest < ActiveSupport::TestCase

	test "should return available time slots of calendar _Dr Dupont_" do
	  toto_appointment = appointments(:three)
	  max_appointment = appointments(:four)
	  dr_dupont_calendar = calendars(:three)
      
	  assert_equal dr_dupont_calendar.availabilities, `["2018-01-11 08:00:00", "2018-01-11 08:10:00", "2018-01-11 08:20:00", "2018-01-11 08:30:00", "2018-01-11 09:30:00", "2018-01-11 10:40:00", "2018-01-11 10:50:00", "2018-01-11 11:00:00", "2018-01-11 11:10:00", "2018-01-11 11:20:00", "2018-01-11 11:30:00"]`
	end

end