class List < ApplicationRecord
  belongs_to :user
  has_many :tasks

  validates_presence_of :name, on: :create, message: "can't be blank"
end
