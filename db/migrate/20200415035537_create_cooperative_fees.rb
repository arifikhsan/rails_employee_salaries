class CreateCooperativeFees < ActiveRecord::Migration[6.0]
  def change
    create_table :cooperative_fees do |t|
      t.references :worker, null: false, foreign_key: true
      t.integer :installment
      t.integer :gross
      t.text :detail

      t.timestamps
    end
  end
end
