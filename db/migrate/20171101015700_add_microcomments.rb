class AddMicrocomments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.text :body
      t.references :micropost, foreign_key: true

      t.timestamps
    end
  end
end
