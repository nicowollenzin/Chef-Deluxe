class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
