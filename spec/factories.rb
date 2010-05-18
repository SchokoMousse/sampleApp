# By using the symbol ':user', we get a Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                   "Martin Kuehn"
  user.email                  "martin@kuehn.pro"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end