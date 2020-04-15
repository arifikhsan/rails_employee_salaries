class CreateGroupSalaries < ActiveRecord::Migration[6.0]
  def change
    create_table :group_salaries do |t|
      t.references :group, null: false, foreign_key: true
      t.integer :salary

      t.timestamps
    end
  end
end
