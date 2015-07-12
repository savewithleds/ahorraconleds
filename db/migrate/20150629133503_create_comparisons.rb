class CreateComparisons < ActiveRecord::Migration
  def change
    create_table :comparisons do |t|
      t.string :email
      t.string :postalcode
      t.integer :telephone
      t.integer :refcode
      t.float :annualsave
      t.float :monthlysave
      t.float :percentsave
      t.float :annualcurrentcost
      t.float :installationcost
      t.integer :monthlyamortization

      t.timestamps null: false
    end
  end
end
