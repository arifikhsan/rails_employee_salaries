class CreateRoleAllowances < ActiveRecord::Migration[6.0]
  def change
    create_table :role_allowances do |t|
      t.references :role, null: false, foreign_key: true
      t.integer :allowance

      t.timestamps
    end
  end
end
