ActiveAdmin.register_page "Dashboard" do

menu label: "Admin Dashboard"

content :title => proc{ I18n.t("active_admin.dashboard")} do
  columns do
    column do
      panel "Recent Posts" do
        table_for Post.order("id desc").limit(5) do
          column :id
          column "Post Title", :title do |post|
            link_to post.title, [:admin,post]
          end
          column :category
          column :created_at
        end
        strong (link_to "All Posts", [:admin_posts])
      end
    end

    column do
      panel "All Categories" do
        table_for Category.order("id desc").limit(5) do
          column :id
          column "Categories", :category do |c|
            link_to c.name, [:admin,c]
          end
        end
        strong (link_to "All Categories", [:admin_categories])
      end
    end
  end
end
end
