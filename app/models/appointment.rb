class Appointment < ActiveRecord::Base
  # Associations
  belongs_to :calendar
  belongs_to :intervention

  # Validations
  validates :calendar_id, presence: true
  validates :intervention_id, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :customer_name, presence: true

  #Scopes
  scope :for_calendar_and_intervention, -> (calendar, intervention) { where("calendar_id = ? AND intervention_id = ? ",	calendar, intervention) }

end
