class CreateJackets < ActiveRecord::Migration[6.1]
  def change
    create_table :jackets do |t|
      t.text :content

      t.timestamps
    end
  end
end
