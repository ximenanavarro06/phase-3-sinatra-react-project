class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :description
      t.integer :like_count
      t.integer :user_id
      t.datetime :created_at
      
    end
  end
end
