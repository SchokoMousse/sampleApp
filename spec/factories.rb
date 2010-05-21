# By using the symbol ':user', we get a Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                   "Example User"
  user.email                  "example@railstutorial.org"
  user.password               "foobar"
  user.password_confirmation  "foobar"
  user.admin                  false
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end