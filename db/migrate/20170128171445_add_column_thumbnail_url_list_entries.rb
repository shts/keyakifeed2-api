class AddColumnThumbnailUrlListEntries < ActiveRecord::Migration
  def self.up
      add_column(:entries, :thumbnail_url_list, :string)
  end

  def self.down
      ramove_column(:entries, :thumbnail_url_list)
  end
end
