class AddQuipToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :quip, :text
  end
end
