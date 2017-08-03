class CreateGemies < ActiveRecord::Migration[5.1]
  def change
    create_table :gemies do |t|

      t.timestamps
    end
  end
end
