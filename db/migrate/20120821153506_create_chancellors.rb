class CreateChancellors < ActiveRecord::Migration
  def change
    create_table :chancellors do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.date :day_of_death
      t.date :inauguration

      t.timestamps
    end
  end
end
