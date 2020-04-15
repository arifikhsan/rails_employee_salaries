class CreateProjectBonuses < ActiveRecord::Migration[6.0]
  def change
    create_table :project_bonuses do |t|
      t.references :project, null: false, foreign_key: true
      t.integer :amount
      t.datetime :paid_date

      t.timestamps
    end
  end
end
