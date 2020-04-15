class CreateOperationalAllowances < ActiveRecord::Migration[6.0]
  def change
    create_table :operational_allowances do |t|
      t.references :group, null: false, foreign_key: true
      t.integer :food
      t.integer :transport

      t.timestamps
    end
  end
end
