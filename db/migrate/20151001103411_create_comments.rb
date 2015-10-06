class CreateComments < ActiveRecord::Migration
  def change
    create_table "comments", force: :cascade do |t|
      t.string   "user"
      t.text     "body"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
      t.integer  "target_id"
      t.string   "target_type"
    end
  end
end
