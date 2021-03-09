class CreateTShirts < ActiveRecord::Migration[6.1]
  def change
    create_table :t_shirts do |t|
      t.text :content

      t.timestamps
    end
  end
end
