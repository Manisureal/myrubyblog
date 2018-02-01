#Create 5x new Categories
categories = ["News","Gaming","Entertainemnt","Blog","Vlog","Movies"]

categories.each do |c|
  category = Category.new(name: c)
  category.save!
end

#Create 5x new Posts
n = 0
until n == 5
  n += 1
  new_post = Post.create!(title: "Blog # #{n}", body: "This is my blog##{n} on this site..", category_id: n )
end
