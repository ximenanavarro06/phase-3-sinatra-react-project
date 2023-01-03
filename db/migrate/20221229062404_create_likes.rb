class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :blog_id
      t.integer :user_id
    end
  end
end
