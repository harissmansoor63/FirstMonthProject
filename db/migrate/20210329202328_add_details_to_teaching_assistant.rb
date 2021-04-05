class AddDetailsToTeachingAssistant < ActiveRecord::Migration[5.2]
  def change
    add_reference :teaching_assistants, :ta_duty, polymorphic: true
  end
end
