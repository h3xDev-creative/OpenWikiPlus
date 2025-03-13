class Setting < ApplicationRecord
  belongs_to :user

  validates :theme, inclusion: { in: %w[default dark light] } # Theme system
end
