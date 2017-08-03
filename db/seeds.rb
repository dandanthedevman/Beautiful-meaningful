# seeds:

# users
# 10.times do |i|
#   User.create({
#     user_name: Faker::TheFreshPrinceOfBelAir.character,
#     # check out Faker.safe_email with name as argument if time allows
#     email: Faker::Internet.safe_email,
#     password: '12345'
#   })
# end
# # questions
# 10.times do |i|
#   Question.create({
#     text: Faker::TheFreshPrinceOfBelAir.quote,
#     author_id: rand(1..5)
#   })
# end
# # answers
# 10.times do |i|
#   Answer.create({
#     text: Faker::Hipster.sentence,
#     author_id: rand(1..5),
#     question_id: rand(1..5)
#   })
# end

# # comments
# 15.times do |i|
#   Comment.create({
#     text: Faker::Hipster.paragraph,
#     commentable:  Question.first,
#     user_id: rand(2..6)
#   })
# end
