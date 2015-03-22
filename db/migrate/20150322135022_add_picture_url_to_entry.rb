class AddPictureUrlToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :picture_url, :string
  end
end
