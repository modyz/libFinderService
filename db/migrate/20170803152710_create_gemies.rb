class CreateGemies < ActiveRecord::Migration[5.1]
  def change
    create_table :gemies do |t|
      t.string :name
      t.timestamps
    end
  end
end
