class CreateBonusAllowances < ActiveRecord::Migration[6.0]
  def change
    create_table :bonus_allowances do |t|
      t.integer :allowance

      t.timestamps
    end
  end
end
