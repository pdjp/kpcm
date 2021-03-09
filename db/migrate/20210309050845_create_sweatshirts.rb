class CreateSweatshirts < ActiveRecord::Migration[6.1]
  def change
    create_table :sweatshirts do |t|
      t.text :content

      t.timestamps
    end
  end
end
