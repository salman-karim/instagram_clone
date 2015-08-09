require 'rails_helper'

feature 'images' do
  context 'no pictures have been added' do
    scenario 'should display a prompt to upload an image' do
      visit '/images'
      expect(page).to have_content 'No images added yet'
      expect(page).to have_link 'Add an image'
    end
  end
end
