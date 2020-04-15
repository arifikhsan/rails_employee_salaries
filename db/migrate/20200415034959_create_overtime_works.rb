class CreateOvertimeWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :overtime_works do |t|
      t.references :worker, null: false, foreign_key: true
      t.date :date
      t.datetime :time_in
      t.datetime :time_out
      t.integer :index

      t.timestamps
    end
  end
end
