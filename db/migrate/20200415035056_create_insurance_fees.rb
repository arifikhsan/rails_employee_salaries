class CreateInsuranceFees < ActiveRecord::Migration[6.0]
  def change
    create_table :insurance_fees do |t|
      t.references :worker, null: false, foreign_key: true
      t.integer :installment

      t.timestamps
    end
  end
end
