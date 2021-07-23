class Car < ApplicationRecord
    
    mount_uploader :image, ImageUploader
    
    validates :name, presence: true
    validates :money, presence: true
    validates :color, presence: true
    validates :grade, presence: true
    
    enum name: {
        spacia: 0,
        n_box: 1,
        tanto: 2
    },_prefix: true
    
    # enum money: {
    #     tantoL: 0,
    #     tantoLop: 1,
    #     spaciaG: 2,
    #     spaciaGop: 3,
    #     nboxG: 4,
    #     nboxGop: 5,
    #     nboxGoppuls: 6,
    #     tantoX: 7,
    #     tantoXop: 8,
    #     spaciaX: 9,
    #     spaciaXop: 10,
    #     tantoX2: 11,
    #     nboxL: 12,
    #     tantoX2plus: 13,
    #     spaciaX2: 14,
    #     nboxLop: 15,
    #     nboxLopplus: 16,
    #     tantoXturbo: 17,
    #     nboxEX: 18,
    #     tantoXturboop: 19,
    #     nboxEXop: 20,
    #     tantoXturbo2: 21,
    #     nboxEXopplus: 22,
    #     tantoXturbo2plus: 23,
    #     nboxLturbo: 24,
    #     nboxLturboop: 25,
    #     nboxEXturbo: 26,
    #     nboxLturboopplus: 27,
    #     nboxEXturboop: 28,
    #     nboxEXturboopplus: 29
    # },_prefix: true
    
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
    option_color: 10,
    twotone: 11,
    option_twotone: 12
  }, _prefix: true
  
    # enum grade: {
    #     spacia_HYBRID_G: 0,
    #     spacia_HYBRID_X: 1,
    #     tanto_L: 2,
    #     tanto_X: 3,
    #     tanto_X_turbo: 4,
    #     n_box_G: 5,
    #     n_box_L: 6,
    #     n_box_EX: 7,
    #     n_box_L_turbo: 8,
    #     n_box_EX_turbo: 9
    # },_prefix: true
    

end
