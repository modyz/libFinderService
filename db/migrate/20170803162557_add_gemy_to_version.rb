class AddGemyToVersion < ActiveRecord::Migration[5.1]
  def change
    add_reference :versions, :gemy, foreign_key: true
  end
end
