class CreateStaffChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_children do |t|
      t.references :worker, null: false, foreign_key: true
      t.string :name
      t.date :date_of_birth

      t.timestamps
    end
  end
end
