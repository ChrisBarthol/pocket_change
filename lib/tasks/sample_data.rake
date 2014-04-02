namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin1 = User.create!(name: "Chris Barthol",
                         email: "chris.barthol@gmail.com",
                         password: "foobar1234",
                         password_confirmation: "foobar1234",
                         admin: true)
    admin2 = User.create!(name: "Ian Williams",
                         email: "ianwilliams633@gmail.com",
                         password: "foobar1234",
                         password_confirmation: "foobar1234",
                         admin: true)
    admin3 = User.create!(name: "Jake Bowles",
                         email: "bowlesjacob@gmail.com",
                         password: "foobar1234",
                         password_confirmation: "foobar1234",
                         admin: true)
    admin4 = User.create!(name: "Joshua Tucker",
                         email: "joshtuckerapps@gmail.com",
                         password: "foobar1234",
                         password_confirmation: "foobar1234",
                         admin: true)
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar999999999",
                 password_confirmation: "foobar999999999")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password123"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end