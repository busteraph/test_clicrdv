class AddIntervalsToCalendar < ActiveRecord::Migration
  def change
  	add_column :calendars, :interval, :integer
  end
end
