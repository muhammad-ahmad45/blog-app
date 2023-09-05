class AddEmailToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :email, :string
    add_column :articles, :string, :string
  end
end
