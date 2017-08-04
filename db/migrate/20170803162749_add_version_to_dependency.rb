class AddVersionToDependency < ActiveRecord::Migration[5.1]
  def change
    add_reference :dependencies, :version, foreign_key: true
  end
end
