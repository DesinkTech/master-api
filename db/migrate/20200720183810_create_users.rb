class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.date :birth_date
      t.boolean :active
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
