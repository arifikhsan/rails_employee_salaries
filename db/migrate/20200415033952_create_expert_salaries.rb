class CreateExpertSalaries < ActiveRecord::Migration[6.0]
  def change
    create_table :expert_salaries do |t|
      t.references :expert, null: false, foreign_key: { to_table: :workers }
      t.integer :salary

      t.timestamps
    end
  end
end
