class AddAttachmentPictureToQueens < ActiveRecord::Migration
  def self.up
    change_table :queens do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :queens, :picture
  end
end
