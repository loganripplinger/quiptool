class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :text
      t.references :quip, foreign_key: true

      t.timestamps
    end
  end
end
