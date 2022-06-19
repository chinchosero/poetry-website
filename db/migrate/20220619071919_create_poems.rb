class CreatePoems < ActiveRecord::Migration[6.1]
  def change
    create_table :poems do |t|
      t.text :content
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
