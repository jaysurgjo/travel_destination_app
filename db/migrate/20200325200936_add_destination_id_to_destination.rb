class AddDestinationIdToDestination < ActiveRecord::Migration[5.2]
  def change
    add_column :destination
  end
end
