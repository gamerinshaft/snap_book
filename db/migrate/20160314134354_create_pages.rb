class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references :book, index: true, foreign_key: true
      t.string :url
      t.string :thumbnail
      t.string :title

      t.timestamps null: false
    end
  end
end
