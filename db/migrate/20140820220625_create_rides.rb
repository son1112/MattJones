class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.boolean :roundtrip
      t.datetime :time_start
      t.datetime :time_end

      t.timestamps
    end
  end
end
