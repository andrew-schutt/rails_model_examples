class CreateNewModels < ActiveRecord::Migration[5.1]
  def change
    create_table :new_models do |t|
      t.string :description
      t.string :email_address

      t.timestamps
    end
  end
end
