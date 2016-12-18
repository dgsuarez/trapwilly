class CreateTextImages < ActiveRecord::Migration[5.0]
  def change
    create_table :text_images do |t|
      t.string :image
      t.text :content

      t.timestamps
    end
  end
end
