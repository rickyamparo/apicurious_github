require 'rails_helper'

feature "User can view basic github information" do

  before(:each) do
    stub_omniauth
  end

  scenario "a user logs in and can view their basic github information" do
    visit "/"
    click_on "Sign in with Github"
    expect(current_path).to eq("/")
    within(first('.user')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.login')
      expect(page).to have_css('.profile_pic')
      expect(page).to have_css('.starred_repos')
      expect(page).to have_css('.followers')
      expect(page).to have_css('.following')
    end
  end

end
