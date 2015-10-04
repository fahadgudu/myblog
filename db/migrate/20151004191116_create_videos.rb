class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
