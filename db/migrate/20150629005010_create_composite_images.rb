class CreateCompositeImages < ActiveRecord::Migration
  def change
  # for now, just has attached images and a unique name
    create_table :composite_images do |t|
      t.string :name, null: false
      t.attachment :base_image, null: false
      t.attachment :mask_image, null: false
      t.timestamps null: false
    end

    add_index :composite_images, :name, unique: :true
  end
end
