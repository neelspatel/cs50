class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :post_id
      t.timestamps
    end

    add_index :comments, [:post_id, :user_id, :created_at]

  end

  def self.down
    drop_table :comments
  end
end
