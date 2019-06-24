class RemoveTypeFromTortoises < ActiveRecord::Migration[5.2]
  def change
    remove_column :tortoises, :type, :string
  end
end
