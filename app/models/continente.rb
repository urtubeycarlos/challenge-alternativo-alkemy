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
end
