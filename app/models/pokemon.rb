class Pokemon < ApplicationRecord
  belongs_to :type
  validates :pokemon, :type1, :hp, :attack, :defense, :speed, :special, :gif, :png, :description, presence: true
  validates :pokemon, uniqueness: true
  validates :number, :hp, :attack, :defense, :speed, :special, numericality: { only_integer: true }
end
