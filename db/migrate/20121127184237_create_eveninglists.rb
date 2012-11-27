class CreateEveninglists < ActiveRecord::Migration
  def change
    create_table :eveninglists do |t|
      t.text :note
      t.boolean :status
      t.integer :day_id

      t.timestamps
    end
  end
end
