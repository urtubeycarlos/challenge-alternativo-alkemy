# == Schema Information
#
# Table name: continentes
#
#  id           :integer          not null, primary key
#  denominacion :string
#  imagen       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Continente < ApplicationRecord
    validates :denominacion, :imagen, presence: true
    has_many :paises

    scope :filtro_query_params, -> (parametros) { 
        query = ""
        parametros.each do |nombre_parametro, valor|
            query += "#{nombre_parametro} LIKE ? AND "
        end
        query = query[0...-5]
        where(query, parametros.values)
    }
    # Ex:- scope :active, -> {where(:active => true)}
end
