require 'faker'

# Creates 10 users
10.times do
  User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email)
end

# Creates 10 articles
10.times do
    Article.create(user_id: User.all.sample.id,
      title: Faker::FamousLastWords.last_words,
      content: Faker::GameOfThrones.quote)
end

# Creates 5 categories
5.times do
  Category.create(name: Faker::OnePiece.island)
end

# Give each article a random category
Article.all.each do |article|
  article.category_id = Category.all.sample.id
  article.save
end

# Create 15 comments with associated articles and users
15.times do
  Comment.create(user_id: User.all.sample.id,
                article_id: Article.all.sample.id,
                content: Faker::OnePiece.quote
                )
end

# Create 15 likes with a user and an article
15.times do
  Like.create(user_id: User.all.sample.id,
              article_id: Article.all.sample.id,
              )
end
