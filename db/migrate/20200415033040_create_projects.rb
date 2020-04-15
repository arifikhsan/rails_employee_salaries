class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :address
      t.text :detail
      t.datetime :date_start
      t.datetime :date_end
      t.decimal :latitiude, precision: 32, scale: 16
      t.decimal :longitude, precision: 32, scale: 16

      t.timestamps
    end
  end
end
