class TeachingAssistant < ApplicationRecord
    belongs_to :ta_duty, polymorphic: true
end
