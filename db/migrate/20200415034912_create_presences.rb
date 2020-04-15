class CreatePresences < ActiveRecord::Migration[6.0]
  def change
    create_table :presences do |t|
      t.references :worker, null: false, foreign_key: true
      t.date :date
      t.datetime :time_in
      t.datetime :time_out

      t.timestamps
    end
  end
end
