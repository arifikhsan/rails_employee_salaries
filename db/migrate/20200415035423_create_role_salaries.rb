class CreateRoleSalaries < ActiveRecord::Migration[6.0]
  def change
    create_table :role_salaries do |t|
      t.references :role, null: false, foreign_key: true
      t.integer :salary

      t.timestamps
    end
  end
end
