require "rails_helper"

RSpec.describe "Home Page", :type => :system do
  let(:member){create(:member, bio: "old bio")}
  before do
    driven_by(:selenium_chrome_headless)
  end

  it "works with javascript" do
    visit "/pages/home"
    expect(page).to have_text("Pages#home")
    expect(page).to_not have_text("I am here from js.")
    find('#js-click_me').click
    expect(page).to have_text("I am here from js.")
  end

  it "works with ajax" do
    member
    visit "/pages/home"
    expect(page).to_not have_text("old bio")
    expect(page).to_not have_text("new bio")
    find('#js-current_bio').click
    expect(page).to have_text("old bio")
    expect(page).to_not have_text("new bio")
    find('#js-update_bio').click
    find('#js-current_bio').click
    expect(page).to_not have_text("old bio")
    expect(page).to have_text("new bio")
  end
end
