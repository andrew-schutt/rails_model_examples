class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :models do |t|
      t.string :description, limit: 106
      t.string :email_address

      t.timestamps
    end
  end
end
