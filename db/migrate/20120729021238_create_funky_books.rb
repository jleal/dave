class CreateFunkyBooks < ActiveRecord::Migration
  def change
    create_table :funky_books do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
