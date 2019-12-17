require "rails_helper"

RSpec.describe "Home Page", :type => :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  it "enables me to create widgets" do
    visit "/pages/home"
    expect(page).to have_text("Pages#home")
    expect(page).to_not have_text("I am here from js.")
    find('#js-click_me').click
    expect(page).to have_text("I am here from js.")
  end
end
