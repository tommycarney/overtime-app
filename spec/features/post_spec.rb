require 'rails_helper'

RSpec.describe "navigate" do
  describe "index" do
    it "can be reached successfuly" do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it "has a title of Post" do
      visit posts_path
      expect(page).to have_content(/Posts/)
    end
  end

  describe "creation" do
    before do
      visit new_post_path
    end
    it "has a form that can be reached" do
      expect(page.status_code).to eq(200)
    end
    it "can be created from new form page" do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "Client asked for it"
      click_on "Save"
      expect(page).to have_content("Client asked for it")
    end
  end
end
