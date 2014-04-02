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
    Charity.create!(name:"1girl",
                     mission:"A non-profit empowering young women to become leaders",
                     address1:"Columbus Ohio",
                     website:"www.1girl.net",
                     email:"info@1girl.net",
                     password:"charitypw123",
                     password_confirmation:"charitypw123")
    Charity.create!(name:"Capital Area Humane",
                     mission:"We stand for maximizing the quality of life of a pet and enhancing the lives of pet owners. Our board, staff and volunteers are passionate about our mission and about the animals in our care.",
                     address1:"Columbus Ohio",
                     website:"www.cahs-pets.org/",
                     email:"questions@cahs-pets.org",
                     password:"charitypw123",
                     password_confirmation:"charitypw123")
    Charity.create!(name:"Mid Ohio Foodbank",
                     mission:"To end hunger one nourishing meal at a time and co-create a sustainable community where everyone thrives.",
                     address1:"Columbus Ohio",
                     website:"www.midohiofoodbank.org/",
                     email:"info@midohiofoodbank.org",
                     password:"charitypw123",
                     password_confirmation:"charitypw123")
    Charity.create!(name:"Godman Guild Association",
                     mission:"The mission of Godman Guild is to promote strong families and strong communities in Columbus, Ohio, primarily in the Near Northside.",
                     address1:"Columbus Ohio",
                     website:"www.godmanguild.org/",
                     email:"info@godmanguild.org",
                     password:"charitypw123",
                     password_confirmation:"charitypw123")
    Charity.create!(name:"American Red Cross",
                     mission:"The American Red Cross exists to provide compassionate care to those in need. Our network of generous donors, volunteers and employees share a mission of preventing and relieving suffering, here at home and around the world",
                     address1:"AMERICA",
                     website:"www.redcross.org/",
                     email:"info@redcross.org",
                     password:"charitypw123",
                     password_confirmation:"charitypw123")
    Charity.create!(name:"Canine Companions For Independence",
                     mission:"Canine Companions is the largest non-profit provider of assistance dogs, and is recognized worldwide for the excellence of its dogs, and the quality and longevity of the matches it makes between dogs and people.",
                     address1:"Columbus Ohio",
                     website:"www.cci.org/",
                     email:"info@cci.org",
                     password:"charitypw123",
                     password_confirmation:"charitypw123")
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