class CreateAirlines < ActiveRecord::Migration[7.0]
  def change
    create_table :airlines do |t|
      t.references :user
      t.string :name
      t.string :description
      t.string :img_src
      t.float :fee
      t.float :option_to_purchase
      t.float :total_amount_payable
      t.string :facebook
      t.string :twitter
      t.string :linkedin

      t.timestamps
    end
  end
end
