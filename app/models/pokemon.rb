class Pokemon < ApplicationRecord
  belongs_to :type1, :class_name => 'Type'
  belongs_to :type2, :class_name => 'Type'

  validates :pokemon, :type1, :hp, :attack, :defense, :speed, :special, :gif, :png, :description, presence: true
  validates :pokemon, uniqueness: true
  validates :number, :hp, :attack, :defense, :speed, :special, numericality: { only_integer: true }
end
