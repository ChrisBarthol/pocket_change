FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    password 'changeme12'
    password_confirmation 'changeme12'
    # required if the Devise Confirmable module is used
    # confirmed_at Time.now

    factor :admin do
    	admin true
    end
  end
end