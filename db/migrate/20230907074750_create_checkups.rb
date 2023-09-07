class CreateCheckups < ActiveRecord::Migration[7.0]
  def change
    create_table :checkups do |t|
      t.datetime :app_date
      t.belongs_to :patient, null: false, foreign_key: true
      t.belongs_to :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
