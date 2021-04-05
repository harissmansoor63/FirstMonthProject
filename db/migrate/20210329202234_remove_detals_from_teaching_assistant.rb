class RemoveDetalsFromTeachingAssistant < ActiveRecord::Migration[5.2]
  def change
    remove_column :teaching_assistants, :ta_duty_id, :string
  end
end
