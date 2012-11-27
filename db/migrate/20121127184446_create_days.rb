class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :day_num

      t.timestamps
    end
  end
end
