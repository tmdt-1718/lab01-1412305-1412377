class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.references :user, foreign_key: true
      t.string :url
      t.integer :view

      t.timestamps
    end
  end
end
