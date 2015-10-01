class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :fname
      t.string :lname
      t.string :password

      t.timestamps null: false
    end
  end
end
