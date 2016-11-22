class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name_main
      t.string :name_sub
      t.string :image_url
      t.string :birthday
      t.string :birthplace
      t.string :blood_type
      t.string :constellation
      t.string :height
      t.integer :favorite
      t.string :key
      t.string :status
      t.string :message_url

      t.timestamps null: false
    end
  end
end
