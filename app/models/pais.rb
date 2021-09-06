class Pais < ApplicationRecord
    has_many :ciudades
    belongs_to :continente
end
