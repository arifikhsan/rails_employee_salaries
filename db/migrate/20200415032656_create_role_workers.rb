class CreateRoleWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :role_workers do |t|
      t.references :worker, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
