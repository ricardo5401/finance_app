class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  def person
    Person.where(user_id: self.id, own: true).first
  end

  def short_name
    if self.person && self.person.short_name != ""
      self.person.short_name
    else
      self.email
    end
  end

  def short
    if self.person && self.person.short != ""
      self.person.short.upcase
    else
      self.email.split("").take(2).join.upcase
    end
  end
end
