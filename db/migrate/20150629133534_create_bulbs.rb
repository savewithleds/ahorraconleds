class CreateBulbs < ActiveRecord::Migration
  def change
    create_table :bulbs do |t|
      t.string :kind
      t.float :kindkw
      t.string :ledequivalence
      t.float :ledequivalencekw
      t.float :ledprice

    end
  end
end
