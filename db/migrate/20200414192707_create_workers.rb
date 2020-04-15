class CreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end

