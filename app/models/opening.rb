class Opening < ActiveRecord::Base
  # Association
  belongs_to :calendar

  #Validations
  validates :start_at, presence: true
  validates :end_at, presence: true
 
end
