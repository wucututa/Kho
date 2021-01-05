# Create a main sample user.
User.create!(name: "Do Ngoc Minh",
email: "do@gmail.com",
password:"mjnh01",
password_confirmation: "mjnh01",
admin: true)
# Generate a bunch of additional users.
49.times do |n|
name = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
password = "password"
User.create!(name: name,
email: email,
password:password,
password_confirmation: password)
end
# Generate microposts for a subset of users.
users = User.order(:created_at).take(10)
50.times do
content = Faker::Lorem.sentence(word_count: 10)
users.each { |user| user.microposts.create!(content: content) }
end
# Create following relationships.
users = User.all
user = users.first
following = users[2..40]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
# Generate microposts for a subset of users.
users = User.order(:created_at).take(6)
50.times do
content = Faker::Lorem.sentence(word_count: 5)
users.each { |user| user.entries.create!(content: content) }
end
