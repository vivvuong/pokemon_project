class Type < ApplicationRecord
    has_many :type1_pokemon, :class_name => 'Pokemon', :foreign_key => 'type1'
    has_many :type2_pokemon, :class_name => 'Pokemon', :foreign_key => 'type2'

    validates :name, presence: true
end
