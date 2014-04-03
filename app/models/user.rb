class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   #Name must contain at least 1 letter (a-zA-Z) and may not contain
   #anything other than digits, letters, or underscores
   USER_REGEX = /\A[a-zA-Z0-9_]*[a-zA-Z][a-zA-Z0-9_]*\z/

   validates :name, presence: true

   has_many :donations
end
