# Create 10 users
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password"
  )
end

# Create 10 posts
10.times do
  Post.create(
    title: Faker::Lorem.sentence(word_count: 3),
    body: Faker::Lorem.paragraph(sentence_count: 3),
    user_id: rand(1..10)
  )
end

# Create 10 comments
10.times do
  Comment.create(
    body: Faker::Lorem.paragraph(sentence_count: 3),
    user_id: rand(1..10),
    post_id: rand(1..10)
  )
end