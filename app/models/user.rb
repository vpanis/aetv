class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_writer :login

  validates :username, presence: :true, uniqueness: { case_sensitive: false }

  def login
    @login || self.username || self.email
  end
end
