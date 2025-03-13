# app/models/user.rb
class User < ApplicationRecord
  has_one :wiki
  has_many :settings
end

# app/models/wiki.rb
class Wiki < ApplicationRecord
  belongs_to :user
  has_many :wiki_topics, dependent: :destroy
end

# app/models/wiki_topic.rb
class WikiTopic < ApplicationRecord
  belongs_to :wiki
  has_many :wiki_pages, dependent: :destroy
end

# app/models/wiki_page.rb
class WikiPage < ApplicationRecord
  belongs_to :wiki_topic
end

# app/models/setting.rb
class Setting < ApplicationRecord
  belongs_to :user
end
