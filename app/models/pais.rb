# == Schema Information
#
# Table name: paises
#
#  id             :integer          not null, primary key
#  cantHabitantes :integer
#  denominacion   :string
#  imagen         :string
#  superficie     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  continente_id  :integer          not null
#
# Indexes
#
#  index_paises_on_continente_id  (continente_id)
#
# Foreign Keys
#
#  continente_id  (continente_id => continentes.id)
#
class Pais < ApplicationRecord
    has_many :ciudades
    belongs_to :continente
end
