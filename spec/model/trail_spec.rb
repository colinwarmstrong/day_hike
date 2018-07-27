require 'rails_helper'

describe Trail, type: :model do
  describe 'Class Methods' do
    # it '#total_trips_distance' do
    #   trail = Trail.create(name: 'Trail 1', length: 6, address: '123 Main St')
    #   trip_1 = trail.trips.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
    #   trip_2 = trail.trips.create(name: 'Test 2', start_date: Date.new(2018, 5, 27), end_date: Date.new(2018, 5, 28))
    #
    #   expect(trail.total_trips_distance).to eq(12)
    # end
    it '#trip_count' do
      trail = Trail.create(name: 'Trail 1', length: 6, address: '123 Main St')
      trip_1 = trail.trips.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
      trip_2 = trail.trips.create(name: 'Test 2', start_date: Date.new(2018, 5, 27), end_date: Date.new(2018, 5, 28))

      expect(trail.trip_count).to eq(2)
    end
  end
end
