class AddColorToTShirts < ActiveRecord::Migration[6.1]
  def change
    add_column :t_shirts, :color, :string
  end
end
