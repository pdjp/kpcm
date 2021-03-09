class AddSizeToSweatshirts < ActiveRecord::Migration[6.1]
  def change
    add_column :sweatshirts, :size, :string
  end
end
