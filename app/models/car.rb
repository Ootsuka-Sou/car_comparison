class Car < ApplicationRecord
    validates :name, presence: true
    validates :money, presence: true
    validates :color, presence: true
    validates :grade, presence: true
    
    enum name: {
        spacia: 0,
        n_box: 1,
        tanto: 2
    },_prefix: true
    
    enum color: {
    white: 0,
    black: 1,
    shilver: 2,
    red: 3,
    blue: 4,
    green: 5,
    ivory: 6,
    pink: 7,
    brown: 8,
    skyblue: 9,
    opwhite: 10,
    twotone: 11,
    optwotone: 12
  }, _prefix: true
    
end
