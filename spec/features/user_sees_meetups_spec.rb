require 'spec_helper'

feature "User sees meetup list" do
  let!(:data1) do
    Meetup.create(
      name: "Boston Data Mining",
      location: "Cambridge, MA",
      date: DateTime.new(2016,2,3),
      description: "Riding on Large Data with scikit-learn"
    )
  end

  let!(:data2) do
    Meetup.create(
    name: "Deep Learning Meetup",
    location: "Cambridge, MA",
    date: DateTime.new(2016,3,3),
    description: "Deep Learning & Neural Networks"
    )
  end

  # As a user
  # I want to view a list of all available meetups
  # So that I can get together with people with similar interests

  scenario "sees meetup list ordered by name" do
    visit '/meetups'

    expect(page).to have_content "Boston Data Mining"
    expect(page).to have_content "Deep Learning Meetup"
  end

end
