class CreatePassages < ActiveRecord::Migration
  def change
    create_table :passages do |t|
      t.string :title
      t.text :body
      t.text :test_body
      t.integer :user_id
      t.string :file_name

      t.timestamps
    end
  end
end
