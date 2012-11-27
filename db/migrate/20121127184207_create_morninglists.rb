class CreateMorninglists < ActiveRecord::Migration
  def change
    create_table :morninglists do |t|
      t.text :note
      t.boolean :status
      t.integer :day_id

      t.timestamps
    end
  end
end
