class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  # ensure passwords are at least 10 characters long, contains a number,  a lowercase and uppercase letter, as well as a special character
  validates :password, :presence => true,
                     :on => :create,
                     :format => {:with => /\A.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\@\#\$\%\^\&\+\=]).*\Z/ }



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
