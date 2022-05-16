class AddCodeToSpreeCmsPages < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_cms_pages, :code, :string
  end
end
