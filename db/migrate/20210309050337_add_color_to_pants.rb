class AddColorToPants < ActiveRecord::Migration[6.1]
  def change
    add_column :pants, :color, :string
  end
end
