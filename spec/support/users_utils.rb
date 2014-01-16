def login
  user = User.create(email: 'a@a.com', password: '12345678', password_confirmation: '12345678')
  login_as(user)
end