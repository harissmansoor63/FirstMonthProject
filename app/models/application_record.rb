class ApplicationRecord < ActiveRecord::Base
  # validates :title, presence: true
  self.abstract_class = true
end
