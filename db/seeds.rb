# Create users
10.times do
  User.create do |user|
    user.email = Faker::Internet.unique.email
    user.password = Devise.friendly_token[0, 20]
    user.skip_confirmation!
  end
end

User.all.each do |user|
  user.posts.create!(content: Faker::Lorem.sentence(5))
end
