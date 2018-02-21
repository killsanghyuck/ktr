class City < ApplicationRecord
  belongs_to :user
  has_many :trip_schedule_details
end
