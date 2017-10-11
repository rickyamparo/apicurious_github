require 'rails_helper'

feature "User can view basic github information" do

  before(:each) do
    @user = User.create(
      uid: "1",
      name: "Jan Rodricks",
      login: "Childhood's End",
      oauth_token: ""
    )
  end
  scenario "a user logs in and can view their basic github information" do

    visit "/"

    expect(page).to have_css('.user', count: 1)
    within('.user') do
      expect(page).to have_css('.name')
      expect(page).to have_css('.login')
      expect(page).to have_css('.profile_pic')
      expect(page).to have_css('.starred_repos')
      expect(page).to have_css('.followers')
      expect(page).to have_css('.following')
    end
  end
end
