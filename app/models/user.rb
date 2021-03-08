class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :admin
  has_many :leaveevents
  has_many :leaves_to_approve, :class_name => "Leaveevents", :foreign_key => "admin_id"
  validates :email, :name,:password,:admin_id, :presence => true
 end
 