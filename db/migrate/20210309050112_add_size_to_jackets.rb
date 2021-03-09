class AddSizeToJackets < ActiveRecord::Migration[6.1]
  def change
    add_column :jackets, :size, :string
  end
end
