# == Schema Information
#
# Table name: ciudades
#
#  id             :integer          not null, primary key
#  cantHabitantes :integer
#  denominacion   :string
#  imagen         :string
#  superficie     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  pais_id        :integer          not null
#
# Indexes
#
#  index_ciudades_on_pais_id  (pais_id)
#
# Foreign Keys
#
#  pais_id  (pais_id => paises.id)
#
class Ciudad < ApplicationRecord
    has_many :iconos_geograficos
    belongs_to :pais
end
