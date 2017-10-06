class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :user
      t.string :avatar
      t.string :content
      t.numeric :view

      t.timestamps
    end
  end
end
