class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.belongs_to :chat, null: false, foreign_key: true
      t.text :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
