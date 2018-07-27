require 'rails_helper'

describe "User visits '/trails/:id'" do
  it 'they see a count of trips with this hiking trail' do
    trail = Trail.create(name: 'Trail 1', length: 6, address: '123 Main St')
    trip_1 = trail.trips.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
    trip_2 = trail.trips.create(name: 'Test 2', start_date: Date.new(2018, 5, 27), end_date: Date.new(2018, 5, 28))

    visit trail_path(trail)

    expect(page).to have_content(trail.name)
    expect(page).to have_content(trail.address)
    expect(page).to have_content("Trip Count: 2")    
  end
end
