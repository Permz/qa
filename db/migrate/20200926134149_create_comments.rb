class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :qustion, null: false, foreign_key: false

      t.timestamps
    end
  end
end
