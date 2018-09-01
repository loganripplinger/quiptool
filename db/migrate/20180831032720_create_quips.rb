class CreateQuips < ActiveRecord::Migration[5.1]
  def change
    create_table :quips do |t|
      t.text :text
      t.string :author
      t.string :branch
      t.boolean :offensive

      t.timestamps
    end
  end
end
