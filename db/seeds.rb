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
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

#Create a new Admin User
admin_user = AdminUser.create!(email: "manisureal@outlook.com", password: "ahmedk90", password_confirmation: "ahmedk90")
