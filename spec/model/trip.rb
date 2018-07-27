require 'rails_helper'

describe Trip, type: :model do
  describe 'Class Methods' do
    it '#total_distance' do
      trip = Trip.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
      trail_1 = trip.trails.create(name: 'Trail 1', length: 5, address: '123 Main St')
      trail_2 = trip.trails.create(name: 'Trail 2', length: 10, address: '321 Oak St')

      expect(trip.total_distance).to eq(15)
    end
  end
end
