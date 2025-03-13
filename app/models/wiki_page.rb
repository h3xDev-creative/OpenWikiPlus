class WikiPage < ApplicationRecord
  belongs_to :wiki_topic

  validates :title, presence: true, uniqueness: { scope: :wiki_topic_id }
  validates :content, presence: true
end
