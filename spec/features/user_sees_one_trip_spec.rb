require 'rails_helper'

describe "A user visits '/trips/:id'" do
  it 'they see a list of trails associated with that trip and the attributes of those trails' do
    trip = Trip.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
    trail_1 = trip.trails.create(name: 'Trail 1', length: 5, address: '123 Main St')
    trail_2 = trip.trails.create(name: 'Trail 2', length: 10, address: '321 Oak St')

    visit trip_path(trip)

    expect(page).to have_content(trail_1.name)
    expect(page).to have_content(trail_1.length)
    expect(page).to have_content(trail_1.address)
    expect(page).to have_content(trail_2.name)
    expect(page).to have_content(trail_2.length)
    expect(page).to have_content(trail_2.address)
  end
  it 'they see the total hiking distance of all trails on that trip' do
    trip = Trip.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
    trail_1 = trip.trails.create(name: 'Trail 1', length: 5, address: '123 Main St')
    trail_2 = trip.trails.create(name: 'Trail 2', length: 10, address: '321 Oak St')

    visit trip_path(trip)

    expect(page).to have_content('Total Hiking Distance: 15')
  end
  it 'they see the average hiking distance of all trails on that hiking trip' do
    trip = Trip.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
    trail_1 = trip.trails.create(name: 'Trail 1', length: 6, address: '123 Main St')
    trail_2 = trip.trails.create(name: 'Trail 2', length: 10, address: '321 Oak St')

    visit trip_path(trip)

    expect(page).to have_content('Average Hiking Distance: 8.0')
  end
end
