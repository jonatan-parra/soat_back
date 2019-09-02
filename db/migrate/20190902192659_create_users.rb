class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :document_type
      t.string :document_number
      t.string :phone
      t.string :auth_token
      t.string :rol

      t.timestamps
    end
  end
end
