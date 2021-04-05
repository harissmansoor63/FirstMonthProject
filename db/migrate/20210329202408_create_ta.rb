class CreateTa < ActiveRecord::Migration[5.2]
  def change
    create_table :ta do |t|
      t.string :name
      t.integer :ta_duty_id
      t.string :ta_duty_type

      t.timestamps
    end
  end
end
