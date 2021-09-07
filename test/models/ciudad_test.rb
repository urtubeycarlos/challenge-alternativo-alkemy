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
require "test_helper"

class CiudadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
