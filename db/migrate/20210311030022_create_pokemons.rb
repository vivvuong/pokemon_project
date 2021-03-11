class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.integer :number
      t.string :pokemon
      t.string :type1
      t.string :type2
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :speed
      t.integer :special
      t.string :gif
      t.string :png
      t.text :description

      t.timestamps
    end
  end
end
