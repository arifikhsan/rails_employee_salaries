class CreateOvertimeAllowances < ActiveRecord::Migration[6.0]
  def change
    create_table :overtime_allowances do |t|
      t.references :group, null: false, foreign_key: true
      t.integer :index
      t.integer :allowance

      t.timestamps
    end
  end
end
