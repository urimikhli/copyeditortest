class CreateCopyeditorTests < ActiveRecord::Migration
  def change
    create_table :copyeditor_tests do |t|
      t.string :firstname
      t.string :lastname
      t.integer :user_id
      t.string :email
      t.integer :passage_id
      t.string :attempt

      t.timestamps
    end
  end
end
