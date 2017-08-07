class ChangeVersionNumberType < ActiveRecord::Migration[5.1]
  def change
  	change_column :versions, :version_number, :text
  end
end
