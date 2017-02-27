class Report < ApplicationRecord
  belongs_to :store

  validates :store, presence: true
  validates :date, presence: true
  validates :amount, presence: true, numericality: true
  validates :deposit, presence: true, numericality: true
end
