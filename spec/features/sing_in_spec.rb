require 'rails_helper'

feature 'Sing in', :devise do
  scenario 'user cannot sign in if not registered' do
    singin('person@example.com', 'password')
    expect(page).to have_content 'Invalid email or password.'
  end
  
  scenario 'user can sign in with valid credentials' do
    user = FactoryGirl.create(:user)
    singin(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
  end
  
  scenario 'User cannot sign in with invalid email' do
    user = FactoryGirl.create(:user)
    signin('invalid@email.com', user.password)
    expect(page).to have_content 'Ivalid email or password.'
  end
  
  scenario 'User cannot sign in with invalid password' do
    user = FactoryGirl.create(:user)
    singin(user.email, 'invalidpass')
    expect(page).to have_content 'Invalid email or password.'
  end
end