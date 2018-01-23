class Intervention < ActiveRecord::Base
  # Associations
  belongs_to :calendar

  # Validations
  validates :name, presence: true
  validates :duration, presence: true, inclusion: 1..60

  scope :for_calendar, -> (calendar) { where("calendar_id = ?",	calendar) }

end
