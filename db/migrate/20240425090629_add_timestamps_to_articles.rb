class AddTimestampsToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :created_at, :datetime unless column_exists? :articles, :created_at
    add_column :articles, :updated_at, :datetime unless column_exists? :articles, :updated_at
  end
end
