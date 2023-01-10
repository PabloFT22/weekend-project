class CreateWooblySnacks < ActiveRecord::Migration[7.0]
  def change
    create_table :woobly_snacks do |t|

      t.float :price
      t.belongs_to :woobly, null: false, foreign_key: true
      t.belongs_to :snack, null: false, foreign_key: true

      t.timestamps
    end
  end
end
