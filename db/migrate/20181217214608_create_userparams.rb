class CreateUserparams < ActiveRecord::Migration[5.2]
  def change
    create_table :userparams do |t|
      t.string :Login
      t.string :Password
      t.integer :score
      t.string :avatar

      t.timestamps
    end
  end
end
