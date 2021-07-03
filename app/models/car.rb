class Car < ApplicationRecord
    validates :name, presence: true
    validates :money, presence: true
    validates :color, presence: true
end
