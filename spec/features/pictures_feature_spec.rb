require 'rails_helper'

feature 'pictures' do
  context 'no pictures have been added' do
    scenario 'should display a prompt upload a picture' do
      visit '/pictures'
      expect(page).to have_content 'No Pictures Uploaded'
      expect(page).to have_link 'Upload A Picture'
    end
  end
end
