class CreateNaturalDisasterCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :natural_disaster_categories do |t|
      t.string :title
      t.string :photo_url

      t.timestamps
    end
  end
end
