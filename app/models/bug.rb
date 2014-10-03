class Bug < ActiveRecord::Base
  attr_accessible :bug_type, :deadline, :description, :img, :project_id, :status, :tilte, :user_id, :resolver

  validates_presence_of :tilte
	validates_presence_of :status
	validates_presence_of :bug_type

	validates_uniqueness_of :tilte

  belongs_to :project
  belongs_to :user

  mount_uploader :img , ImageUploader
end
