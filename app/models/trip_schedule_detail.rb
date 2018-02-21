class TripScheduleDetail < ApplicationRecord
  belongs_to :trip_schedule
  belongs_to :city

  has_many :voucher_buses
  has_many :voucher_cars
  has_many :voucher_planes
  has_many :voucher_trains
end
