class AddSizeToTShirts < ActiveRecord::Migration[6.1]
  def change
    add_column :t_shirts, :size, :string
  end
end
