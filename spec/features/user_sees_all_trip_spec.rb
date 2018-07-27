require 'rails_helper'

describe "A user visits '/trips'" do
  it 'they see all hiking trip names in the database' do
    trip_1 = Trip.create(name: 'Test 1', start_date: Date.new(2018, 6, 27), end_date: Date.new(2018, 6, 28))
    trip_2 = Trip.create(name: 'Test 2', start_date: Date.new(2018, 5, 27), end_date: Date.new(2018, 5, 28))

    visit trips_path

    expect(page).to have_content(trip_1.name)
    expect(page).to have_content(trip_2.name)
  end
end 
