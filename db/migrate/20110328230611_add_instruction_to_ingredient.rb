class AddInstructionToIngredient < ActiveRecord::Migration
  def self.up
    add_column :ingredients, :instruction, :string
  end

  def self.down
    remove_column :ingredients, :instruction
  end
end
