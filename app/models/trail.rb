class Trail < ApplicationRecord
  has_many :trip_trails
  has_many :trips, through: :trip_trails

  def total_trips_distance
    trips.select()
  end

  def trip_count
    trips.count
  end
end
