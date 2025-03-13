class CreateWikiPages < ActiveRecord::Migration[6.0]
  def change
    create_table :wiki_pages do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.references :wiki_topic, null: false, foreign_key: true
      t.timestamps
    end
  end
end
