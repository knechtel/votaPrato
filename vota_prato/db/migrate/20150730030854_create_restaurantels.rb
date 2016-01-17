class CreateRestaurantels < ActiveRecord::Migration
  def change
    create_table :restaurantels do |t|

      t.timestamps
    end
  end
end
