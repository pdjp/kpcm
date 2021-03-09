class AddColorToSweatshirts < ActiveRecord::Migration[6.1]
  def change
    add_column :sweatshirts, :color, :string
  end
end
