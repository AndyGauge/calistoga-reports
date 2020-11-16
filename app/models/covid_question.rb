class CovidQuestion < ApplicationRecord
  belongs_to :store

  validates :temperature, presence: true
  validates :name, presence: true
  validates :travel, presence: {:if => 'travel.nil?'}
  validates :contact, presence: {:if => 'contact.nil?'}
  validates :symptoms, presence: {:if => 'symptoms.nil?'}

  def warning
    return true if temperature.to_f >= 100.0 || travel || contact || symptoms
  end
end
