ActiveAdmin.register_page "Dashboard" do
content :title => proc{ I18n.t("active_admin.dashboard")} do
  columns do
    column do
      panel "Recent Posts" do
        table_for Post.order("id desc").limit(5) do
          column :id
          column :title do |post|
            link_to post.title
          end
        end
      end
    end
  end
end
end

# ActiveAdmin.register_page "Dashboard" do
#   content :title => proc{ I18n.t("active_admin.dashboard") } do
#     columns do
#       column do
#         panel "Recent Products" do
#           table_for Product.order("released_at desc").limit(5) do
#             column :name do |product|
#               link_to product.name, [:admin, product]
#             end
#             column :released_at
#           end
#           strong { link_to "View All Products", admin_products_path }
#         end
#       end
#     end
#   end
# end
