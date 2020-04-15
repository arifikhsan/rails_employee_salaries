class CreateChildAllowances < ActiveRecord::Migration[6.0]
  def change
    create_table :child_allowances do |t|
      t.references :group, null: false, foreign_key: true
      t.integer :age_im
      t.integer :age_max
      t.integer :allowance

      t.timestamps
    end
  end
end
