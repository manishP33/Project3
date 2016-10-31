class CreateDisasters < ActiveRecord::Migration[5.0]
  def change
    create_table :disasters do |t|
      t.string :title
      t.string :photo_url
      t.text :description
      t.text :preparation

      t.timestamps
    end
  end
end
