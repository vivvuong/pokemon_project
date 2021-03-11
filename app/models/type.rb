class Type < ApplicationRecord
    has_many :pokemon
    validates :name, presence: true, uniqueness: true
end
