class Calendar < ActiveRecord::Base
  # Associations
  has_many :interventions
  has_many :openings

  # Validations
  validates :name, presence: true, uniqueness: true

  def availabilities(intervention)
  	openings = self.openings
  	# interventions = Intervention.for_calendar(self.id)
  	byebug

  end	
end
