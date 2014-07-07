class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :fights
  has_many :scores
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
