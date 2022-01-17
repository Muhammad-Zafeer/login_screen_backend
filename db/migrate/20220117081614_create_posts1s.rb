class CreatePosts1s < ActiveRecord::Migration[6.1]
  def change
    create_table :posts1s do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
