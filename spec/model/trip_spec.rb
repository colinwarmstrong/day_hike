require 'rails_helper'

describe Trip, type: :model do
  describe 'Class Methods' do
    it '#total_hiking_distance' do
      trip = Trip.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
      trail_1 = trip.trails.create(name: 'Trail 1', length: 5, address: '123 Main St')
      trail_2 = trip.trails.create(name: 'Trail 2', length: 10, address: '321 Oak St')

      expect(trip.total_hiking_distance).to eq(15)
    end
    it '#average_hiking_distance' do
      trip = Trip.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
      trail_1 = trip.trails.create(name: 'Trail 1', length: 4, address: '123 Main St')
      trail_2 = trip.trails.create(name: 'Trail 2', length: 10, address: '321 Oak St')

      expect(trip.average_hiking_distance).to eq(7)
    end
    it '#longest_hiking_distance' do
      trip = Trip.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
      trail_1 = trip.trails.create(name: 'Trail 1', length: 4, address: '123 Main St')
      trail_2 = trip.trails.create(name: 'Trail 2', length: 10, address: '321 Oak St')

      expect(trip.longest_hiking_distance).to eq(10)
    end
    it '#shortest_hiking_distance' do
      trip = Trip.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
      trail_1 = trip.trails.create(name: 'Trail 1', length: 4, address: '123 Main St')
      trail_2 = trip.trails.create(name: 'Trail 2', length: 10, address: '321 Oak St')

      expect(trip.shortest_hiking_distance).to eq(4)
    end
  end
end
