class CreateLightings < ActiveRecord::Migration
  def change
    create_table :lightings do |t|
      t.integer :bulb_id
      t.integer :quantity
      t.integer :hoursday
      t.integer :comparison_id
    end
  end
end
