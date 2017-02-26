require 'rails_helper'

feature 'pictures' do
  context 'no pictures have been added' do
    scenario 'should display a prompt upload a picture' do
      visit '/pictures'
      expect(page).to have_content 'No Pictures Uploaded Yet'
      expect(page).to have_link 'Upload A Picture'
    end
  end

  context 'restaurants have been added' do
  before do
    Restaurant.create(name: 'KFC')
  end

  scenario 'display restaurants' do
    visit '/restaurants'
    expect(page).to have_content('KFC')
    expect(page).not_to have_content('No restaurants yet')
  end
end
