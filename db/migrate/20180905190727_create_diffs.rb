class CreateDiffs < ActiveRecord::Migration[5.1]
  def change
    create_table :diffs do |t|
      t.text :text
      t.string :author
      t.string :branch
      t.boolean :offensive
      t.references :quip, foreign_key: true

      t.timestamps
    end
  end
end
