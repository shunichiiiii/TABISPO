class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :text
      t.string :image
      t.timestamps
    end
  end
end
