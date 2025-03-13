class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.string :theme, default: 'light'
      t.string :language, default: 'en'
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
