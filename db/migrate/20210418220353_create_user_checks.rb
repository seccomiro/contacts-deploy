class CreateUserChecks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_checks do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :checked, default: false

      t.timestamps
    end
  end
end
