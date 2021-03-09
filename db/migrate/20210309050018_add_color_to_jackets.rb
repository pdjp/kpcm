class AddColorToJackets < ActiveRecord::Migration[6.1]
  def change
    add_column :jackets, :color, :string
  end
end
