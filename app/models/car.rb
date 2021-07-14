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
  
    enum grade: {
        spacia_HYBRID_G: 0,
        spacia_HYBRID_X: 1,
        tanto_L: 2,
        tanto_X: 3,
        tanto_X_turbo: 4,
        n_box_G: 5,
        n_box_L: 6,
        n_box_EX: 7,
        n_box_L_turbo: 8,
        n_box_EX_turbo: 9
    },_prefix: true
    

end
