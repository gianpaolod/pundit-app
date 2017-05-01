module Features
  module SessionHelpers
    def singin(email, password)
      visit new_user_session_path
      fill_in 'Email', with: email
      fill_in 'password', with: password
      click_on 'log in'
    end
  end
end