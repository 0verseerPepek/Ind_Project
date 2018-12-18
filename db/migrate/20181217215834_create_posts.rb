class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :score
      t.string :avatar

      t.timestamps
    end
  end
end
