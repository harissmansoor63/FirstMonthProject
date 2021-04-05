class RemoveMorDetailsFromTeachingAssistant < ActiveRecord::Migration[5.2]
  def change
    remove_column :teaching_assistants, :ta_duty_type, :string
  end
end
