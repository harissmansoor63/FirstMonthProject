class Section < ApplicationRecord
    # has_many :teaching_assistants, as: :ta_duty
    has_many :tas, as: :ta_duties
end
