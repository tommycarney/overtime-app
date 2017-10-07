require 'rails_helper'

describe "navigate" do

  describe "index" do
    before do
      user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Thomas", last_name: "Carney")
      login_as(user, :scope => :user)
    end
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
      user = User.create(email: "test2@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Thomas2", last_name: "Carney2")
      login_as(user, scope: :user)
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

    it "will have a user associated with it" do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "User association"
      click_on "Save"
      expect(User.last.posts.last.rationale).to eq("User association")
    end
  end
end
