class Weighing < ApplicationRecord
  # weight is implicitly in pounds

  validates :weight, :weighed_at, presence: true
  validates :weight, numericality: { greater_than: 0 }
  validates :weight, numericality: { less_than: 10_000 }
end
