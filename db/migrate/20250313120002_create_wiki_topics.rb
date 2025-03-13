class CreateWikiTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :wiki_topics do |t|
      t.string :title, null: false
      t.references :wiki, null: false, foreign_key: true
      t.timestamps
    end
  end
end
