class CreatePokemons < ActiveRecord::Migration
  def self.up
    create_table :pokemons do |t|
      t.string :name
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pokemons
  end
end
