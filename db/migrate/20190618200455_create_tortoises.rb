class CreateTortoises < ActiveRecord::Migration[5.2]
  def change
    create_table :tortoises do |t|
      t.string :color
      t.string :type
      t.integer :age

      t.timestamps
    end
  end
end
