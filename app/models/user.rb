class User < ActiveRecord::Base
  # attr_accessible :title, :body
  authenticates_with_sorcery!
  
   attr_accessible :email, :password, :password_confirmation, :role, :name, :remember_me

  validates_confirmation_of :password

  validates_presence_of :name, :on => :create
  validates_presence_of :role, :on => :create
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  has_many :projects_users
  has_many :projects, through: :projects_users
  has_many :bugs
end
