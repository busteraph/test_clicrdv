class Opening < ActiveRecord::Base
  # Association
  belongs_to :calendar

  DAYTIME_BEGINING = '8:00am'
  DAYTIME_ENDING = '6:00pm'

  #Validations
  validates :start_at, presence: true
  validates :end_at, presence: true

  validates_time :start_at, between: [DAYTIME_BEGINING, DAYTIME_ENDING] # On or after 8:00AM and on or before 6:00PM
  validates_time :end_at, between: [DAYTIME_BEGINING, DAYTIME_ENDING] # On or after 8:00AM and on or before 6:00PM
  validates_datetime :end_at, after: :start_at

  validate :isnt_overlapping?

  #Scopes
  scope :overlapping, -> (opening) { where("start_at <= ? AND ? <= end_at", opening.end_at, opening.start_at) }

  def isnt_overlapping?
  	return false if Opening.overlapping(self).count > 0
  	true
  end

end
