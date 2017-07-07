User.create!(email: 'admin@admin.com', password: 'password', password_confirmation: 'password', role: :admin)

10.times do |n|
  email = "example-user#{n+1}@example.org"
  password = "password"
  User.create!(
               email:                 email,
               password:              password,
               password_confirmation: password)
end

5.times do |n|
  email = "example-editor#{n+1}@example.org"
  password = "password"
  User.create!(
               email:                 email,
               password:              password,
               password_confirmation: password,
               role: :editor)
end