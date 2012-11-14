class User < ActiveRecord::Base
ROLE_TYPES = ["Client", "Manager", "Employee", "Admin"]
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :f_name, :l_name, :phone, :role_name

has_many :listings
has_many :comments

def client
  clients = User.count(:conditions => [:role_name == "Client"])
  end
def manager
  managers = User.count(:conditions => [:role_name == "Manager"])
  end
def employee 
  employees = User.count(:conditions => [:role_name == "Employee"])
  end
def hefe
  hefes = User.count(:conditions => [:role_name == "Admin"])
  end
def fullname
"#{f_name.humanize}" " " "#{l_name.humanize}"
end

end
