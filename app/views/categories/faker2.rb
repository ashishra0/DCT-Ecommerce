
4.times do
  article = Article.new
  article.category_id = Category.all.sample.id
  article.title = Faker::Book.title
  article.body = Faker::Lorem.paragraph
  article.publish_date = Faker::Date.between(2.days.ago, Date.today)
  article.save
end
