class CreateCooperativePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :cooperative_payments do |t|
      t.references :worker, null: false, foreign_key: true
      t.integer :amount
      t.datetime :date_paid
      t.datetime :date_due
      t.string :recipient

      t.timestamps
    end
  end
end
