class Project < ActiveRecord::Base
  attr_accessible :user_id, :title
  
  validates_presence_of :title
	validates_presence_of :user_id
	
	validates_uniqueness_of :title

  has_many :projects_users
  has_many :projects, through: :projects_users
  has_many :bugs
end
