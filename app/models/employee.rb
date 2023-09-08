class Employee < ApplicationRecord
  has_many :employees ,  class_name: "Employee",foreign_key: "manager_id" 
  belongs_to :manager ,  class_name: "Employee",optional: true 
end
