class CreateQuips < ActiveRecord::Migration[5.1]
  def change
    create_table :quips do |t|
      t.string :author

      t.timestamps
    end
  end
end
