# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Nam Cao'
    fill_in 'Price', with: 23.0
    fill_in 'Published date', with: '2025-09-15 15:44:38'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('Nam Cao')
    expect(page).to have_content(23.0)
    expect(page).to have_content('2025-09-15 15:44:38 UTC')
  end
end