class Ta < ApplicationRecord
    belongs_to :ta_duties, polymorphic: true
end
