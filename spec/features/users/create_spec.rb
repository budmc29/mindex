require 'rails_helper'

RSpec.feature "create users", type: :feature do
  context 'with correct details' do
    it 'creates a user' do
      visit '/'

      click 'Create new account'

      fill_in first_name, with: 'John'
      fill_in last_name, with: 'Doe'
      fill_in email, with: 'john.doe@gmail.com'
      fill_in password, with: 'aoeuaoeu'
      fill_in password_confirm, with: 'aoeuaoeu'

      expect(page).to have_text("Acconut created successfully")
    end
  end
end
