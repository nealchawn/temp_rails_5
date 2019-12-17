class Member < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :bio
      t.timestamps null: false
    end
  end
end
