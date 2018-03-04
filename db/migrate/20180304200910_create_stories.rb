class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :story
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
