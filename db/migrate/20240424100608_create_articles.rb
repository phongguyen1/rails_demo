class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    unless table_exists? :articles
      create_table :articles do |t|
        t.string :title
        t.text :description

        t.timestamps
      end
    end
  end
end