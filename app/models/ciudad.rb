class Ciudad < ApplicationRecord
    has_many :iconos_geograficos
    belongs_to :pais
end
