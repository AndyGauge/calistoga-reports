class Store < ApplicationRecord
  has_many :reports
  def display
    "#{number} #{name}"
  end
end
