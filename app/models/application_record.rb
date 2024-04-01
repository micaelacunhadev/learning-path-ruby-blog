class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  validates :title, presence: true
  validates :body, presence: true
end
