class Wiki < ApplicationRecord
  belongs_to :user
  has_many :wiki_topics, dependent: :destroy

  validates :title, presence: true, uniqueness: { scope: :user_id }
end
