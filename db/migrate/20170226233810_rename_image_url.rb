class RenameImageUrl < ActiveRecord::Migration[5.0]
  def change
  	rename_column :products, :image_rul, :image_url
  end
end
