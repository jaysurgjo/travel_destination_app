class CreateDestination < ActiveRecord::Migration[5.2]
  def change
    create_table :destination do |t|
      t.string :name
  end
end
