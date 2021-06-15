class RenameBookImageCulumnToLists < ActiveRecord::Migration[5.2]
  def change
    rename_column :lists, :book_image, :book_image_id
  end
end
