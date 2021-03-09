class AddSizeToPants < ActiveRecord::Migration[6.1]
  def change
    add_column :pants, :size, :string
  end
end
