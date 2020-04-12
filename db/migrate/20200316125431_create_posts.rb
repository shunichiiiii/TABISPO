class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :text
      t.string :place, null: false
      t.references :users, foreign_key: true
      t.timestamps
    end
  end
end
