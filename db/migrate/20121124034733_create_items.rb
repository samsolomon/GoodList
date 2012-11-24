class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :note
      t.boolean :status

      t.timestamps
    end
  end
end
