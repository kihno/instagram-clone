class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.references :user
      t.boolean :active

      t.timestamps
    end
  end
end
