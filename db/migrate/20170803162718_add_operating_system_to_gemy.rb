class AddOperatingSystemToGemy < ActiveRecord::Migration[5.1]
  def change
    add_reference :gemies, :operating_system, foreign_key: true
  end
end
