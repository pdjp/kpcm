class CreatePants < ActiveRecord::Migration[6.1]
  def change
    create_table :pants do |t|
      t.text :content

      t.timestamps
    end
  end
end
