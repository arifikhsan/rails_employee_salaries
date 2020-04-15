class CreateStaffSalaryPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_salary_payments do |t|
      t.references :staff, null: false, foreign_key: { to_table: :workers }
      t.integer :amount
      t.datetime :date_paid

      t.timestamps
    end
  end
end
