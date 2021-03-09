class AddSizeToShoes < ActiveRecord::Migration[6.1]
  def change
    add_column :shoes, :size, :string
  end
end
