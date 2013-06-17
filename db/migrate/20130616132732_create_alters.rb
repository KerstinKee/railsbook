class CreateAlters < ActiveRecord::Migration
  def change
    create_table :alters do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
