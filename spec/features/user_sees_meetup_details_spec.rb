require 'spec_helper'

feature "User views meetup detail page" do
  let!(:data) do
    Meetup.create(
      name: "Boston Data Mining",
      location: "Cambridge, MA",
      date: Date.new(2016,2,3),
      description: "Riding on Large Data with scikit-learn"
    )
  end

  scenario "sees current meetup details" do
    visit '/meetups'
    click_link 'Boston Data Mining'

    expect(page).to have_content data.name
    expect(page).to have_content data.location
    expect(page).to have_content data.description
    expect(page).to have_content data.date

  end

end
