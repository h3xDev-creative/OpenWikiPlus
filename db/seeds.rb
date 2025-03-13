# db/seeds.rb

# Clear existing data to avoid duplication during multiple seeding runs
User.delete_all
Wiki.delete_all
WikiTopic.delete_all
WikiPage.delete_all
Setting.delete_all

# Create a default user
user = User.create!(
  username: 'admin',
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
)
puts "User created: #{user.username}"

# Create a default wiki for the user
wiki = Wiki.create!(
  title: 'OpenWikiPlus',
  description: 'The knowledge hub for all things OpenWikiPlus!',
  user: user
)
puts "Wiki created: #{wiki.title}"

# Create some topics for the wiki
topic1 = WikiTopic.create!(
  title: 'Getting Started',
  wiki: wiki
)
topic2 = WikiTopic.create!(
  title: 'Advanced Features',
  wiki: wiki
)
puts "Topics created: #{topic1.title}, #{topic2.title}"

# Create some wiki pages for the topics
WikiPage.create!(
  title: 'Introduction to OpenWikiPlus',
  content: 'This is the intro page for OpenWikiPlus.',
  wiki_topic: topic1
)
WikiPage.create!(
  title: 'Installation Guide',
  content: 'Follow these steps to install OpenWikiPlus.',
  wiki_topic: topic1
)
WikiPage.create!(
  title: 'Customization Tips',
  content: 'Learn how to customize OpenWikiPlus for your needs.',
  wiki_topic: topic2
)
puts "Wiki pages created."

# Create default settings for the user
Setting.create!(
  user: user,
  theme: 'light',
  language: 'en'
)
puts "Default settings created."

# Sample output message
puts "Database seeding complete! 🎉"
