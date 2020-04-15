class CreateProjectWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :project_workers do |t|
      t.references :project, null: false, foreign_key: true
      t.references :supervisor, null: false, foreign_key: { to_table: :workers }
      t.references :worker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
