class WikiTopic < ApplicationRecord
  belongs_to :wiki
  has_many :wiki_pages, dependent: :destroy

  validates :title, presence: true, uniqueness: { scope: :wiki_id }
end
