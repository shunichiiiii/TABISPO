class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :text
      t.string :place, null: false
      t.timestamps
    end
  end
end
